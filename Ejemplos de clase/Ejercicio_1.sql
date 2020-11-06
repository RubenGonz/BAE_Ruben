DROP DATABASE IF EXISTS Transporte;
CREATE DATABASE IF NOT EXISTS Transporte;
USE Transporte;

CREATE TABLE Camionero (
  dni VARCHAR(9) PRIMARY KEY,
  nombre VARCHAR(15),
  telefono INT (9),
  direccion VARCHAR(30),
  salario DECIMAL(4,2),
  poblacion VARCHAR(20)
);

CREATE TABLE Paquetes (
  codigo_paquete INT AUTO_INCREMENT PRIMARY KEY,
  descripcion VARCHAR(200),
  destinatario VARCHAR(50) NOT NULL,
  direccion_destinatario VARCHAR(50) NOT NULL,
  dni_camionero VARCHAR(9),
     FOREIGN KEY(dni_camionero) REFERENCE Camionero(dni),
);

CREATE TABLE Camion (
 matricula VARCHAR(7) PRIMARY KEY,
 modelo VARCHAR(15),
 tipo VARCHAR(15),
 potencia DECIMAL(3,2),
 dni_camionero VARCHAR(9),
    FOREIGN KEY(dni_camionero) REFERENCE Camionero(dni),
);
