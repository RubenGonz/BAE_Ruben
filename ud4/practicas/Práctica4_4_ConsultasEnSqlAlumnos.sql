-- Se dispone de la tabla ALUMNOS con los datos de aquellos alumnos matriculados en un instituto. Realizar las siguientes consultas SQL:

-- 1. Muestra todos los datos de todos los alumnos.

SELECT * FROM alumnos;

-- 2. Muestra el nombre , localidad y fecha de nacimiento de todos los alumnos.

SELECT nombre, localidad, fecha_nac FROM alumnos;

-- 3. Muestra el nombre de todos los alumnos. En el resultado de la consulta, la columna “Nombre” debe aparecer con la etiqueta “Nombre y apellidos” (ALIAS DE COLUMNAS).

SELECT nombre AS 'nombre y apellidos' FROM alumnos;

-- 4. Obtén el nombre y el número de faltas multiplicado por 2 de todos los alumnos (COLUMNAS CALCULADAS). En el resultado de la consulta, la columna faltas debe aparecer con la etiqueta “Faltas de asistencia” (ALIAS DE COLUMNAS)

SELECT nombre, faltas*2 AS 'faltas de asistencia' FROM alumnos;

-- 5. Consulta los datos de los alumnos que son de Lorca.

SELECT * FROM alumnos WHERE localidad='lorca';

-- 6. Obtén los datos de los alumnos que son de Murcia o Alhama de Murcia.

SELECT * FROM alumnos WHERE localidad='murcia' OR localidad='alhama de murcia';

-- 7. Obtén los datos de los alumnos que son de Murcia y están en el primer curso de E.S.O.

SELECT * FROM alumnos WHERE localidad='murcia' AND curso='1' AND nivel='ESO';

-- 8. Muestra los alumnos que son de Lorca, están en segundo curso de Bachillerato y tienen más de 10 faltas.

SELECT * FROM alumnos WHERE localidad='lorca' AND curso='2' AND nivel='bachiller' AND faltas>10;

-- 9. Obtén los datos de aquellos alumnos que son de Murcia ordenados por nombre.

SELECT * FROM alumnos WHERE localidad='murcia' ORDER BY nombre;

-- 10. Obtén los datos de todos los alumnos ordenados por nivel, y dentro de cada nivel por curso.  

SELECT * FROM alumnos ORDER BY nivel, curso;

-- 11. Muestra los datos de aquellos alumnos que tengan más de 10 faltas en primer o segundo curso.

SELECT * FROM alumnos WHERE curso in('1','2') AND faltas>10;

-- 12. Muestra los datos de todos aquellos alumnos que tengan menos de 10 faltas en 3o o 4o curso y además sean de Murcia.

SELECT * FROM alumnos WHERE curso in('3','4') AND localidad='murcia' AND faltas<10;

-- 13. Obtén con una consulta todos los cursos que hay sin repeticiones (DISTINCT).

SELECT DISTINCT curso,nivel FROM alumnos;

-- 14. Obtén los datos de los alumnos que no tengan 10 faltas en 1o de E.S.O.

SELECT * FROM alumnos WHERE curso='1' AND nivel='eso' AND faltas!='10';

-- 15. Muestra los datos de aquellos alumnos cuyo nombre empiece por la letra 'B'.

SELECT * FROM alumnos WHERE nombre like 'b%';

-- 16. Con una consulta obtén los alumnos que son de Murcia y cuyo nombre termina con una letra 'O'.

SELECT * FROM alumnos WHERE localidad='murcia' and nombre like '%o';

-- 17. Muestra los datos de todos aquellos alumnos que están en 1o curso de E.S.O. Y tienen una letra 'U' en la segunda posición del nombre.

SELECT * FROM alumnos WHERE curso='1' and nivel='eso' and nombre like "_u%";

-- 18. Obtén los datos de los alumnos cuya columna “Faltas” es nula.

SELECT * FROM alumnos WHERE faltas is null;

