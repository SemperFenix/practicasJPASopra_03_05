INSERT INTO CATEGORIAS (CODIGO, NOMBRE) VALUES
(1, 'LICOR'),
(2, 'REFRESCO'),
(3, 'CERVEZA'),
(4, 'TAPA'),
(5, 'COMIDA'),
(6, 'POSTRE'),
(7, 'AGUA'),
(8, 'INFUSION'),
(9, 'BOCADILLO'),
(10, 'CAFE'),
(11, 'BOLLERIA'),
(12, 'ZUMO');

INSERT INTO CAMAREROS (DNI, NOMBRE, APELLIDO1, APELLIDO2) VALUES
('38778233G', 'Pepín', 'Gálvez', 'Ridruejo'),
('28778214H', 'Carlota', 'Cifuentes', 'Merino'),
('34822899R', 'Honorio', 'Martín', 'Salvador'),
('34989911R', 'Anna', 'Vilchez', 'Losada');

INSERT INTO CLIENTES(DNI, 
                     NOMBRE,
                     APELLIDO1,
                     APELLIDO2,
                     DIRECCION,
                     POBLACION,
                     CODIGO_POSTAL,
                     PROVINCIA,
                     PAIS,
                     TELEFONO,
                     MOVIL,
                     EMAIL) VALUES
('44981287R', 'José Ramón', 'Pérez', 'Badejo', 'Avenida de los Pinos, 24 2-B', 'Badalona', '08023', 'Barcelona', 'España', '+34 6509087', null, 'jrperez23@hotmail.com'),
('24276535S', 'Ana Paula', 'Bermejo', 'Arimón', 'c/ Pez Volador, 34', 'Madrid', '78523', 'Madrid', 'España', '+34 912344334', '+34 650983466', 'infober@gmail.com');

INSERT INTO PRODUCTOS_PORTUGAL (CODIGO, NOMBRE, DESCRIPCION, FECHA_ALTA, PRECIO, DESCATALOGADO, CODIGO_CATEGORIA) VALUES
(900,'Pastéis de Belém', 'Deliciosa massa folhada e creme.', '2017-10-29', 2.0, FALSE, 11);

