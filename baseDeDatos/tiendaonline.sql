-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-01-2017 a las 19:35:06
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaonline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contrasena` varchar(12) NOT NULL,
  `telefono` int(12) NOT NULL,
  `calle` varchar(255) NOT NULL,
  `codigopostal` int(5) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `ciudad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `email`, `usuario`, `contrasena`, `telefono`, `calle`, `codigopostal`, `pais`, `estado`, `ciudad`) VALUES
(1, 'Jesus', 'Muro', 'ponchom3@gmail.com', '1', '1', 123456, 'tercera', 123, 'Mexico', 'Jalisco', 'Zapopan'),
(2, 'Auria', 'Gallegos', 'aury@gmail.com', '2', '2', 1234567892, 'calle', 1234, 'mexico', 'jalisco', 'zapopan'),
(6, 'Osvaldo', 'Esquivias', '', '3', '3', 0, '', 0, '', '', ''),
(7, ' nan', ' na', ' na', ' na', ' na', 0, ' ', 0, ' ', ' ', ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesproductos`
--

CREATE TABLE `imagenesproductos` (
  `id` int(100) NOT NULL,
  `idproducto` int(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `imagenesproductos`
--

INSERT INTO `imagenesproductos` (`id`, `idproducto`, `imagen`, `titulo`, `descripcion`) VALUES
(1, 1, 'aretes.jpg', 'Titulo de la primer imagen', 'Descripcion 1'),
(2, 2, 'catrinaBarro.jpg', 'Titulo de la catrina de barro', 'descripción de la catrina\r\n'),
(3, 3, 'collar.jpg', 'Titulo del collar', 'Descripción del collar'),
(4, 3, 'collar2.jpg', 'Collar', 'Como se si se extiende el collar'),
(14, 11, '1.jpg', 'calaberita', ''),
(15, 12, '2.jpg', '', ''),
(16, 13, '3.jpg', '', ''),
(17, 14, '4.jpg', '', ''),
(18, 15, '5.jpg', '', ''),
(19, 16, '6.jpg', '', ''),
(20, 7, '17.jpg', '', ''),
(21, 8, '18.jpg', '', ''),
(22, 9, '19.jpg', '', ''),
(23, 0, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaspedido`
--

CREATE TABLE `lineaspedido` (
  `id` int(11) NOT NULL,
  `idpedido` int(100) DEFAULT NULL,
  `idproducto` int(100) DEFAULT NULL,
  `unidades` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lineaspedido`
--

INSERT INTO `lineaspedido` (`id`, `idpedido`, `idproducto`, `unidades`) VALUES
(17, 13, 1, 1),
(18, 13, 2, 1),
(19, 13, 3, 1),
(20, 14, 1, 1),
(21, 15, 3, 1),
(22, 15, 3, 1),
(23, 15, 3, 1),
(24, 15, 3, 1),
(25, 15, 3, 1),
(26, 16, 3, 1),
(27, 16, 3, 1),
(28, 16, 1, 1),
(29, 17, 2, 1),
(30, 18, 1, 1),
(31, 19, 1, 1),
(32, 19, 1, 1),
(33, 19, 1, 1),
(34, 19, 3, 1),
(35, 21, 5, 1),
(36, 21, 4, 1),
(37, 21, 5, 1),
(38, 21, 4, 1),
(39, 21, 5, 1),
(40, 21, 5, 1),
(41, 21, 5, 1),
(42, 21, 5, 1),
(43, 21, 1, 1),
(44, 19, 5, 1),
(45, 19, 5, 1),
(46, 19, 1, 1),
(47, 0, 5, 1),
(48, 0, 5, 1),
(49, 0, 5, 1),
(50, 19, 5, 1),
(51, 0, 4, 1),
(52, 19, 4, 1),
(53, 28, 2, 3),
(54, 19, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(100) NOT NULL,
  `idcliente` int(100) DEFAULT NULL,
  `fecha` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `estado` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `idcliente`, `fecha`, `estado`) VALUES
(13, 1, '1480278170', '0'),
(14, 2, '1480278300', '0'),
(15, 2, '1480278344', '0'),
(16, 2, '1480278359', '0'),
(17, 1, '1480278376', '0'),
(18, 1, '1480281929', '0'),
(19, 1, '1480464222', '0'),
(20, 1, ' 1480651077 ', '0'),
(21, 6, ' 1480651137 ', '0'),
(22, 1, ' 1480659735 ', '0'),
(23, 1, ' 1480660996 ', '0'),
(24, 1, ' 1480661271 ', '0'),
(25, 1, ' 1480664742 ', '0'),
(26, 2, ' 1480664924 ', '0'),
(27, 6, ' 1480664985 ', '0'),
(28, 6, ' 1480665108 ', '0'),
(29, 1, ' 1480722057 ', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(100) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` decimal(30,0) NOT NULL,
  `existencias` int(255) NOT NULL,
  `activado` tinyint(1) NOT NULL,
  `peso` int(255) NOT NULL,
  `ancho` int(255) NOT NULL,
  `alto` int(255) NOT NULL,
  `largo` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `existencias`, `activado`, `peso`, `ancho`, `alto`, `largo`) VALUES
(1, 'Aretes Azules', 'Bonitos aretes azules circulares de dos piezas con detallados en color celeste.', '180', 0, 1, 10, 8, 12, 0),
(2, 'Catrina de Barro', 'Jarrones de barro diseñados para decoración del hogar, pintados a mano y detallados con varios colores.', '200', 2, 1, 2000, 15, 28, 0),
(3, 'Collar', 'Collar artesanal con piedras de la region, hilo de colores prehispánicos y detallado huichol.', '30', 11, 1, 12, 22, 8, 0),
(11, 'Calabera de Fantasia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris.', '61', 6, 1, 12, 12, 12, 12),
(12, 'Zapatos Artesanales', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '150', 8, 1, 32, 23, 2, 2),
(13, 'Piñana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '60', 12, 1, 12, 12, 12, 12),
(14, 'Muñecos de Trapo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '600', 12, 1, 132, 1, 3, 1),
(15, 'Calaberita Pintada', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '30', 8, 1, 321, 32, 321, 31),
(16, 'Manta Regional', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '60', 40, 1, 21, 321, 321, 321),
(17, 'Monitas de Telfa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '50', 30, 1, 21, 31, 1, 3),
(18, 'Cubre Lampara', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '40', 12, 1, 321, 321, 321, 321),
(19, 'Jarrón Negro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '300', 40, 1, 321, 321, 321, 31),
(20, 'Adorno LOVE', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '500', 98, 1, 321, 321, 321, 32),
(21, 'Plantas de Papel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '70', 56, 1, 321, 321, 321, 321),
(22, 'Varios Jarrones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '50', 100, 1, 321, 321, 321, 321),
(23, 'Botella de Leche', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '36', 13, 1, 321, 321, 321, 321),
(24, 'Pavo Real', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tincidunt eros, eu bibendum mauris', '600', 50, 1, 321, 321, 321, 321);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `utf` int(100) NOT NULL,
  `anio` int(4) NOT NULL,
  `mes` int(2) NOT NULL,
  `dia` int(2) NOT NULL,
  `hora` int(2) NOT NULL,
  `minuto` int(2) NOT NULL,
  `segundo` int(2) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `navegador` varchar(255) NOT NULL,
  `pagina` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`utf`, `anio`, `mes`, `dia`, `hora`, `minuto`, `segundo`, `ip`, `navegador`, `pagina`) VALUES
(0, 0, 0, 0, 0, 0, 0, ' ', ' ', ' '),
(1480643370, 2016, 12, 2, 2, 49, 30, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480648008, 2016, 12, 2, 4, 6, 48, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480648024, 2016, 12, 2, 4, 7, 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648035, 2016, 12, 2, 4, 7, 15, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648067, 2016, 12, 2, 4, 7, 47, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648068, 2016, 12, 2, 4, 7, 48, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648098, 2016, 12, 2, 4, 8, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648113, 2016, 12, 2, 4, 8, 33, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648218, 2016, 12, 2, 4, 10, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480648262, 2016, 12, 2, 4, 11, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648272, 2016, 12, 2, 4, 11, 12, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648288, 2016, 12, 2, 4, 11, 28, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648395, 2016, 12, 2, 4, 13, 15, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648404, 2016, 12, 2, 4, 13, 24, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648444, 2016, 12, 2, 4, 14, 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648555, 2016, 12, 2, 4, 15, 55, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480648557, 2016, 12, 2, 4, 15, 57, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480648562, 2016, 12, 2, 4, 16, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480648571, 2016, 12, 2, 4, 16, 11, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480649003, 2016, 12, 2, 4, 23, 23, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480649011, 2016, 12, 2, 4, 23, 31, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480649317, 2016, 12, 2, 4, 28, 37, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480649327, 2016, 12, 2, 4, 28, 47, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480649330, 2016, 12, 2, 4, 28, 50, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480649337, 2016, 12, 2, 4, 28, 57, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480649361, 2016, 12, 2, 4, 29, 21, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480649368, 2016, 12, 2, 4, 29, 28, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480649375, 2016, 12, 2, 4, 29, 35, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480651018, 2016, 12, 2, 4, 56, 58, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480651058, 2016, 12, 2, 4, 57, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480651066, 2016, 12, 2, 4, 57, 46, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480651081, 2016, 12, 2, 4, 58, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480651110, 2016, 12, 2, 4, 58, 30, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480651121, 2016, 12, 2, 4, 58, 41, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/producto.php?id=1'),
(1480651129, 2016, 12, 2, 4, 58, 49, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480651133, 2016, 12, 2, 4, 58, 53, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480651142, 2016, 12, 2, 4, 59, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480652318, 2016, 12, 2, 5, 18, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480652323, 2016, 12, 2, 5, 18, 43, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480652338, 2016, 12, 2, 5, 18, 58, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480653134, 2016, 12, 2, 5, 32, 14, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480653141, 2016, 12, 2, 5, 32, 21, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480653248, 2016, 12, 2, 5, 34, 8, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480653251, 2016, 12, 2, 5, 34, 11, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480653489, 2016, 12, 2, 5, 38, 9, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480653491, 2016, 12, 2, 5, 38, 11, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480653549, 2016, 12, 2, 5, 39, 9, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480653551, 2016, 12, 2, 5, 39, 11, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480653561, 2016, 12, 2, 5, 39, 21, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480653579, 2016, 12, 2, 5, 39, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480653762, 2016, 12, 2, 5, 42, 42, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480653770, 2016, 12, 2, 5, 42, 50, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480653793, 2016, 12, 2, 5, 43, 13, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480654192, 2016, 12, 2, 5, 49, 52, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480654194, 2016, 12, 2, 5, 49, 54, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480654201, 2016, 12, 2, 5, 50, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480654215, 2016, 12, 2, 5, 50, 15, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480658401, 2016, 12, 2, 7, 0, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480658403, 2016, 12, 2, 7, 0, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480658408, 2016, 12, 2, 7, 0, 8, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480658419, 2016, 12, 2, 7, 0, 19, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480658432, 2016, 12, 2, 7, 0, 32, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480658449, 2016, 12, 2, 7, 0, 49, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480658486, 2016, 12, 2, 7, 1, 26, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480658580, 2016, 12, 2, 7, 3, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480658591, 2016, 12, 2, 7, 3, 11, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480659180, 2016, 12, 2, 7, 13, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480659184, 2016, 12, 2, 7, 13, 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480659196, 2016, 12, 2, 7, 13, 16, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480659223, 2016, 12, 2, 7, 13, 43, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480659232, 2016, 12, 2, 7, 13, 52, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480659726, 2016, 12, 2, 7, 22, 6, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480659738, 2016, 12, 2, 7, 22, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480659746, 2016, 12, 2, 7, 22, 26, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480659757, 2016, 12, 2, 7, 22, 37, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480660161, 2016, 12, 2, 7, 29, 21, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480660164, 2016, 12, 2, 7, 29, 24, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480660178, 2016, 12, 2, 7, 29, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480660197, 2016, 12, 2, 7, 29, 57, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480660559, 2016, 12, 2, 7, 35, 59, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480660561, 2016, 12, 2, 7, 36, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480660567, 2016, 12, 2, 7, 36, 7, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480660582, 2016, 12, 2, 7, 36, 22, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480660591, 2016, 12, 2, 7, 36, 31, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480660888, 2016, 12, 2, 7, 41, 28, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480660896, 2016, 12, 2, 7, 41, 36, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480660909, 2016, 12, 2, 7, 41, 49, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480660967, 2016, 12, 2, 7, 42, 47, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480660973, 2016, 12, 2, 7, 42, 53, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480660982, 2016, 12, 2, 7, 43, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480661012, 2016, 12, 2, 7, 43, 32, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480661027, 2016, 12, 2, 7, 43, 47, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480661111, 2016, 12, 2, 7, 45, 11, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480661113, 2016, 12, 2, 7, 45, 13, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480661258, 2016, 12, 2, 7, 47, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480661265, 2016, 12, 2, 7, 47, 45, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480661274, 2016, 12, 2, 7, 47, 54, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480661299, 2016, 12, 2, 7, 48, 19, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480661308, 2016, 12, 2, 7, 48, 28, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480661312, 2016, 12, 2, 7, 48, 32, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480661570, 2016, 12, 2, 7, 52, 50, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480661574, 2016, 12, 2, 7, 52, 54, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480661586, 2016, 12, 2, 7, 53, 6, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480662042, 2016, 12, 2, 8, 0, 42, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480662171, 2016, 12, 2, 8, 2, 51, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480662340, 2016, 12, 2, 8, 5, 40, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480662433, 2016, 12, 2, 8, 7, 13, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480662436, 2016, 12, 2, 8, 7, 16, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480662483, 2016, 12, 2, 8, 8, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480662746, 2016, 12, 2, 8, 12, 26, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480662792, 2016, 12, 2, 8, 13, 12, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480662854, 2016, 12, 2, 8, 14, 14, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480662856, 2016, 12, 2, 8, 14, 16, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480662885, 2016, 12, 2, 8, 14, 45, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480662891, 2016, 12, 2, 8, 14, 51, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480662986, 2016, 12, 2, 8, 16, 26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/'),
(1480663005, 2016, 12, 2, 8, 16, 45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480663153, 2016, 12, 2, 8, 19, 13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480663154, 2016, 12, 2, 8, 19, 14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480663233, 2016, 12, 2, 8, 20, 33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480663235, 2016, 12, 2, 8, 20, 35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480663265, 2016, 12, 2, 8, 21, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480663388, 2016, 12, 2, 8, 23, 8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480663389, 2016, 12, 2, 8, 23, 9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480663399, 2016, 12, 2, 8, 23, 19, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480663409, 2016, 12, 2, 8, 23, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480663412, 2016, 12, 2, 8, 23, 32, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480663437, 2016, 12, 2, 8, 23, 57, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480663440, 2016, 12, 2, 8, 24, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480663493, 2016, 12, 2, 8, 24, 53, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480663635, 2016, 12, 2, 8, 27, 15, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480663674, 2016, 12, 2, 8, 27, 54, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480663763, 2016, 12, 2, 8, 29, 23, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480663764, 2016, 12, 2, 8, 29, 24, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480663765, 2016, 12, 2, 8, 29, 25, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480663909, 2016, 12, 2, 8, 31, 49, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480663918, 2016, 12, 2, 8, 31, 58, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480663938, 2016, 12, 2, 8, 32, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480664156, 2016, 12, 2, 8, 35, 56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480664224, 2016, 12, 2, 8, 37, 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480664322, 2016, 12, 2, 8, 38, 42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480664325, 2016, 12, 2, 8, 38, 45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480664331, 2016, 12, 2, 8, 38, 51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/'),
(1480664379, 2016, 12, 2, 8, 39, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/'),
(1480664440, 2016, 12, 2, 8, 40, 40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/'),
(1480664474, 2016, 12, 2, 8, 41, 14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/'),
(1480664520, 2016, 12, 2, 8, 42, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/'),
(1480664540, 2016, 12, 2, 8, 42, 20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480664738, 2016, 12, 2, 8, 45, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480664746, 2016, 12, 2, 8, 45, 46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480664920, 2016, 12, 2, 8, 48, 40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480664928, 2016, 12, 2, 8, 48, 48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480664982, 2016, 12, 2, 8, 49, 42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480664989, 2016, 12, 2, 8, 49, 49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480665102, 2016, 12, 2, 8, 51, 42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480665111, 2016, 12, 2, 8, 51, 51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480667347, 2016, 12, 2, 9, 29, 7, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480667394, 2016, 12, 2, 9, 29, 54, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480667458, 2016, 12, 2, 9, 30, 58, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480667642, 2016, 12, 2, 9, 34, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480667753, 2016, 12, 2, 9, 35, 53, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480667946, 2016, 12, 2, 9, 39, 6, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/producto.php?id=7'),
(1480667948, 2016, 12, 2, 9, 39, 8, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480668134, 2016, 12, 2, 9, 42, 14, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480668214, 2016, 12, 2, 9, 43, 34, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480693491, 2016, 12, 2, 16, 44, 51, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480696028, 2016, 12, 2, 17, 27, 8, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480696080, 2016, 12, 2, 17, 28, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480696100, 2016, 12, 2, 17, 28, 20, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/confirmar.php'),
(1480696106, 2016, 12, 2, 17, 28, 26, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480696112, 2016, 12, 2, 17, 28, 32, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/index.php'),
(1480696137, 2016, 12, 2, 17, 28, 57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480696147, 2016, 12, 2, 17, 29, 7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480696163, 2016, 12, 2, 17, 29, 23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480696176, 2016, 12, 2, 17, 29, 36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480696635, 2016, 12, 2, 17, 37, 15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480696659, 2016, 12, 2, 17, 37, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/'),
(1480718834, 2016, 12, 2, 23, 47, 14, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36 OPR/41.0.2353.69', '/tiendaonline/'),
(1480718878, 2016, 12, 2, 23, 47, 58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/'),
(1480718886, 2016, 12, 2, 23, 48, 6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480719086, 2016, 12, 2, 23, 51, 26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480719487, 2016, 12, 2, 23, 58, 7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480719490, 2016, 12, 2, 23, 58, 10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480721847, 2016, 12, 3, 0, 37, 27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/'),
(1480722004, 2016, 12, 3, 0, 40, 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/'),
(1480722050, 2016, 12, 3, 0, 40, 50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480722060, 2016, 12, 3, 0, 41, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480722109, 2016, 12, 3, 0, 41, 49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480723524, 2016, 12, 3, 1, 5, 24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/'),
(1480723578, 2016, 12, 3, 1, 6, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480723588, 2016, 12, 3, 1, 6, 28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/index.php'),
(1480723618, 2016, 12, 3, 1, 6, 58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480723667, 2016, 12, 3, 1, 7, 47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480723680, 2016, 12, 3, 1, 8, 0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480723704, 2016, 12, 3, 1, 8, 24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1480723788, 2016, 12, 3, 1, 9, 48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '/tiendaonline/confirmar.php'),
(1483641153, 2017, 1, 5, 19, 32, 33, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36 OPR/42.0.2393.94', '/tiendaonline/'),
(1483641167, 2017, 1, 5, 19, 32, 47, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36 OPR/42.0.2393.94', '/tiendaonline/confirmar.php'),
(1483641175, 2017, 1, 5, 19, 32, 55, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36 OPR/42.0.2393.94', '/tiendaonline/');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenesproductos`
--
ALTER TABLE `imagenesproductos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lineaspedido`
--
ALTER TABLE `lineaspedido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `imagenesproductos`
--
ALTER TABLE `imagenesproductos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `lineaspedido`
--
ALTER TABLE `lineaspedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