-- 19. Muestra los datos de aquellos alumnos que tienen entre 10 y 20 faltas (BETWEEN). Ordena el resultado por nombre.

SELECT * FROM alumnos WHERE faltas between 10 and 20 order by nombre;

-- 20. Muestra los datos de los alumnos que tienen entre 10 y 20 faltas y además son de Murcia.

SELECT * FROM alumnos WHERE faltas between 10 and 20 and localidad='murcia';

-- 21. Muestra los datos de los alumnos que tienen entre 10 y 20 faltas, son de Murcia y están matriculados en 1o de E.S.O.

SELECT * FROM alumnos WHERE faltas between 10 and 20 and localidad='murcia' and curso='1' and nivel='eso';

-- 22. Con una consulta muestra los datos de los alumnos cuyas faltas sean menores que 10 y mayores que 20.

SELECT * FROM alumnos WHERE faltas<10 or faltas>20;

-- 23. Muestra los datos de los alumnos cuya fecha de nacimiento comprenda los años 1993 y 1994. Ordena el resultado por nombre.

SELECT * FROM alumnos WHERE fecha_nac between '1993-01-12' and '1994-12-31' order by nombre;

-- 24. Muestra los datos de los alumnos que sean de primer o segundo curso (no importa que sean de E.S.O. O Bachiller). Utiliza el operador IN.

SELECT * FROM alumnos WHERE curso in('1','2');

-- 25. Obtén los datos de aquellos alumnos que sean de tercer o cuarto curso y sean de Murcia. Utiliza el operador IN.

SELECT * FROM alumnos WHERE curso in('3','4') and localidad='murcia';

-- 26. Muestra los datos de los alumnos que no sean de E.S.O, ordenados por curso y por nombre descendentemente. Utiliza el operador IN.

SELECT * FROM alumnos WHERE not nivel='eso'  order by curso, nombre desc;

-- 27. Muestra los datos de los alumnos que sean de primer o segundo curso y no sean de Bachiller. Ordena el resultado por nombre. 

SELECT * FROM alumnos WHERE not nivel='bachiller' and curso in ('3','4') order by nombre;

-- 28. Obtén los datos de los alumnos cuyo nombre empiece por la letra 'J', que tengan más de 10 faltas y no sean de Bachiller. Ordena el resultado por curso, y dentro de cada curso, por nombre.

SELECT * FROM alumnos WHERE nombre like 'j%' and faltas>10 and nivel='eso' order by curso,nombre;

-- 29. Con una consulta obtén el expediente, nombre, curso y nivel de todos los alumnos ordenado por curso, nivel ascendentemente y nombre descendentemente cuyo nivel no sea 'BACHILLER'.

select expediente, nombre, curso, nivel FROM alumnos WHERE nivel='eso' order by curso, nivel asc, nombre desc;

-- 30. Con una consulta obtén el nombre de cada alumno en mayúscula cuya localidad sea Murcia.

select upper(nombre) FROM alumnos WHERE localidad='murcia';

-- 31. Muestra el nombre de cada alumno en mayúscula y la localidad a la que pertenecen en minúscula, ordenados por localidad.

select upper(nombre), lower(localidad)FROM alumnos order by localidad ;

-- 32. Con una consulta concatena el nombre de cada alumno y la localidad y sustituye 'BACHILLER' por 'Bachillerato'.

select concat(nombre,localidad), replace(nivel,'BACHILLER','BACHILLERATO') as nivel FROM alumnos;

-- 33. Con una consulta obtén el nombre de cada alumno y la longitud de la cadena “Nombre”.

select nombre, length(nombre) FROM alumnos;

-- 34. Con una consulta obtén el nombre, año de nacimiento y mes de nacimiento de cada uno de los alumnos.

select nombre, month(fecha_nac), year(fecha_nac) FROM alumnos;

-- 35. Con una consulta muestra el nombre y edad de cada uno de los alumnos (la edad se calcula restando al año de nacimiento 2008)

select nombre, 2008-year(fecha_nac) as edad FROM alumnos;
