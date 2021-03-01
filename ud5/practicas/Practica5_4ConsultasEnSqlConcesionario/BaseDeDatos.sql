DROP DATABASE IF EXISTS concesionario;
CREATE DATABASE IF NOT EXISTS concesionario CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE concesionario;
CREATE TABLE operacion(
  cod_operacion INT(3) PRIMARY KEY,
  descripcion VARCHAR(100),
  horas INT CHECK (
    horas > 0
    AND horas <= 10
  )
);

CREATE TABLE material(
  cod_material INT(4) PRIMARY KEY,
  nombre VARCHAR(50),
  precio INT
);

CREATE TABLE coche(
  matricula VARCHAR(7) PRIMARY KEY,
  marca VARCHAR(20) NOT NULL,
  modelo VARCHAR(20) NOT NULL,
  color VARCHAR(20) CHECK (color IN ('ROJO', 'VERDE', 'AZUL')),
  pvp FLOAT CHECK (
    pvp BETWEEN 10000
    AND 40000
  )
);

CREATE TABLE cliente(
  cod_cliente INT(6) PRIMARY KEY,
  nif VARCHAR(9) UNIQUE,
  nombre VARCHAR(50),
  direccion VARCHAR(100),
  telefono INT(9),
  ciudad VARCHAR(20),
  matricula VARCHAR(7) NOT NULL,
  FOREIGN KEY (matricula) REFERENCES coche(matricula)
);

CREATE TABLE revision(
  cold_revision INT(7) PRIMARY KEY,
  fecha DATE,
  matricula VARCHAR(7) NOT NULL,
  FOREIGN KEY (matricula) REFERENCES coche(matricula)
);

CREATE TABLE consta(
  cold_revision INT(7),
  cod_operacion INT(3),
  FOREIGN KEY (cold_revision) REFERENCES revision(cold_revision),
  FOREIGN KEY (cod_operacion) REFERENCES operacion(cod_operacion),
  PRIMARY KEY (cold_revision, cod_operacion)
);

CREATE TABLE necesita(
  cantidad INT DEFAULT 1,
  cod_operacion INT(3),
  cod_material INT(4),
  FOREIGN KEY (cod_operacion) REFERENCES operacion(cod_operacion),
  FOREIGN KEY (cod_material) REFERENCES material(cod_material),
  PRIMARY KEY (cod_operacion, cod_material)
);