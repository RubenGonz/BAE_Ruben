ALTER TABLE ALUMNOS
  ADD edad SMALLINT(2);

ALTER TABLE ALUMNOS
  CHECK (edad BETWEEN 14 AND 65);

ALTER TABLE CURSOS
  CHECK (maximo_alumnos>15),
  CHECK (horas IN (30, 40, 60));

ALTER TABLE ALUMNOS
  DROP CONSTRAINT sexo;

ALTER TABLE PROFESORES
  DROP COLUMN direccion,
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (nombre, apellido1),
  RENAME TUTORES;

DROP TABLE ALUMNOS;

CREATE USER RubenGonz@localhost IDENTIFIED BY BD02;
GRANT ALL PRIVILEGES ON bd_centro.CURSOS TO RubenGonz@localhost;
FLUSH PRIVILEGES;
  REVOKE ALTER TABLE, UPDATE TABLE ON bd_centro.CURS FROM RubenGonz@localhost;

/* Hay un comando que no me funciono que fue el de revoque y no encontre la solucion
 * de como hacer que me funcione en el PHPMyAdmin.
 */