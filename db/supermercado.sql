-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 04:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermercado`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(11) NOT NULL,
  `categoria_nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `categoria_descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_descripcion`) VALUES
(1, 'Despensa', ''),
(2, 'Lacteos', ''),
(3, 'Frutas y Verduras', ''),
(4, 'Carnes, Pollo y Pescado', ''),
(5, 'Carnes Frías y Embutidos', ''),
(6, 'Cuidado Personal', ''),
(7, 'Aseo y Limpieza', ''),
(8, 'Drogueria', ''),
(9, 'Mascotas', ''),
(10, 'Vinos y Licores', '');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(11) NOT NULL,
  `producto_nombre` varchar(50) NOT NULL,
  `producto_descripcion` varchar(255) NOT NULL,
  `producto_precio` decimal(10,2) UNSIGNED NOT NULL,
  `producto_cantidad` int(10) UNSIGNED NOT NULL,
  `producto_descuento` int(10) UNSIGNED NOT NULL,
  `producto_imagen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_nombre`, `producto_descripcion`, `producto_precio`, `producto_cantidad`, `producto_descuento`, `producto_imagen`, `categoria_id`) VALUES
(26, 'Manzana roja', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 4000.00, 13, 25, '../images/productos/3/manzana.svg', 3),
(27, 'Banano', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 2500.00, 65, 5, '../images/productos/3/bananos.svg', 3),
(28, 'Lechuga', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 500.00, 30, 10, '../images/productos/3/lechuga.svg', 3),
(29, 'Escoba', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 3000.00, 32, 15, '../images/productos/7/escoba.svg', 7),
(30, 'Shampoo Palmolive', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 11000.00, 40, 25, '../images/productos/7/shampooverde.svg', 7),
(31, 'Head & Shoulders', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 24000.00, 40, 30, '../images/productos/7/shampo.svg', 7),
(32, 'Límpido', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 6000.00, 25, 15, '../images/productos/7/limpido.svg', 7),
(33, 'Pelota', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 3000.00, 10, 5, '../images/productos/9/pelotaperro.png', 9),
(34, 'Purina Dog Chow', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 35000.00, 20, 30, '../images/productos/9/dogchow.png', 9),
(35, 'Collar para perro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 15000.00, 20, 50, '../images/productos/9/collarperro.png', 9),
(36, 'Kilo de carne', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 25000.00, 30, 15, '../images/productos/4/carne.png', 4),
(37, 'Libra de Pollo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 17000.00, 37, 25, '../images/productos/4/pollo.png', 4),
(38, 'Mantequilla', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 7000.00, 78, 15, '../images/productos/1/mantequilla.png', 1),
(39, 'Cubeta de Huevos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 19000.00, 124, 15, '../images/productos/1/huevos.png', 1),
(40, 'Leche en polvo Nestle', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 22000.00, 41, 50, '../images/productos/2/lechepolvo.png', 2),
(41, 'Yogurt Griego', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 9000.00, 26, 10, '../images/productos/2/yogurt.png', 2),
(42, 'Chorizo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 15000.00, 10, 15, '../images/productos/5/chorizo.png', 5),
(43, 'Morcilla', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 9000.00, 43, 5, '../images/productos/5/morcilla.png', 5),
(44, 'Crema NIVEA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 12000.00, 50, 15, '../images/productos/6/crema.png', 6),
(45, 'Bloqueador NIVEA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 16000.00, 50, 15, '../images/productos/6/bloqueador.png', 6),
(46, 'Paracetamol', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 3000.00, 25, 5, '../images/productos/8/paracetamol.png', 8),
(47, 'Vino Lungarotti', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet eros eu leo imperdiet aliquet eu eget dolor. Nulla rhoncus tellus ac mauris commodo fringilla. Ut sollicitudin velit nec magna suscipit gravida.', 57000.00, 10, 20, '../images/productos/10/vino.png', 10);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `email`, `role`) VALUES
(1, 'admin', 'admin', 'javidal@poligran.edu.co', 'administrador');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
