-- Añadir una columna nueva a la tabla PARTIDOS que indique la hora de comienzo del partido.

ALTER TABLE partidos ADD hora TIME NOT NULL;

-- Cambiar el nombre de la columna ano_fundacion de la tabla EQUIPOS por fundacion.

ALTER TABLE equipos change ano_fundacion fundacion DATE;

--Añadir una columna a la tabla EQUIPOS que almacene el anagrama de dicho equipo.

ALTER TABLE equipos ADD iniciales VARCHAR(3);

-- Fijar para todas las tablas el tipo de almacenamiento INNODB así como un charset de latin1 y valor collation latin1_spanish_c1

ALTER TABLE equipos ENGINE = InnoDB;
ALTER TABLE jugadores ENGINE = InnoDB;
ALTER TABLE partidos ENGINE = InnoDB;
ALTER TABLE goles ENGINE = InnoDB;
ALTER DATABASE futbol CHARACTER SET = latin1 COLLATE = latin1_spanish_c1;

--Renombrar la tabla GOLES a RESULTADOS.

ALTER TABLE goles rename resultados;