-- Active: 1723851176864@@127.0.0.1@3306@bbdd_restaurante
DELETE FROM PRODUCTO;
DELETE FROM ORDEN;
DELETE FROM MESERO;
DELETE FROM TIPO_CLIENTE;
DELETE FROM TIPO_PRODUCTO;
DELETE FROM CATEGORIA_PRODUCTO;
DELETE FROM Orden_Producto;

-- Reinicia el ID autoincrementable en 0 para que no hayan errores con el número de ID
ALTER TABLE PRODUCTO AUTO_INCREMENT = 0;
ALTER TABLE ORDEN AUTO_INCREMENT = 0;
ALTER TABLE MESERO AUTO_INCREMENT = 0;
ALTER TABLE TIPO_CLIENTE AUTO_INCREMENT = 0;
ALTER TABLE TIPO_PRODUCTO AUTO_INCREMENT = 0;
ALTER TABLE CATEGORIA_PRODUCTO AUTO_INCREMENT = 0;
ALTER TABLE Orden_Producto AUTO_INCREMENT = 0;


-- Carga masiva de tabla Mesero
LOAD DATA INFILE 'Carga Masiva/Mesero.csv'
REPLACE INTO TABLE MESERO
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Nombre_mesero);


-- Carga masiva de tabla Tipo_Cliente
LOAD DATA INFILE 'Carga Masiva/Tipo_Cliente.csv'
REPLACE INTO TABLE TIPO_CLIENTE 
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(tipo_client);


-- Carga masiva de tabla Tipo_Producto
LOAD DATA INFILE 'Carga Masiva/Tipo_Producto.csv'
REPLACE INTO TABLE TIPO_PRODUCTO 
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Nombre_tiproduct);


-- Carga masiva de tabla Categoria_Producto
LOAD DATA INFILE 'Carga Masiva/Categoria_Producto.csv'
REPLACE INTO TABLE CATEGORIA_PRODUCTO 
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Nombre_catproduct);


-- Carga masiva de tabla Producto
LOAD DATA INFILE 'Carga Masiva/Producto.csv'
REPLACE INTO TABLE PRODUCTO
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Nombre_product, Costo_product, Precio_product, Id_catproduct, Id_tiproduct);


-- Carga masiva de tabla Orden
LOAD DATA INFILE 'Carga Masiva/Orden.csv'
REPLACE INTO TABLE ORDEN
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Fecha_orden, Mesa_orden, Propina_orden, Id_mesero, Id_tipclient);


-- Carga masiva de tabla Orden_Producto
LOAD DATA INFILE 'Carga Masiva/Orden_producto.csv'
REPLACE INTO TABLE orden_Producto
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Id_orden, Id_product);



