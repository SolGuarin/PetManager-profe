-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2021 a las 03:50:28
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `administracionmascotasbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cat`
--

CREATE TABLE `tb_cat` (
  `id_cat` int(11) NOT NULL,
  `breed` varchar(30) NOT NULL,
  `id_pet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_cat`
--

INSERT INTO `tb_cat` (`id_cat`, `breed`, `id_pet`) VALUES
(17, 'British', 39),
(18, 'Abyssinian', 41),
(19, 'Abyssinian', 43),
(20, 'Bombay', 45),
(21, 'Bombay', 47),
(22, 'Birman', 49),
(23, 'Birman', 51),
(24, 'Birman', 53),
(25, 'Birman', 55),
(26, 'Birman', 56),
(28, 'Birman', 60),
(29, 'Birman', 62);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_doctor`
--

CREATE TABLE `tb_doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_doctor`
--

INSERT INTO `tb_doctor` (`id`, `name`, `phone`, `address`) VALUES
(2, 'Cristina Adams', '3158974536', 'Cra 24 N 78-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_dog`
--

CREATE TABLE `tb_dog` (
  `id_dog` int(11) NOT NULL,
  `breed` varchar(30) NOT NULL,
  `pedigree` tinyint(1) NOT NULL DEFAULT 0,
  `id_pet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_dog`
--

INSERT INTO `tb_dog` (`id_dog`, `breed`, `pedigree`, `id_pet`) VALUES
(22, 'Criollo', 0, 38),
(23, 'Pincher', 1, 40),
(24, 'Schnauzer', 1, 42),
(25, 'German shepherd', 1, 44),
(26, 'Schnauzer', 1, 46),
(27, 'German shepherd', 1, 48),
(28, 'Criollo', 0, 50),
(29, 'Criollo', 0, 52),
(30, 'Criollo', 0, 54),
(31, 'Criollo', 0, 57),
(33, 'Criollo', 0, 61),
(34, 'Criollo', 0, 63);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_hospital`
--

CREATE TABLE `tb_hospital` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL,
  `patien_type` int(11) NOT NULL,
  `id_doctor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_hospital`
--

INSERT INTO `tb_hospital` (`id`, `name`, `phone`, `address`, `patien_type`, `id_doctor`) VALUES
(1, 'Hospital Veterinario', '6897584', 'Calle San Juan 12-45', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pet`
--

CREATE TABLE `tb_pet` (
  `id` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `born_year` int(11) NOT NULL,
  `color` varchar(20) NOT NULL,
  `health_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_pet`
--

INSERT INTO `tb_pet` (`id`, `code`, `name`, `born_year`, `color`, `health_status`) VALUES
(38, '001', 'Firulais_uno', 2011, 'Negro', 'Sick'),
(39, 'zzz', 'Chepo_uno', 2021, 'Blanco', 'Healthy'),
(40, '002', 'Firulais_dos', 2012, 'Amarillo', 'In Surgery'),
(41, 'yyy', 'Chepo_dos', 2012, 'Blanco', 'Healthy'),
(42, '003', 'Firulais3', 2013, 'color3', 'In Surgery'),
(43, 'xxx', 'Chepo3', 2019, 'color3', 'Sick'),
(44, '004', 'Firulais4', 2014, 'color4', 'Healthy'),
(45, 'www', 'Chepo3', 2018, 'color3', 'Sick'),
(46, '005', 'Firulais5', 2015, 'color5', 'In Surgery'),
(47, 'uuu', 'Chepo5', 2015, 'color5', 'Sick'),
(48, 'cx', 'sa', 2, 'x', 'In Surgery'),
(49, 'ppp', 'kitty', 2017, 'piel', 'Sick'),
(50, '006', 'Firulais6', 2016, 'color6', 'Sick'),
(51, 'ttt', 'Chepo6', 2015, 'color6', 'Sick'),
(52, '111', '111', 111, '111', 'Sick'),
(53, 'sss', 'sss', 222, 'sss', 'Sick'),
(54, '999', '999', 999, '999', 'Sick'),
(55, '333', '333', 333, '333', 'Sick'),
(56, '444', '444', 444, '444', 'Sick'),
(57, '555', '555', 555, '555', 'Sick'),
(60, '10', '10', 10, '10', 'Sick'),
(61, '17', '17', 17, '17', 'Sick'),
(62, '222', 'dos cientos veintidos', 222, '222', 'Sick'),
(63, '50', 'cincuenta', 50, '50', 'Sick');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pet_hospital`
--

CREATE TABLE `tb_pet_hospital` (
  `id` int(11) NOT NULL,
  `id_pet` int(11) NOT NULL,
  `id_hospital` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_cat`
--
ALTER TABLE `tb_cat`
  ADD PRIMARY KEY (`id_cat`),
  ADD KEY `id_pet` (`id_pet`);

--
-- Indices de la tabla `tb_doctor`
--
ALTER TABLE `tb_doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_dog`
--
ALTER TABLE `tb_dog`
  ADD PRIMARY KEY (`id_dog`),
  ADD KEY `id_pet` (`id_pet`);

--
-- Indices de la tabla `tb_hospital`
--
ALTER TABLE `tb_hospital`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_doctor` (`id_doctor`);

--
-- Indices de la tabla `tb_pet`
--
ALTER TABLE `tb_pet`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_pet_hospital`
--
ALTER TABLE `tb_pet_hospital`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pet` (`id_pet`),
  ADD KEY `id_hospital` (`id_hospital`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_cat`
--
ALTER TABLE `tb_cat`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `tb_doctor`
--
ALTER TABLE `tb_doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_dog`
--
ALTER TABLE `tb_dog`
  MODIFY `id_dog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `tb_hospital`
--
ALTER TABLE `tb_hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_pet`
--
ALTER TABLE `tb_pet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `tb_pet_hospital`
--
ALTER TABLE `tb_pet_hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_cat`
--
ALTER TABLE `tb_cat`
  ADD CONSTRAINT `tb_cat_ibfk_1` FOREIGN KEY (`id_pet`) REFERENCES `tb_pet` (`id`);

--
-- Filtros para la tabla `tb_dog`
--
ALTER TABLE `tb_dog`
  ADD CONSTRAINT `tb_dog_ibfk_1` FOREIGN KEY (`id_pet`) REFERENCES `tb_pet` (`id`);

--
-- Filtros para la tabla `tb_hospital`
--
ALTER TABLE `tb_hospital`
  ADD CONSTRAINT `tb_hospital_ibfk_1` FOREIGN KEY (`id_doctor`) REFERENCES `tb_doctor` (`id`);

--
-- Filtros para la tabla `tb_pet_hospital`
--
ALTER TABLE `tb_pet_hospital`
  ADD CONSTRAINT `tb_pet_hospital_ibfk_1` FOREIGN KEY (`id_pet`) REFERENCES `tb_pet` (`id`),
  ADD CONSTRAINT `tb_pet_hospital_ibfk_2` FOREIGN KEY (`id_hospital`) REFERENCES `tb_hospital` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
