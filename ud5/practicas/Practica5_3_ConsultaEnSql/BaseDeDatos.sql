DROP DATABASE IF EXISTS ventas;
CREATE DATABASE ventas;
USE ventas;

ALTER DATABASE ventas CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

CREATE TABLE comercial (
    id INT(10),
    nombre VARCHAR(100),
    apellido1 VARCHAR(100),
    apellido2 VARCHAR(100),
    comision FLOAT,
    PRIMARY KEY (id)
);

CREATE TABLE cliente (
    id INT(10),
    nombre VARCHAR(100),
    apellido1 VARCHAR(100),
    apellido2 VARCHAR(100),
    ciudad VARCHAR(100),
    categoria INT(10),
    PRIMARY KEY (id)
);

CREATE TABLE pedido (
    id INT(10),
    cantidad DOUBLE,
    fecha DATE,
    id_cliente INT(10),
    id_comercial INT(10),
    PRIMARY KEY (id),
    FOREIGN KEY (id_cliente) REFERENCES comercial (id),
    FOREIGN KEY (id_comercial) REFERENCES cliente (id)
);