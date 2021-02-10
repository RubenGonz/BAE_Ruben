-- Empieza creando la base de datos.

-- Una vez creada la base de datos resuelve las modicaciones siguientes:

-- Añadir una columna nueva a la tabla PARTIDOS que indique la hora de comienzo del partido.

ALTER TABLE partidos ADD hora TIME NOT NULL;

-- Cambiar el nombre de la columna ano_fundacion de la tabla EQUIPOS por fundacion.

ALTER TABLE equipos change ano_fundacion fundacion DATE;

--Añadir una columna a la tabla EQUIPOS que almacene el anagrama de dicho equipo.

ALTER TABLE equipos ADD iniciales VARCHAR(3);

-- Fijar para todas las tablas el tipo de almacenamiento INNODB así como un charset de latin1 y valor collation latin1_spanish_c1



--Renombrar la tabla GOLES a RESULTADOS.

ALTER TABLE goles rename resultados;