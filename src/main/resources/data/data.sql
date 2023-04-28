INSERT INTO CATEGORIAS (CODIGO, NOMBRE) VALUES
(1, 'LICOR'),
(2, 'REFRESCO'),
(3, 'CERVEZA'),
(4, 'TAPA');

INSERT INTO CAMAREROS (DNI, NOMBRE, APELLIDO1, APELLIDO2) VALUES
('38778233G', 'Pepín', 'Gálvez', 'Ridruejo'),
('28778214H', 'Carlota', 'Cifuentes', 'Merino'),
('34822899R', 'Honorio', 'Martín', 'Salvador');

INSERT INTO PRODUCTOS (CODIGO, NOMBRE, DESCRIPCION, FECHA_ALTA, PRECIO, DESCATALOGADO, CODIGO_CATEGORIA) VALUES
(100,'Patatas Bravas','Deliciosas patatas bravas de verdad', '2017-10-23', 6.0, FALSE, 4),
(101,'Patatas Bravas XXL','Deliciosas patatas bravas de verdad King Size', '2017-10-23', 9.0, FALSE, 4),
(102,'Cerveza Moritz 33cl','La cerveza oficial de Barcelona', '2017-10-23', 3.0, FALSE, 3),
(103,'Cerveza Estrella Galicia 33cl','Cerveza del Norte!', '2017-10-23', 3.0, FALSE, 3);

INSERT INTO PEDIDOS (CODIGO, FECHA_HORA, DNI_CAMARERO, ESTADO) VALUES
(1000, '2023-02-14', '34822899R', 'EN_PROCESO'),
(1001, '2023-03-11', '28778214H', 'CANCELADO');

INSERT INTO LINEAS_PEDIDO (CODIGO_PEDIDO, CODIGO_PRODUCTO, CANTIDAD, PRECIO) VALUES
(1000, 100, 2, 6.0),
(1000, 103, 8, 3.0),
(1001, 102, 1, 3.0);
