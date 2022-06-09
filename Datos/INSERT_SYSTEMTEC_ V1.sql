-- --------------------------------------------------------
USE bdsystemTec;
-- --------------------------------------------------------
--
--INSERTANDO DATOS A LA TABLA ROLES
--

insert into roles(Role) 
values
('Administrador'), 
('Cliente'), 
('Moderador');

-- --------------------------------------------------------
--
--INSERTANDO DATOS A LA TABLA USUARIOS
--

insert into usuarios(NID,Nombre,Apellidos,Celular,Email,User,Password,Role,Estado)
values
('12345678','admin','admin','123456789','admin@gmail.com','admin','admin','Administrador','1');

-- --------------------------------------------------------
--				  
--INSERTANDO DATOS A LA TABLA CATEGORIAS
--

insert into Categorias(NombreCategoria)
values
('MOUSE'),
('TINTAS PARA IMPRESORAS'),
('IMPRESORAS'),
('USB'),
('MICROPROCESADORES'),
('TECLADO'),
('MONITORES'),
('PARLANTES'),
('OTROS');

-- --------------------------------------------------------
--
--INSERTANDO DATOS A LA TABLA PRODUCTOS
--

insert into Productos(NombreProducto,Descripcion,PrecioCompra,PrecioVenta,Stock,FechaRegistro,Categorias_idCategorias)
values
('MOUSE GENIUS', 'Mouse Genius Alámbrico DX110 Negro','19.90','24.90','20','2019-01-01','1'),
('PENTIUM III 600', 'Microprocesador Pentium III 600','120.00','150.00','5','2019-01-01','5'),
('PENTIUM IV 2.5 GB', 'Microprocesador Pentium IV 2.5 GB','120.00','150.00','5','2019-01-01','5'),
('FUNDAS NAYLON', 'Funda de color negro','30.00','40.00','35','2019-01-01','9'),
('USB KINGSTON', 'Sandisk Cruzer metal 16GB interfaz 2.0','19.90','24.90','15','2019-01-01','4'),
('TINTA BJC21 B/N','Tinta BJC21 Blanco/Negro x unidad','15.00','20.00','15','2019-01-01','2'),
('IMPRESORA EPSON', 'Impresora Multifuncional Epson EcoTank L3210','800.00','939.99','5','2019-01-01','3'),
('MONITOR SYNMASTER 3N','Monitor Synmaster 3N color plateado','200.00','300.00','10','2019-01-01','7'),
('MONITOR VIEWSONIC', 'Monitor Viewsonic color negro','350.00','450.00','10','2019-01-01','7'),
('PENTIUM MMX 260', 'Microprocesador Pentium MMX 260 GB','90.00','120.00','5','2019-01-01','5'),
('MOUSE MICROSOFT', 'Mouse Microsoft PN7-00001 color negro','89.00','119.00','15','2019-01-01','1'),
('MEMORIA RAM DIMM 64', 'Memoria RAM DIMM 64 GB','50.00','60.00','10','2019-01-01','5'),
('MEMORIA RAM DIMM 128', 'Memoria RAM DIMM 128 GB','70.00','82.00','10','2019-01-01','5'),
('IMPRESORA MULTIFUNCIONAL HP', 'Impresora Multi HP Smart Tank 533 Plus ADF','1000.00','1269.00','3','2019-01-01','1'),
('IMPRESORA LASER SAMSUNG', 'Impresora Láser Multi Samsung M4070fr A4 Usb 2.0','1000.00','1370.00','3','2019-01-01','1'),
('TINTA BJC21 COLOR', 'Tinta BJC21 Color Negro','15.00','20.00','15','2019-01-01','2'),
('TINTA B/n  484', 'Tinta B/n  484 Color Rojo','20.00','25.00','15','2019-01-01','2'),
('TINTA Color 624', 'Tinta Color 624 Color Amarillo','20.00','25.00','15','2019-01-01','2'),
('TECLADO PC HYPERX', 'Teclado de membrana gaming HyperX Alloy Core RGB','189.00','219.90','20','2019-01-01','6'),
('MOUSE LOGITECH', 'Mouse Gamer Logitech G502 Hero 16000dpi RGB','200.00','249.00','15','2019-01-01','6'),
('USB KINGSTON 32 GB', 'Usb 3.2 Kingston Data Traveler 32GB negro','28.90','34.90','15','2019-01-01','4'),
('USB KINGSTON 128 GB', 'Usb Kingston DT100G3 128GB','70.90','84.90','15','2019-01-01','4'),
('USB HP 128GB', 'HP X785W USB 3.0 128GB Pendrive','85.01','111.99','15','2019-01-01','4'),
('PARLANTES BOSE ', 'Parlante Bluetooth Bose Revolve Resistente al agua','850.00','959.00','5','2019-01-01','8'),
('PARLANTES PC TERAWARE', 'Parlantes para pc Teraware usb 2.0 y 3.5 mm negro','15.10','21.90','15','2019-01-01','8'),
('MOUSE LENOVO', 'Mouse inalámbrico Lenovo 530 (gris platino)','45.00','59.00','15','2019-01-01','1');

-- --------------------------------------------------------
--
--INSERTANDO DATOS A LA TABLA TIPOCOMPROBANTE
--

insert into TipoComprobante(NombreTipoComprobante)
values
('BOLETA'),
('FACTURA');
				