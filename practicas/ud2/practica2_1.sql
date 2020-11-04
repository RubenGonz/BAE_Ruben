CREATE DATABASE bd_centro;                -- En este caso lo que hacemos es crear nuestra base de datos que se llamara bd_centro
USE bd_centro;                            -- Aqui se indica que se esta usando la base de datos llamada bd_centro
CREATE TABLE ALUMNOS (                    -- Aqui lo que hacemos es crear la tabla alumnos
  dni varchar(9) primary key,
  nombre varchar(15),
  apellido1 varchar(20),
  apellido2 varchar(20),
  direccion varchar (50),
  sexo boolean
  fecha_nacimiento ,
  curso int(5)
);                                        -- Termina la tabla ALUMNOS
CREATE TABLE CURSOS (                     -- Se crea la tabla CURSOS
  nombre,
  codigo,
  dni_profesor,
  maximo_alumnos,
  fecha_inicio,
  fecha_fin
  horas
);                                        -- Termina la tabla CURSOS
CREATE TABLE PROFESORES (                 -- Se crea la tabla PROFESORES
  dni varchar(9) primary key,
  nombre varchar(15),
  apellido1 varchar(20),
  apellido2 varchar(20),
  direccion varchar (50),
  salario money, not null,
);                                        -- Termina la tabla PROFESORES