INSERT INTO PRODUCTOS (CODIGO, NOMBRE, DESCRIPCION, FECHA_ALTA, PRECIO, DESCATALOGADO, CODIGO_CATEGORIA) VALUES
(100,'Patatas Bravas', 'Deliciosas patatas bravas de verdad', '2017-10-21', 6.0, FALSE, 4),
(101,'Patatas Bravas XXL', 'Deliciosas patatas bravas de verdad King Size', '2017-10-23', 9.0, FALSE, 4),
(102,'Cerveza Moritz 33cl', 'La cerveza oficial de Barcelona', '2017-10-21', 3.0, FALSE, 3),
(103,'Cerveza Estrella Galicia 33cl', 'Cerveza del Norte!', '2017-10-21', 3.0, FALSE, 3),
(104,'Bocadillo de queso', null, '2017-10-25', 6.7, FALSE, 9),
(105,'Bocadillo de lomo com queso', 'Delicioso bocadillo caliente de pepito de lomo', '2017-10-16', 8.5, FALSE, 9),
(106,'Bocadillo de atún con tomate', null, '2017-10-25', 6.7, FALSE, 9),
(107,'Bocadillo de atún en escabeche con olivas', 'Bocadillo especial de la casa.', '2017-10-25', 7.0, FALSE, 9),
(108,'Biquini', 'Bocadillo sandwich caliente de jamón con queso', '2017-10-25', 7.7, FALSE, 9),
(109,'Menorquín', 'Bocadillo sandwich caliente de sobrasada y queso', '2017-10-25', 6.7, FALSE, 9),
(110,'Bocadillo serrano', 'Bocadillo de jamón se jabugo de la mejor calidad', '2017-10-25', 8.0, FALSE, 9),
(111,'Bocadillo salchichas con pimiento', 'Bocadillo caliente de salchichas con pimientos', '2017-10-22', 7.0, FALSE, 9),
(112,'Bocadillo calamares', 'Delicioso bocadillo caliente de calamares con mayonesa', '2017-10-14', 6.5, FALSE, 9),
(113,'Bocadillo de chorizo ibérico', 'Bocadillo de chorizo ibéroco de la mejor calidad', '2017-10-14', 6.9, FALSE, 9),
(114,'Bocadillo serranito', 'Bocadillo caliente de lomo con jamon serrano y pimientos verdes', '2017-10-12', 9.9, FALSE, 9),
(115,'Té verde', 'Té verde suave', '2017-10-25', 2.5, FALSE, 8),
(116,'Té rojo', 'Té rojo de gran aroma', '2017-10-25', 2.5, FALSE, 8),
(117,'Té blanco', 'Té blanco de gran aroma y fuerza', '2017-10-26', 2.5, FALSE, 8),
(118,'Manzanilla', null, '2017-10-25', 2.5, FALSE, 8),
(119,'Poleo menta', 'Poleo menta con el mejor equilbrio y aroma', '2017-10-25', 2.5, FALSE, 8),
(120,'CocaCola 33cl', 'Lata de CocaCola 33cl', '2017-10-25', 1.7, FALSE, 2),
(121,'CocaCola Zero 33cl', 'Lata de CocaCola Zero 33cl', '2017-10-26', 1.7, FALSE, 2),
(122,'Fanta Naranja 33cl', 'Lata de Fanta de Naranja de 33cl', '2017-10-25', 1.7, FALSE, 2),
(123,'Fanta Naranja Zero 33cl', 'Lata de Fanta de Naranja Zero 33cl', '2017-10-25', 1.7, FALSE, 2),
(124,'Fanta Limón 33cl', 'Lata de Fanta de Limón 33cl', '2017-10-25', 1.7, FALSE, 2),
(125,'Fanta Limón Zero 33cl', 'Lata de Fanta de Limón Zero 33cl', '2017-10-26', 1.7, FALSE, 2),
(126,'Sprite 33cl', 'Lata de Sprite 33cl', '2017-10-25', 1.7, FALSE, 2),
(127,'Aquarius 33cl', 'Lata de Aquarius 33cl', '2017-10-25', 1.9, FALSE, 2),
(128,'Tónica Sweepes 33cl', 'Lata de Tónica Sweepes 33cl', '2017-10-25', 1.7, FALSE, 2),
(129,'Botellín Tónica Sweepes 33cl', 'Botellín de Tónica Sweepes 33cl', '2017-10-11', 1.7, FALSE, 2),
(130,'Copa de Anís el Mono', 'Copita de Anís el Mono', '2017-10-20', 3.8, FALSE, 1),
(131,'Copa de Brandy Torres 5', 'Copita de Brandy Torres 5', '2017-10-21', 3.8, FALSE, 1),
(132,'Copa de Brandy Torres 10', 'Copita de Brandy Torrres 10', '2017-10-24', 4.5, FALSE, 1),
(133,'Chupito de Ballantines', 'Chupito de Ballantines', '2017-10-23', 3.8, FALSE, 1),
(134,'Copa de Ballantines con hielo', 'Copa de Ballantines con hielo', '2017-10-25', 4.9, FALSE, 1),
(135,'Cubalibre de Baccardi', 'Cubalibre de Ron Baccardi', '2017-10-23', 4.7, FALSE, 1),
(136,'Gaseosa Casera 33cl', 'Gaseosa Casera 33cl', '2017-10-25', 1.7, TRUE, 1),
(137,'Agua Viladrau 33cl', 'Botellín de Agua de Viladray 33cl', '2017-10-27', 1.2, FALSE, 7),
(138,'Agua Viladrau 1L', 'Botella de Agua de Viladray 1L', '2017-10-15', 2.3, FALSE, 7),
(139,'Agua de con gas Vichy 33cl', 'Botellín de 33cl de Agua de Vichy', '2017-10-27', 2.0, FALSE, 7),
(140,'Arroz a la Cubana', null, '2017-10-25', 6.0, FALSE, 5),
(141,'Canelones', 'Canelones de Ternera de la mejor calidad', '2017-10-25', 14.0, FALSE, 5),
(142,'Canelones de espinacas', 'Canelones de espinacas', '2017-10-25', 12.5, FALSE, 5),
(143,'Crema de Calabacín', null, '2017-10-25', 9.0, FALSE, 5),		
(144,'Lentejas Estofadas', 'Lentejas Estofadas con chorizo', '2017-10-25', 12.0, FALSE, 5),
(145,'Solomillo de ternera con patatas', 'Solomillo tierno de la mejor calidad', '2017-10-25', 17.5, FALSE, 5),
(146,'Rape a la Marinera', 'Rape a la Marinena especialidad de la casa', '2017-10-25', 18.2, FALSE, 5),
(147,'Pollo Jimmy Carter', 'Delicioso pollo al estilo tejano con salsa de cacahuetes', '2017-10-25', 12.0, FALSE, 5),
(148,'Pollo Kim Jong-un', 'Delicioso pollo al estilo coreano', '2017-10-25', 12.0, FALSE, 5),
(149,'Pollo Fidel', 'Delicioso pollo al estilo cubano con salsa timba.', '2017-10-25', 12.0, FALSE, 5),
(150,'Pollo Ranchero', 'Delicioso pollo asado con salsa molcajete al estilo mexicano.', '2017-10-25', 12.0, FALSE, 5),
(151,'Pollos Asados Hermanados', 'Deliciosas raciones de pollo para compartir en grupo. La especialidad de la casa.', '2017-10-25', 15.0, FALSE, 5),
(152,'Olivas rellenas', 'Olivas rellenas de anchoa extra', '2017-10-25', 2.6, FALSE, 4),
(153,'Pimientos del padrón', 'Pimientos del padrón fritos.', '2017-10-25', 3.8, FALSE, 4),
(154,'Mejillón Tigre (unidad)', 'Mejillón rebozado en nuestra cocina', '2017-10-25', 2.4, FALSE, 4),
(155,'Mejillones al vapor', 'Mejillones al vapor', '2017-10-25', 6.6, FALSE, 4),
(156,'Café Solo', 'Café Solo', '2017-10-25', 1.5, FALSE, 10),
(157,'Café Americano', 'Café Americano', '2017-10-16', 1.8, FALSE, 10),
(158,'Café Solo Descafeinado', 'Café Descafeinado', '2017-10-25', 1.5, FALSE, 10),
(159,'Café Cortado', 'Café Cortado', '2017-10-25', 2.0, FALSE, 10),
(160,'Café Cortado Descafeinado', 'Café Cortado Descafeinado', '2017-10-25', 2.0, FALSE, 10),
(161,'Café con Leche', 'Café con Leche', '2017-10-14', 2.5, FALSE, 10),
(162,'Café con Leche Descafeinado', 'Café con Leche Descafeinado', '2017-10-14', 2.5, FALSE, 10),
(163,'Croissant', 'El mejor Croissant de Barcelona!', '2017-10-12', 2.7, FALSE, 11),
(164,'Croissant de chocolate', 'El mejor Croissant de Barcelona!', '2017-10-11', 2.9, FALSE, 11),
(165,'Ensaimada', null, '2017-10-25', 2.7, FALSE, 11),
(166,'Donut', null, '2017-10-25', 2.7, FALSE, 11),
(167,'Madalena Integral', null, '2017-10-25', 2.7, FALSE, 11);

