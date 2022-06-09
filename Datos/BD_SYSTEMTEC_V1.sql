--
-- Base de datos: `bdsystemtec`
--
CREATE DATABASE bdsystemTec;
USE bdsystemTec;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleta`
--

CREATE TABLE `boleta` (
  `idBoleta` int(11) NOT NULL,
  `Ventas_idVentas` int(11) DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `TipoComprobante_idipoComprobante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategorias` int(11) NOT NULL,
  `NombreCategoria` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategorias`, `NombreCategoria`) VALUES
(1, 'MOUSE'),
(2, 'TINTAS PARA IMPRESORAS'),
(3, 'IMPRESORAS'),
(4, 'USB'),
(5, 'MICROPROCESADORES'),
(6, 'TECLADO'),
(7, 'MONITORES'),
(8, 'PARLANTES'),
(9, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `Ventas_idVentas` char(5) DEFAULT NULL,
  `Productos_idProductos` char(5) DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL,
  `Ventas_idVenas` char(5) DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  `IGV` decimal(10,2) DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `TipoComprobante?idTipoComprobante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` int(11) NOT NULL,
  `NombreProducto` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `PrecioCompra` decimal(10,2) DEFAULT NULL,
  `PrecioVenta` decimal(10,2) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  `FechaRegistro` date DEFAULT NULL,
  `categorias_idCategorias` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `NombreProducto`, `Descripcion`, `PrecioCompra`, `PrecioVenta`, `Stock`, `FechaRegistro`, `categorias_idCategorias`) VALUES
(1, 'MOUSE GENIUS', 'Mouse Genius Alámbrico DX110 Negro', '19.90', '24.90', 20, '2019-01-01', 1),
(2, 'PENTIUM III 600', 'Microprocesador Pentium III 600', '120.00', '150.00', 5, '2019-01-01', 5),
(3, 'PENTIUM IV 2.5 GB', 'Microprocesador Pentium IV 2.5 GB', '120.00', '150.00', 5, '2019-01-01', 5),
(4, 'FUNDAS NAYLON', 'Funda de color negro', '30.00', '40.00', 35, '2019-01-01', 9),
(5, 'USB KINGSTON', 'Sandisk Cruzer metal 16GB interfaz 2.0', '19.90', '24.90', 15, '2019-01-01', 4),
(6, 'TINTA BJC21 B/N', 'Tinta BJC21 Blanco/Negro x unidad', '15.00', '20.00', 15, '2019-01-01', 2),
(7, 'IMPRESORA EPSON', 'Impresora Multifuncional Epson EcoTank L3210', '800.00', '939.99', 5, '2019-01-01', 3),
(8, 'MONITOR SYNMASTER 3N', 'Monitor Synmaster 3N color plateado', '200.00', '300.00', 10, '2019-01-01', 7),
(9, 'MONITOR VIEWSONIC', 'Monitor Viewsonic color negro', '350.00', '450.00', 10, '2019-01-01', 7),
(10, 'PENTIUM MMX 260', 'Microprocesador Pentium MMX 260 GB', '90.00', '120.00', 5, '2019-01-01', 5),
(11, 'MOUSE MICROSOFT', 'Mouse Microsoft PN7-00001 color negro', '89.00', '119.00', 15, '2019-01-01', 1),
(12, 'MEMORIA RAM DIMM 64', 'Memoria RAM DIMM 64 GB', '50.00', '60.00', 10, '2019-01-01', 5),
(13, 'MEMORIA RAM DIMM 128', 'Memoria RAM DIMM 128 GB', '70.00', '82.00', 10, '2019-01-01', 5),
(14, 'IMPRESORA MULTIFUNCIONAL HP', 'Impresora Multi HP Smart Tank 533 Plus ADF', '1000.00', '1269.00', 3, '2019-01-01', 1),
(15, 'IMPRESORA LASER SAMSUNG', 'Impresora Láser Multi Samsung M4070fr A4 Usb 2.0', '1000.00', '1370.00', 3, '2019-01-01', 1),
(16, 'TINTA BJC21 COLOR', 'Tinta BJC21 Color Negro', '15.00', '20.00', 15, '2019-01-01', 2),
(17, 'TINTA B/n  484', 'Tinta B/n  484 Color Rojo', '20.00', '25.00', 15, '2019-01-01', 2),
(18, 'TINTA Color 624', 'Tinta Color 624 Color Amarillo', '20.00', '25.00', 15, '2019-01-01', 2),
(19, 'TECLADO PC HYPERX', 'Teclado de membrana gaming HyperX Alloy Core RGB', '189.00', '219.90', 20, '2019-01-01', 6),
(20, 'MOUSE LOGITECH', 'Mouse Gamer Logitech G502 Hero 16000dpi RGB', '200.00', '249.00', 15, '2019-01-01', 6),
(21, 'USB KINGSTON 32 GB', 'Usb 3.2 Kingston Data Traveler 32GB negro', '28.90', '34.90', 15, '2019-01-01', 4),
(22, 'USB KINGSTON 128 GB', 'Usb Kingston DT100G3 128GB', '70.90', '84.90', 15, '2019-01-01', 4),
(23, 'USB HP 128GB', 'HP X785W USB 3.0 128GB Pendrive', '85.01', '111.99', 15, '2019-01-01', 4),
(24, 'PARLANTES BOSE ', 'Parlante Bluetooth Bose Revolve Resistente al agua', '850.00', '959.00', 5, '2019-01-01', 8),
(25, 'PARLANTES PC TERAWARE', 'Parlantes para pc Teraware usb 2.0 y 3.5 mm negro', '15.10', '21.90', 15, '2019-01-01', 8),
(26, 'MOUSE LENOVO', 'Mouse inalámbrico Lenovo 530 (gris platino)', '45.00', '59.00', 15, '2019-01-01', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `IdRoles` int(11) NOT NULL,
  `Role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`IdRoles`, `Role`) VALUES
(1, 'Administrador'),
(2, 'Cliente'),
(3, 'Moderador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocomprobante`
--

CREATE TABLE `tipocomprobante` (
  `dTipoComprobante` int(11) NOT NULL,
  `NombreTipoComprobante` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipocomprobante`
--

INSERT INTO `tipocomprobante` (`dTipoComprobante`, `NombreTipoComprobante`) VALUES
(1, 'BOLETA'),
(2, 'FACTURA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `NID` varchar(50) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `Celular` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `User` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Estado` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `NID`, `Nombre`, `Apellidos`, `Celular`, `Email`, `User`, `Password`, `Role`, `Estado`) VALUES
(1, '12345678', 'admin', 'admin', '123456789', 'admin@gmail.com', 'admin', 'admin', 'Administrador', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVentas` int(11) NOT NULL,
  `FechaEmitida` date DEFAULT NULL,
  `HoraEmitida` time DEFAULT NULL,
  `Igv` char(1) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `TipoComprobante_idTipoComprobante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boleta`
--
ALTER TABLE `boleta`
  ADD PRIMARY KEY (`idBoleta`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategorias`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idFactura`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProductos`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`IdRoles`);

--
-- Indices de la tabla `tipocomprobante`
--
ALTER TABLE `tipocomprobante`
  ADD PRIMARY KEY (`dTipoComprobante`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVentas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boleta`
--
ALTER TABLE `boleta`
  MODIFY `idBoleta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idFactura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `IdRoles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipocomprobante`
--
ALTER TABLE `tipocomprobante`
  MODIFY `dTipoComprobante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVentas` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
