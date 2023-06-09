CREATE TABLE CATEGORIAS(
	CODIGO BIGINT NOT NULL,
	NOMBRE VARCHAR(50) NOT NULL,
	PRIMARY KEY (CODIGO)
);

CREATE TABLE CAMAREROS(
	DNI VARCHAR(9) NOT NULL,
	NOMBRE VARCHAR(50) NOT NULL,
	APELLIDO1 VARCHAR(50) NOT NULL,
	APELLIDO2 VARCHAR(50),
	PRIMARY KEY (DNI)
);

CREATE TABLE CLIENTES(
	DNI VARCHAR(9) NOT NULL,
	NOMBRE VARCHAR(50) NOT NULL,
	APELLIDO1 VARCHAR(50) NOT NULL,
	APELLIDO2 VARCHAR(50),
	DIRECCION VARCHAR(100),
	POBLACION VARCHAR(100),
	CODIGO_POSTAL VARCHAR(10),
	PROVINCIA VARCHAR(100),
	PAIS VARCHAR(100),
	TELEFONO VARCHAR(20),
	MOVIL VARCHAR(20),
	EMAIL VARCHAR(200),
	PRIMARY KEY (DNI)
);

CREATE TABLE ESTABLECIMIENTOS (
	CODIGO BIGINT NOT NULL,
	NOMBRE_COMERCIAL VARCHAR(30) NOT NULL,
	EMAIL VARCHAR(200) NOT NULL,
	TELEFONO VARCHAR(12) NOT NULL,
	MOVIL VARCHAR(12) NOT NULL,
	DIRECCION VARCHAR(100),
	POBLACION VARCHAR(100),
	CODIGO_POSTAL VARCHAR(10),
	PROVINCIA VARCHAR(100),
	PAIS VARCHAR(100),
	FECHA_INAUGURACION DATE NOT NULL,
	FECHA_CIERRE DATE,
	HORARIO_APERTURA TIME NOT NULL,
	HORARIO_CIERRE TIME NOT NULL,
	PRIMARY KEY (CODIGO)
);

CREATE TABLE PRODUCTOS(
	CODIGO BIGINT NOT NULL,
	NOMBRE VARCHAR(50) NOT NULL,
	DESCRIPCION VARCHAR(200),
	PRECIO DOUBLE,
	DESCATALOGADO BOOLEAN,
	FECHA_ALTA DATE NOT NULL,
	CODIGO_CATEGORIA BIGINT,
	PRIMARY KEY (CODIGO),
	FOREIGN KEY (CODIGO_CATEGORIA) REFERENCES CATEGORIAS (CODIGO)
);

CREATE TABLE PRODUCTOS_PORTUGAL(
	CODIGO BIGINT NOT NULL,
	NOMBRE VARCHAR(50) NOT NULL,
	DESCRIPCION VARCHAR(200),
	PRECIO DOUBLE,
	DESCATALOGADO BOOLEAN,
	FECHA_ALTA DATE NOT NULL,
	CODIGO_CATEGORIA BIGINT,
	PRIMARY KEY (CODIGO),
	FOREIGN KEY (CODIGO_CATEGORIA) REFERENCES CATEGORIAS (CODIGO)
);

CREATE TABLE PEDIDOS(
	CODIGO BIGINT NOT NULL,
	FECHA_HORA TIMESTAMP NOT NULL,
	DNI_CAMARERO VARCHAR(9) NOT NULL,
	DNI_CLIENTE VARCHAR(9),
	ESTABLECIMIENTO BIGINT NOT NULL,
	ESTADO VARCHAR(20) NOT NULL,
	PRIMARY KEY (CODIGO),
	FOREIGN KEY (DNI_CAMARERO) REFERENCES CAMAREROS (DNI),
	FOREIGN KEY (DNI_CLIENTE) REFERENCES CLIENTES (DNI),
	FOREIGN KEY (ESTABLECIMIENTO) REFERENCES ESTABLECIMIENTOS (CODIGO)
);

CREATE TABLE LINEAS_PEDIDO(
	CODIGO_PEDIDO BIGINT NOT NULL,
	CODIGO_PRODUCTO BIGINT NOT NULL,
	CANTIDAD INTEGER NOT NULL,
	PRECIO DOUBLE NOT NULL,
	FOREIGN KEY (CODIGO_PEDIDO) REFERENCES PEDIDOS (CODIGO),
	FOREIGN KEY (CODIGO_PRODUCTO) REFERENCES PRODUCTOS (CODIGO)
);