INSERT INTO PEDIDOS (CODIGO, FECHA_HORA, DNI_CAMARERO, ESTADO, DNI_CLIENTE) VALUES
(1000, '2023-04-17 09:01:42.069', '34822899R', 'SERVIDO', null),
(1001, '2023-04-17 09:05:13.012', '28778214H', 'SERVIDO', null),
(1002, '2023-04-17 09:12:11.134', '28778214H', 'SERVIDO', null),
(1003, '2023-04-17 09:22:02.234', '34822899R', 'CANCELADO', null),
(1004, '2023-04-17 09:23:17.123', '28778214H', 'SERVIDO', null),
(1005, '2023-04-17 09:25:39.009', '34822899R', 'SERVIDO', null),
(1006, '2023-04-17 09:31:23.204', '34822899R', 'SERVIDO', null),
(1007, '2023-04-17 09:37:43.401', '28778214H', 'SERVIDO', '44981287R'),
(1008, '2023-04-17 09:42:54.403', '28778214H', 'SERVIDO', null),
(1009, '2023-04-17 09:48:33.500', '28778214H', 'SERVIDO', null),
(1010, '2023-04-17 09:51:19.030', '34822899R', 'EN_PROCESO', null),
(1011, '2023-04-17 09:58:13.509', '28778214H', 'SERVIDO', null),
(1012, '2023-04-17 10:00:07.124', '34822899R', 'PENDIENTE_ENTREGA', '44981287R'),
(1013, '2023-04-17 10:06:10.222', '34822899R', 'PENDIENTE_ENTREGA', null),
(1014, '2023-04-17 10:14:51.298', '38778233G', 'NUEVO', null);

