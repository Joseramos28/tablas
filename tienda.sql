-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2023 a las 08:20:48
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Id_cliente` int(10) NOT NULL,
  `Nombre_cliente` varchar(20) NOT NULL,
  `Direccion_cliente` varchar(20) NOT NULL,
  `Telefono_cliente` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Id_cliente`, `Nombre_cliente`, `Direccion_cliente`, `Telefono_cliente`) VALUES
(1, 'Pedro perez', 'Alvaro obregon 1', 123456),
(2, 'Maria Rosas', 'Genaro estrada 2', 654321),
(3, 'Rodrigo Valdez', 'Emiliano zapata', 456789),
(4, 'Raul ramirez', 'tres rios 4', 987654),
(5, 'Raul ramos', 'Francisco villa 5', 12345);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `ID_marca` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`ID_marca`) VALUES
('Zara'),
('Samsung'),
('Mabe'),
('Electrolux'),
('LG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_producto` int(10) NOT NULL,
  `Nombre_producto` varchar(10) NOT NULL,
  `Precio_producto` float NOT NULL,
  `Marca_producto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_producto`, `Nombre_producto`, `Precio_producto`, `Marca_producto`) VALUES
(1, 'Cuchara', 10.11, 'Sm mty'),
(2, 'Tenedor', 10, 'Poe'),
(3, 'Plato', 25.33, 'Prey'),
(4, 'Olla', 54.12, 'Ecko'),
(5, 'Cucharon', 14.55, 'Ecko');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ID_venta` int(10) NOT NULL,
  `Fecha_venta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ID_venta`, `Fecha_venta`) VALUES
(123456, '2023-04-01'),
(123456789, '2023-04-11'),
(1234567, '2023-04-12'),
(12345678, '2023-04-13'),
(123456789, '2023-04-14'),
(987654321, '2022-04-08');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
