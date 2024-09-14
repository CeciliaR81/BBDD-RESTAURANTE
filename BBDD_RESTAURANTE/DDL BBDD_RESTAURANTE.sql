-- Active: 1723851176864@@127.0.0.1@3306
CREATE DATABASE BBDD_RESTAURANTE
    DEFAULT CHARACTER SET = 'utf8mb4';
     use BBDD_RESTAURANTE;


    create TABLE MESERO (
        Id_mesero INT(10) PRIMARY key AUTO_INCREMENT,
        Nombre_mesero VARCHAR(20)
    );
    CREATE TABLE TIPO_CLIENTE (
    Id_tipclient INT(10) PRIMARY KEY AUTO_INCREMENT,
    Tipo_client VARCHAR(20)
    );
    CREATE TABLE TIPO_PRODUCTO (
    Id_tiproduct INT(10) PRIMARY KEY AUTO_INCREMENT,
    Nombre_tiproduct VARCHAR(20)
);
CREATE TABLE CATEGORIA_PRODUCTO (
    Id_catproduct INT(10) PRIMARY KEY AUTO_INCREMENT,
    Nombre_catproduct VARCHAR(20)
);
CREATE TABLE PRODUCTO (
    Id_product INT(10) PRIMARY KEY AUTO_INCREMENT,
    Nombre_product VARCHAR(20),
    Costo_product DECIMAL(5, 2),
    Precio_product DECIMAL(5, 2),
    Id_catproduct INT(10),
    Id_tiproduct INT(10),
    FOREIGN KEY (Id_catproduct) REFERENCES CATEGORIA_PRODUCTO (Id_catproduct),
    FOREIGN KEY (Id_tiproduct) REFERENCES TIPO_PRODUCTO (Id_tiproduct)
);


CREATE TABLE ORDEN (
    Id_orden INT(10) PRIMARY KEY AUTO_INCREMENT,
    fecha_orden DATETIME,
    Mesa_orden VARCHAR(20),
    Propina_orden DECIMAL(5, 2),
    Id_mesero INT(10),
    Id_tipclient INT(10),
    FOREIGN KEY (Id_mesero) REFERENCES MESERO (Id_mesero),
    FOREIGN KEY (Id_tipclient) REFERENCES TIPO_CLIENTE (Id_tipclient)
);
CREATE TABLE Orden_Producto (
    Id_ordproduct INT(10) PRIMARY KEY AUTO_INCREMENT,
    Id_orden INT(10),
    Id_product INT(10),
    FOREIGN KEY (Id_orden) REFERENCES ORDEN (Id_orden),
    FOREIGN KEY (Id_product) REFERENCES PRODUCTO (Id_product)
);


