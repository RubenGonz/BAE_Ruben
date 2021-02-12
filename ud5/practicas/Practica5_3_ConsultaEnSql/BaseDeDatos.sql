DROP DATABASE IF EXISTS ventas;
CREATE DATABASE ventas;
USE ventas;

ALTER DATABASE ventas CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

CREATE TABLE comercial (
    id INT(10),
    nombre VARCHAR(100),
    apellido1 VARCHAR(100),
    apellido2 VARCHAR(100),
    ciudad VARCHAR(100),
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

INSERT INTO comercial VALUES (1, "Daniel", "Sáez", "Vega", 0.15);
INSERT INTO comercial VALUES (2, "Juan", "Gómez", "López", 0.13);
INSERT INTO comercial VALUES (3, "Diego", "Flores", "Salas", 0.11);
INSERT INTO comercial VALUES (4, "Marta", "Herrera", "Gil", 0.14);
INSERT INTO comercial VALUES (5, "Antonio", "Carretero", "Ortega", 0.12);
INSERT INTO comercial VALUES (6, "Manuel", "Domínguez", "Hernández", 0.13);
INSERT INTO comercial VALUES (7, "Antonio", "Vega", "Hernández", 0.11);
INSERT INTO comercial VALUES (8, "Alfredo", "Ruiz", "Flores", 0.05);

INSERT INTO cliente VALUES(1, "Aarón", "Rivero", "Gómez", "Almeria", 100);
INSERT INTO cliente VALUES(2, "Adela", "Salas", "Díaz", "Granada", 200);
INSERT INTO cliente VALUES(3, "Adolfo", "Rubio", "Flores", "Sevilla", NULL);
INSERT INTO cliente VALUES(4, "Adrían", "Suarez", NULL, "Jaén", 300);
INSERT INTO cliente VALUES(5, "Marcos", "Loyola", "Méndez", "Almería", 200);
INSERT INTO cliente VALUES(6, "María", "Santana", "Moreno", "Cádiz", 100);
INSERT INTO cliente VALUES(7, "Pilar", "Ruíz", NULL, "Sevilla", 300);
INSERT INTO cliente VALUES(8, "Pepe", "Ruíz", "Santana", "Huelva", 200);
INSERT INTO cliente VALUES(9, "Guillermo", "López", "Gómez", "Granada", 225);
INSERT INTO cliente VALUES(10, "Daniel", "Santana", "Loyola", "Sevilla", 125);

INSERT INTO pedido VALUES (1, 150.5, "2017-10-05", 5, 2);
INSERT INTO pedido VALUES (2, 270.65, "2016-09-10", 1, 5);
INSERT INTO pedido VALUES (3, 65.26, "2017-10-05", 2, 1);
INSERT INTO pedido VALUES (4, 110.5, "2016-08-17", 8, 3);
INSERT INTO pedido VALUES (5, 948.5, "2017-09-10", 5, 2);
INSERT INTO pedido VALUES (6, 2400.6, "2016-07-27", 7, 1);
INSERT INTO pedido VALUES (7, 5760, "2015-09-10", 2, 1);
INSERT INTO pedido VALUES (8, 1983.43, "2017-10-10", 4, 6);
INSERT INTO pedido VALUES (9, 2480.4, "2016-10-10", 4, 6);
INSERT INTO pedido VALUES (10, 250.45, "2015-06-27", 8, 3);
INSERT INTO pedido VALUES (11, 75.29, "2016-08-17", 3, 7);
INSERT INTO pedido VALUES (12, 3045, "2017-04-25", 2, 1);
INSERT INTO pedido VALUES (13, 545.75, "2019-01-25", 6, 1);
INSERT INTO pedido VALUES (14, 145.82, "2017-02-02", 6, 1);
INSERT INTO pedido VALUES (15, 370.85, "2019-03-11", 1, 5);
INSERT INTO pedido VALUES (16, 2389, "2019-03-11", 1, 5);