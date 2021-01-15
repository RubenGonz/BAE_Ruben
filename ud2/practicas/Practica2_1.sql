CREATE DATABASE bd_centro;
USE bd_centro;

  CREATE TABLE PROFESORES (
    dni VARCHAR (9) PRIMARY KEY,
    nombre VARCHAR (10) NOT NULL UNIQUE,
    apellido1 VARCHAR (10) NOT NULL,
    apellido2 VARCHAR (10),
    direccion VARCHAR (30),
    salario DECIMAL (4,2) NOT NULL
  );

  CREATE TABLE CURSOS (
    nombre VARCHAR (10) NOT NULL UNIQUE,
    codigo INT (5) PRIMARY KEY,
    dni_profesor VARCHAR (9) NOT NULL,
    maximo_alumnos SMALLINT (3) NOT NULL,
    fecha_inicio DATE CHECK (fecha_inicio<fecha_fin),
    fecha_fin DATE,
    horas SMALLINT (3) NOT NULL,
      CONSTRAINT curs_dnip_FK FOREIGN KEY (dni_profesor) REFERENCES PROFESORES (dni)
  );

  CREATE TABLE ALUMNOS (
    dni VARCHAR (9) PRIMARY KEY NOT NULL,
    nombre VARCHAR (10) NOT NULL,
    apellido1 VARCHAR (10) NOT NULL,
    apellido2 VARCHAR (10),
    direccion VARCHAR (30),
    sexo BOOLEAN CHECK (sexo =’H’ OR sexo=’M’),
    fecha_nacimiento DATE,
    curso VARCHAR (10),
      CONSTRAINT alum_cur_FK FOREIGN KEY (curso) REFERENCES CURSOS (codigo)
  );                                     -- Termina la tabla PROFESORES
