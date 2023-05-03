
-- Tabla DUAL (no tiene columnas ni registros) para realizar pruebas. Es necesaria en algunas bases de datos. En el caso de H2 no se requiere....

SELECT SUBSTRING('ABCDEEFG', 2, 5) AS PRUEBA_SUBSTRING FROM DUAL;

-- Funciones con cadenas de texto

SELECT SUBSTRING('ABCDEEFG', 2, 5) AS PRUEBA_SUBSTRING;
SELECT TRIM('              TEXTO               ')  AS PRUEBA_TRIM;

-- Forma correcta de convertir. 

SELECT convert('-128', TINYINT)
SELECT convert(23, VARCHAR(20))

-- Malas practicas

SELECT '23' * 1                                               
SELECT 23 || ''                                     

-- Importante y vital el uso de COALESCE para convertir nulos en 'otras cosas'

SELECT  UPPER(APELLIDO1 || COALESCE(' ' || APELLIDO2 , '') || ', ' || NOMBRE), *  FROM PERSONAS;

-- Para conocer los distintos valores que se almacenan en una columna...

SELECT DISTINCT GENDER FROM PERSONAS;

-- Vamos a transformar el valor de una columna (GENDER)

SELECT 	GENDER, 
       	NOMBRE,                                      
       	CASE GENDER
        	WHEN IS NULL    THEN 0
            WHEN 'Male'     THEN 1
            WHEN 'Female'   THEN 2
            WHEN 'Bigender' THEN 3       
        END AS GENDER_CODE
FROM PERSONAS

-- Filtros con WHERE

SELECT * FROM PERSONAS WHERE SALARIO > 8000
SELECT * FROM PERSONAS WHERE NOMBRE = 'Alvin'
SELECT * FROM PERSONAS WHERE UPPER(NOMBRE) = 'DIETER'

-- Queremos un listado de personas cuyo nombre empieze por... acabe en... contenga tal cosa, 

-- Comodín % equivale a "cualquier cosa"
-- Comodín _ equivale a "cualquier caracter"

SELECT * FROM PERSONAS WHERE NOMBRE LIKE 'D%';
SELECT * FROM PERSONAS WHERE NOMBRE LIKE '%r';
SELECT * FROM PERSONAS WHERE NOMBRE LIKE '%a%';

-- listado de personas cuyo nombre contenga una 'a' en la tercera posición

SELECT * FROM PERSONAS WHERE NOMBRE LIKE '__a%'

-- Obtención del salario medio

SELECT AVG(SALARIO) FROM PERSONAS

SELECT * FROM PERSONAS WHERE SALARIO >= SELECT AVG(SALARIO) FROM PERSONAS

SELECT * FROM PERSONAS WHERE APELLIDO1 = APELLIDO2

SELECT 	 APELLIDO1,
         APELLIDO2,
         LENGTH(APELLIDO1) AS NUMERO_CARACTERES
FROM     PERSONAS 
WHERE 	 LENGTH(APELLIDO1) = LENGTH(APELLIDO2)
ORDER BY LENGTH(APELLIDO1) DESC

-- Filtro IN (para evitar GENDER = 'A' OR GENDER = 'B' OR GENDER = 'C')

SELECT  * 
FROM     PERSONAS
WHERE  GENDER IN ('Female', 'Male', 'Bigender');     
             
-- Filtro BETWEEN (para evitar SALARIO >= 1000 AND SALARIO <= 5000)

SELECT SALARIO
FROM PERSONAS 
WHERE SALARIO BETWEEN 4431.63 AND 5000.00
ORDER BY SALARIO

-- Filtro IS NULL (tmbién se puede preguntar por los que no son null: IS NOT NULL)

SELECT * FROM PERSONAS
WHERE APELLIDO2 IS NULL

-- Group BY (GENDER es una columna interesante para agrupas los datos y extraer conclusiones)

SELECT  GENDER,
        COUNT(*)     AS NUMERO_PERSONAS,
        MAX(SALARIO) AS SALARIO_MAXIMO,
        MIN(SALARIO) AS SALARIO_MINIMO,
        AVG(SALARIO) AS SALARIO_MEDIO
FROM    PERSONAS
GROUP BY GENDER ORDER BY GENDER

