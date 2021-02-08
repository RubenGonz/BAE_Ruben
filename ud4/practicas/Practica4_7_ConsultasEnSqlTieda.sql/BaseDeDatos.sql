-- Genera en este documento la base de datos, las tablas e inserta los datos correspondientes. Recuerda que debes configurar este archivo para que cambie a la base de datos una vez cargada.

DROP DATABASE IF EXISTS;
CREATE DATABASE tienda;
USE tienda

CREATE TABLE fabricantes
    (Clave_fabricante INT NOT NULL,
    Nombre VARCHAR(30), PRIMARY KEY (Clave_fabricante));

CREATE TABLE articulos
    (Clave_articulo INT NOT NULL,
    Nombre VARCHAR(30),
    Precio INT, 
    Clave_fabricante INT,
    PRIMARY KEY (Clave_articulo),
    foreign key(Clave_fabricante) REFERENCES fabricantes (Clave_fabricante));

INSERT INTO fabricantes VALUES (1, 'Kingston');
INSERT INTO fabricantes VALUES (2, 'Adata');
INSERT INTO fabricantes VALUES (3, 'Logitech');
INSERT INTO fabricantes VALUES (4, 'Lexar');
INSERT INTO fabricantes VALUES (5, 'Seagate');

INSERT INTO articulos VALUES (1, 'Teclado',100,3);
INSERT INTO articulos VALUES (2, 'Disco duro 300Gb',500,5);
INSERT INTO articulos VALUES (3, 'Mouse',80,3);
INSERT INTO articulos VALUES (4, 'Memoria USB',140,4);
INSERT INTO articulos VALUES (5, 'Memoria RAM',290,1);
INSERT INTO articulos VALUES (6, 'Disco duro extraible 250Gb',650,5);
INSERT INTO articulos VALUES (7, 'Memoria USB',279,1);
INSERT INTO articulos VALUES (8, 'DVD Rom',450,2);
INSERT INTO articulos VALUES (9, 'CD Rom',200,2);
INSERT INTO articulos VALUES (10, 'Tarjeta de red', 180 ,3);