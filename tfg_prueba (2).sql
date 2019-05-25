-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-05-2019 a las 21:55:51
-- Versión del servidor: 5.7.21
-- Versión de PHP: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tfg_prueba`
--
CREATE DATABASE IF NOT EXISTS `tfg_prueba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tfg_prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

DROP TABLE IF EXISTS `articulo`;
CREATE TABLE IF NOT EXISTS `articulo` (
  `id_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_art` char(45) NOT NULL,
  `precio_articulo` int(11) NOT NULL,
  `iva_articulo` int(11) NOT NULL,
  PRIMARY KEY (`id_articulo`),
  UNIQUE KEY `idARTICULO_UNIQUE` (`id_articulo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id_articulo`, `descripcion_art`, `precio_articulo`, `iva_articulo`) VALUES
(1, 'Articulo 1', 5, 10),
(2, 'Articulo 2', 10, 10),
(3, 'Articulo 3', 15, 4),
(4, 'Merluza pincho 5kg+', 13, 10),
(5, 'Bogavante CND', 16, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `cif_cliente` char(10) NOT NULL,
  `nombre_comercial` varchar(45) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `direccion_descarga` varchar(45) NOT NULL,
  `direccion_fiscal` char(45) NOT NULL,
  `telefono_contacto` char(15) NOT NULL,
  `movil_contacto` char(15) DEFAULT NULL,
  `fax_cliente` char(15) DEFAULT NULL,
  `persona_contacto` char(20) DEFAULT NULL,
  `email_cliente` char(45) DEFAULT NULL,
  `forma_pago` char(45) DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  `COMERCIALES_id_comercial` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `id_cliente_UNIQUE` (`id_cliente`),
  UNIQUE KEY `cif_cliente_UNIQUE` (`cif_cliente`),
  UNIQUE KEY `cif_cliente` (`cif_cliente`),
  UNIQUE KEY `cif_cliente_2` (`cif_cliente`),
  UNIQUE KEY `cif_cliente_3` (`cif_cliente`),
  UNIQUE KEY `cif_cliente_4` (`cif_cliente`),
  UNIQUE KEY `cif_cliente_6` (`cif_cliente`),
  UNIQUE KEY `cif_cliente_7` (`cif_cliente`),
  UNIQUE KEY `cif_cliente_8` (`cif_cliente`),
  UNIQUE KEY `cif_cliente_9` (`cif_cliente`),
  UNIQUE KEY `cif_cliente_10` (`cif_cliente`),
  UNIQUE KEY `cif_cliente_11` (`cif_cliente`),
  KEY `fk_CLIENTES_COMERCIALES1_idx` (`COMERCIALES_id_comercial`),
  KEY `cif_cliente_5` (`cif_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `cif_cliente`, `nombre_comercial`, `razon_social`, `direccion_descarga`, `direccion_fiscal`, `telefono_contacto`, `movil_contacto`, `fax_cliente`, `persona_contacto`, `email_cliente`, `forma_pago`, `fecha_creacion`, `COMERCIALES_id_comercial`) VALUES
(1, 'A11111111', 'Cliente 1', 'Cliente 1 S.L.', 'Direccion 1', 'Direccion 1bbb', '911111111', '611111111', '9999999', 'Contacto 1', 'cliente1@tupesca.com', 'Transferencia 60 días', '2018-07-09 22:36:01', 1),
(2, 'B22222222', 'Cliente 2', 'Cliente 2 S.L.', 'Calle Pepito 2', 'Calle Pepito 3', '622222222', '922222222', '99999', 'Persona contacto 2', 'cliente2@gmail.com', '60 días', '2019-04-09 19:31:57', 1),
(3, '65651651', 'Ciudad del Bienestar', 'Ciudad S.L.', 'Virgen de las viñas, Aranda de Durelo', 'Virgen de las viñas, Aranda de Durelo', '6465465', '6546546', '54654654', 'Pichurrina', 'ciudad@gmail', 'Efectivo', '2019-05-22 08:20:30', 1),
(4, '696969', 'Lorena', 'Bombón', 'Mi corazón', 'Las estrellas', '696969', '696969', '696969', 'Su pichurrin', 'chipi_kuki_chuli@pibon.corazon', 'Gratis, tiene el cielo ganado', '2019-05-25 18:18:15', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comerciales`
--

DROP TABLE IF EXISTS `comerciales`;
CREATE TABLE IF NOT EXISTS `comerciales` (
  `id_comercial` int(11) NOT NULL AUTO_INCREMENT,
  `dni_comercial` varchar(15) NOT NULL,
  `nombre_comercial` varchar(20) NOT NULL,
  `apellidos_comercial` varchar(45) NOT NULL,
  `direccion_comercial` varchar(45) NOT NULL,
  `telefono_contacto` varchar(45) NOT NULL,
  `telefono_movil` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  `User_Name` varchar(60) NOT NULL,
  `User_Password` varchar(60) NOT NULL,
  `User_Type` varchar(15) NOT NULL DEFAULT 'Invitado',
  PRIMARY KEY (`id_comercial`),
  UNIQUE KEY `id_comercial_UNIQUE` (`id_comercial`),
  UNIQUE KEY `dni_comercial_UNIQUE` (`dni_comercial`),
  UNIQUE KEY `User_Name` (`User_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comerciales`
--

INSERT INTO `comerciales` (`id_comercial`, `dni_comercial`, `nombre_comercial`, `apellidos_comercial`, `direccion_comercial`, `telefono_contacto`, `telefono_movil`, `email`, `User_Name`, `User_Password`, `User_Type`) VALUES
(1, '11111111B', 'Comercial 1', 'Comercial 1', 'Direccion 1', '911111111', '611111111', 'comercial1@tupesca.com', 'comercial1', '$2y$10$FWtdByESq6ODExrmemWlCeZmqF5UXctznZw9tvRCkP8H4oF0rAs3C', 'comercial'),
(2, '22222222A', 'Comercial 2', 'Comercial 2', 'Direccion 2', '922222222', '622222222', 'comercial2@tupesca.com', 'comercial2', '$2y$10$xS2Ne52uyGUseHfAybHpquEIKqogMQxfCjxEb8K.SvK72pw6BbHi2', 'comercial'),
(3, '555555555525b', 'Administrador 1', 'Administrador 1', 'Direccion 1', '933333334', '633333333', 'administrador1@tupesca.com', 'administrador1', '$2y$10$J9dXTjrQuT.oeoc1OEnziOUYOJCAkYmCjd.35EKPu5wCDVyu.Ldna', 'administrador'),
(4, '44444444Z', 'Comercial 3', 'Comercial 3', 'Direccion 4', '944444444', '644444444', 'comercial3@tupesca.com', 'comercial4', '$2y$10$zkRRwV8rGITeQ5oYkBwOXuPMjIuiEDfJeYMmmP1jH7AeZGsavaM0.', 'comercial'),
(5, '11111111A', 'Invitado 1', 'Invitado 1', 'Direccion 1', '911111111', '611111111', 'invitado1@tupesca.com', 'invitado1', '$2y$10$1Pt0YMm9Vl.JFugl4INw1OUH26QFMg1IrVVdkDv7gcqTTw17DzuES', 'invitado'),
(6, 'lkh', 'sdfdli', 'lk', 'lkl', 'lklk', 'lkjl', 'lkj@sdcfs', 'lkj', '$2y$10$3jvg8cVMZZIJQxYvSC66u.qrk3ir0F92sc.Nl/RrZ8VI5NHkr2eLa', 'comercial'),
(7, 'ssdf', 'saedf', 'sedf', 'sdf', 'sdf', 'sdf', 'sdfs@asd.com', 'sdf', '$2y$10$WVR7VpzIwvewktC1EFVLl.u7OpDKQ5eV2OfBrPRufgIP4UWnIeHiS', 'invitado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

DROP TABLE IF EXISTS `detalle_pedidos`;
CREATE TABLE IF NOT EXISTS `detalle_pedidos` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `kg_netos` decimal(10,2) NOT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  `PEDIDOS_id_pedido` int(11) NOT NULL,
  `ARTICULO_id_articulo` int(11) NOT NULL,
  PRIMARY KEY (`id_detalle`),
  UNIQUE KEY `id_linea_UNIQUE` (`id_detalle`),
  KEY `fk_LINEAS_PEDIDOS1_idx` (`PEDIDOS_id_pedido`),
  KEY `fk_LINEAS_ARTICULO1_idx` (`ARTICULO_id_articulo`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id_detalle`, `kg_netos`, `observaciones`, `PEDIDOS_id_pedido`, `ARTICULO_id_articulo`) VALUES
(6, '500.00', 'Linea 1 - pedido 1 m', 1, 1),
(7, '500.00', 'Linea 2 - pedido 1 m', 1, 1),
(8, '500.00', 'Linea 3 - pedido 1 m', 1, 1),
(30, '6.00', 'Linea 1 - pedido 2', 2, 2),
(33, '200.00', 'sdfgfsd', 4, 2),
(40, '1500.00', 'que llegue vivo', 3, 5),
(41, '20.00', 'en rodajas', 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_pedido` datetime NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `cobrado` tinyint(1) NOT NULL DEFAULT '0',
  `CLIENTES_id_cliente` int(11) NOT NULL,
  `observaciones` text NOT NULL,
  PRIMARY KEY (`id_pedido`),
  UNIQUE KEY `id_pedido_UNIQUE` (`id_pedido`),
  KEY `fk_PEDIDOS_CLIENTES1_idx` (`CLIENTES_id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `fecha_pedido`, `fecha_entrega`, `cobrado`, `CLIENTES_id_cliente`, `observaciones`) VALUES
(1, '2019-05-18 00:11:19', '2019-05-19 00:00:00', 1, 1, 'Pedido 1 m'),
(2, '2019-05-18 00:15:12', '2019-05-27 00:00:00', 0, 2, 'Pedido 2'),
(3, '2019-05-24 20:55:02', '2019-05-31 00:00:00', 0, 1, 'dfgdfsg'),
(4, '2019-05-24 20:55:34', '2019-05-31 00:00:00', 0, 1, 'dfgd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_documentos`
--

DROP TABLE IF EXISTS `tbl_documentos`;
CREATE TABLE IF NOT EXISTS `tbl_documentos` (
  `id_documento` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` text,
  `descripcion` text,
  `tamanio` int(11) DEFAULT NULL,
  `tipo` text,
  `nombre_archivo` text,
  PRIMARY KEY (`id_documento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_CLIENTES_COMERCIALES1` FOREIGN KEY (`COMERCIALES_id_comercial`) REFERENCES `comerciales` (`id_comercial`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `fk_LINEAS_ARTICULO1` FOREIGN KEY (`ARTICULO_id_articulo`) REFERENCES `articulo` (`id_articulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_LINEAS_PEDIDOS1` FOREIGN KEY (`PEDIDOS_id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_PEDIDOS_CLIENTES1` FOREIGN KEY (`CLIENTES_id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