-- Otro ejemplo de Group BY en el que agrupamos por un campo calculado

SELECT   LEFT(APELLIDO1, 1) AS INICIAL_APELLIDO1,
         COUNT(*)           AS NUMERO_PERSONAS,
         MAX(SALARIO)       AS SALARIO_MAXIMO,
         MIN(SALARIO)       AS SALARIO_MINIMO,
         AVG(SALARIO)       AS SALARIO_MEDIO
FROM     PERSONAS
GROUP BY INICIAL_APELLIDO1
ORDER BY NUMERO_PERSONAS

-- Obtención de datos estadísticos generales

SELECT  COUNT(*)     AS NUMERO_PERSONAS_TOTAL,
        MAX(SALARIO) AS SALARIO_MAXIMO,
        MIN(SALARIO) AS SALARIO_MINIMO,
        AVG(SALARIO) AS SALARIO_MEDIO
FROM PERSONAS

-- Inserción de datos (Siempre haremos referencia a las columnas!!!)

NSERT INTO PERSONAS (ID, NOMBRE, APELLIDO1, APELLIDO2, GENDER, IP, EMAIL, SALARIO) VALUES
(30014, 'NOMBRE_C', 'APELLIDO1_C', 'APELLIDO2_C', 'Female', '0.0.0.0', 'emaila@gmail.com', 5000.00);

-- Eliminación de datos (DANGER!!! Ojo con no olvidarnos el WHERE o escribirlo mal...)

DELETE FROM PERSONAS 
WHERE ID = 13;

-- Actualización de datos (DANGER!!! Ojo con no olvidarnos el WHERE o escribirlo mal...)

UPDATE PERSONAS
SET nombre = UPPER(nombre),
    apellido1 = UPPER(apellido1)
WHERE email IS NULL;

-- Creación de vistas

CREATE VIEW NOMBRE_DE_LA_VISTA AS 

SELECT  COUNT(*)     AS NUMERO_PERSONAS_TOTAL,
        MAX(SALARIO) AS SALARIO_MAXIMO,
        MIN(SALARIO) AS SALARIO_MINIMO,
        AVG(SALARIO) AS SALARIO_MEDIO
FROM PERSONAS

/*
SELECT P.CODIGO, 
               P.NOMBRE, 
               P.PRECIO, 
               P.CODIGO_CATEGORIA ,
               C.CODIGO,
               C.NOMBRE
*/
-- Con un "simple" JOIN buscamos la coincidencia exacta
-- FROM PRODUCTOS P JOIN CATEGORIAS C ON P.CODIGO_CATEGORIA = C.CODIGO

-- Con un LEFT JOIN aseguramos la presencia de todos los registros de la tabla de la izquierda.
-- FROM PRODUCTOS P LEFT JOIN CATEGORIAS C ON P.CODIGO_CATEGORIA = C.CODIGO

-- Con un RIGHT JOIN aseguramos la presencia de todos los registros de la tabla de la derecha.
-- FROM PRODUCTOS P RIGHT JOIN CATEGORIAS C ON P.CODIGO_CATEGORIA = C.CODIGO ORDER BY P.CODIGO

CREATE VIEW RESUMEN_VENTAS AS

SELECT P.CODIGO,
               P.FECHA_HORA,
               P.ESTADO,
               C.NOMBRE || ' ' || C.APELLIDO1 || ' ' || C.APELLIDO2 AS NOMBRE_COMPLETO_CAMARERO,
               LP.CODIGO_PRODUCTO,
               PR.NOMBRE,
               PR.PRECIO                                                                  AS PRECIO_TARIFA,
               LP.CANTIDAD, 
               LP.PRECIO                                                                   AS PRECIO_VENTA,
               LP.CANTIDAD * LP.PRECIO AS TOTAL_LINEA
FROM PEDIDOS P JOIN CAMAREROS C ON P.DNI_CAMARERO = C.DNI JOIN LINEAS_PEDIDO LP ON (P.CODIGO = LP.CODIGO_PEDIDO)
            JOIN PRODUCTOS PR ON (LP.CODIGO_PRODUCTO = PR.CODIGO)
-- WHERE LP.PRECIO <>  PR.PRECIO


// ************************************************************************************
// ************************************************************************************

-- Consulta con subconsulta...

