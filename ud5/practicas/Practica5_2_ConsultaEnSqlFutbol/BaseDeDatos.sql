CREATE DATABASE futbol;
USE futbol;

CREATE TABLE equipos (
    id_equipo INT(2),
    nombre VARCHAR(50),
    estadio VARCHAR(50),
    aforo INT(6),
    ano_fundacion INT(4),
    ciudad VARCHAR(50),
    PRIMARY KEY (id_equipo)
);

CREATE TABLE jugadores (
    id_jugador INT(3),
    nombre VARCHAR(50),
    feche_nac DATE,
    demarcacion VARCHAR(50),
    internacional INT(3),
    id_equipo INT(2),
    PRIMARY KEY (id_jugador),
    FOREIGN KEY (id_equipo) REFERENCES equipos (id_equipo)
);

CREATE TABLE partidos (
    id_equipo_casa INT(2), 
    id_equipo_fuera INT(2), 
    fecha DATE, 
    goles_casa INT(2), 
    goles_fuera INT(2), 
    observaciones VARCHAR(200),
    PRIMARY KEY (id_equipo_casa, id_equipo_fuera, fecha)
);

CREATE TABLE goles (
    id_equipo_casa INT(2), 
    id_equipo_fuera INT(2), 
    minuto INT(2),
    id_jugador INT(3),
    descripcion VARCHAR(200),
    PRIMARY KEY (id_equipo_casa, id_equipo_fuera, minuto, id_jugador),
    FOREIGN KEY (id_equipo_casa, id_equipo_fuera) REFERENCES partidos (id_equipo_casa, id_equipo_fuera),
    FOREIGN KEY (id_jugador) REFERENCES jugadores (id_jugador)
);