INSERT INTO LINEAS_PEDIDO (CODIGO_PEDIDO, CODIGO_PRODUCTO, CANTIDAD, PRECIO) VALUES
(1000, 100, 2, 6.0),
(1000, 103, 8, 3.0),
(1001, 102, 1, 3.0),
(1002, 137, 2, 1.2),
(1002, 108, 1, 7.7),
(1002, 115, 1, 2.5),
(1002, 120, 1, 1.7),
(1003, 159, 1, 2.0),
(1003, 137, 1, 1.2),
(1004, 108, 1, 7.7),
(1004, 103, 1, 3.0),
(1004, 105, 1, 8.5),
(1004, 137, 1, 1.2),
(1004, 156, 3, 1.5),
(1005, 156, 2, 1.5),
(1006, 156, 2, 1.5),
(1006, 158, 1, 1.5),
(1006, 120, 1, 1.7),
(1006, 104, 1, 6.7),
(1007, 156, 3, 1.5),
(1007, 158, 1, 1.5),
(1007, 115, 1, 2.5),
(1007, 110, 2, 8.0),
(1007, 139, 1, 2.0),
(1007, 121, 1, 1.7),
(1007, 111, 1, 7.0),
(1007, 103, 2, 3.0),
(1007, 161, 2, 2.5),
(1007, 162, 1, 2.5),
(1008, 159, 2, 2.0),
(1008, 163, 1, 2.6),
(1008, 137, 3, 1.2),
(1008, 109, 1, 6.7),
(1008, 161, 1, 2.5),
(1008, 117, 1, 2.5),
(1009, 166, 1, 2.7),
(1009, 157, 1, 1.8),
(1009, 162, 1, 2.5),
(1010, 107, 1, 7.0),
(1010, 120, 1, 1.7),
(1010, 156, 1, 1.5),
(1011, 167, 1, 2.7),
(1011, 161, 1, 2.5),
(1012, 159, 1, 2.0),
(1012, 161, 2, 2.5),
(1013, 159, 2, 2.0),
(1013, 164, 1, 2.9),
(1013, 157, 1, 1.8),
(1014, 108, 1, 7.7),
(1014, 103, 1, 3.0),
(1014, 166, 1, 2.7),
(1014, 156, 3, 1.5),
(1014, 102, 2, 2.5);