-- Preguntamos por los productos de categoría 9 (bocadillo) cuyo precio es mayor al precio de la media (de la categoría

SELECT P.CODIGO, 
               P.NOMBRE,
               P.PRECIO 
FROM PRODUCTOS AS P
WHERE P.CODIGO_CATEGORIA = 9
     AND  P.PRECIO > (SELECT AVG(P.PRECIO) FROM PRODUCTOS P  WHERE P.CODIGO_CATEGORIA = 9)

// ************************************************************************************
// ************************************************************************************

- Listado de productos cuya descripción. contenga "delicios" (CASE INSENSITIVE)

SELECT P.CODIGO,
               P.NOMBRE,
               P.DESCRIPCION
FROM    PRODUCTOS P
WHERE UPPER(P.DESCRIPCION) LIKE '%DELICIOS%'

-- Listado de productos (columnas codigo, nombre, precio y precio_incrementado) El precio_incrementado es el precio del producto + 10%


SELECT CODIGO,
               NOMBRE,
               PRECIO,
               ROUND(PRECIO + (PRECIO * 0.1), 2) AS PRECIO_INCREMENTADO
FROM    PRODUCTOS;

-- Listado de productos que no se han vendido...


SELECT P.CODIGO,
               P.NOMBRE
FROM    PRODUCTOS P 
WHERE P.CODIGO NOT IN (SELECT LP.CODIGO_PRODUCTO FROM LINEAS_PEDIDO LP)

-- Quiero rebajar un 50% el precio de todos aquellos productos que estén descatalogados

-- SELECT * FROM PRODUCTOS WHERE DESCATALOGADO = TRUE;

/*
UPDATE PRODUCTOS
SET PRECIO = PRECIO - (PRECIO * 0.5)
WHERE DESCATALOGADO = TRUE;
*/

-- Número de pedidos por camarero

-- Tabla "punto de partida" para resolver la query
/*
SELECT C.DNI                                                                                              AS DNI_CAMARERO, 
               UPPER(C.APELLIDO1 || ' '  || C.APELLIDO2 || ', ' || C.NOMBRE) AS CAMARERO,
               P.CODIGO                                                                                      AS CODIGO_PEDIDO
FROM CAMAREROS C LEFT JOIN PEDIDOS P ON C.DNI = P.DNI_CAMARERO
*/

-- Consulta definitiva...
/*
SELECT C.DNI                                                                                              AS DNI_CAMARERO, 
               UPPER(C.APELLIDO1 || ' '  || C.APELLIDO2 || ', ' || C.NOMBRE) AS CAMARERO,
               COUNT(P.CODIGO )                                                                      AS NUMERO_PEDIDOS
FROM CAMAREROS C LEFT JOIN PEDIDOS P ON P.DNI_CAMARERO = C.DNI
GROUP BY C.DNI
*/

-- Listado de camareros y el importe vendido por cada uno de ellos

-- PASO1
/*
SELECT P.CODIGO,
               LP.CODIGO_PEDIDO,
               LP.CANTIDAD * LP.PRECIO  AS TOTAL
FROM    LINEAS_PEDIDO LP JOIN PEDIDOS P ON (LP.CODIGO_PEDIDO = P.CODIGO)
*/

--PASO2
/*
SELECT P.CODIGO,
               C.DNI,
               C.NOMBRE,
               LP.CODIGO_PEDIDO,
               LP.CANTIDAD * LP.PRECIO AS TOTAL
FROM    LINEAS_PEDIDO LP JOIN PEDIDOS P ON (LP.CODIGO_PEDIDO = P.CODIGO) JOIN CAMAREROS C ON (C.DNI = P.DNI_CAMARERO)
*/

-- PASO3
SELECT 
              
               C.NOMBRE || ' ' || C.APELLIDO1 || ' ' || C.APELLIDO2 AS CAMARERO,
         
               ROUND(SUM(LP.CANTIDAD * LP.PRECIO), 2) AS TOTAL_FACTURADO

FROM    LINEAS_PEDIDO LP JOIN PEDIDOS P ON (LP.CODIGO_PEDIDO = P.CODIGO) JOIN CAMAREROS C ON (C.DNI = P.DNI_CAMARERO)
GROUP BY C.DNI


