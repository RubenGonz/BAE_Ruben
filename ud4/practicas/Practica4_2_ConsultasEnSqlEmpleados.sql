create database Empleados;
use Empleados;

create table emple

	(emp_no 	INTEGER PRIMARY KEY,

	apellido VARCHAR(50) NOT NULL,

	oficio VARCHAR(30),

	dir INTEGER,

	fecha_alt DATE,

	salario INTEGER,

	comision INTEGER,

	dept_no INTEGER);

create table depart(

        dept_no INTEGER,

	dnombre VARCHAR(30),

	loc VARCHAR(30));

INSERT INTO emple VALUES (7369,'SANCHEZ','EMPLEADO',7902,'1980/12/17',
                        104000,NULL,20);
INSERT INTO emple VALUES (7499,'ARROYO','VENDEDOR',7698,'1980/02/20',
                        208000,39000,30);
INSERT INTO emple VALUES (7521,'SALA','VENDEDOR',7698,'1981/02/22',
                        162500,162500,30);
INSERT INTO emple VALUES (7566,'JIMENEZ','DIRECTOR',7839,'1981/04/02',
                        386750,NULL,20);
INSERT INTO emple VALUES (7654,'MARTIN','VENDEDOR',7698,'1981/09/29',
                        162500,182000,30);
INSERT INTO emple VALUES (7698,'NEGRO','DIRECTOR',7839,'1981/05/01',
                        370500,NULL,30);
INSERT INTO emple VALUES (7788,'GIL','ANALISTA',7566,'1981/11/09',
                        390000,NULL,20);
INSERT INTO emple VALUES (7839,'REY','PRESIDENTE',NULL,'1981/11/17',
                        650000,NULL,10);
INSERT INTO emple VALUES (7844,'TOVAR','VENDEDOR',7698,'1981/09/08',
                        195000,0,30);
INSERT INTO emple VALUES (7876,'ALONSO','EMPLEADO',7788,'1981/09/23',
                        143000,NULL,20);
INSERT INTO emple VALUES (7900,'JIMENO','EMPLEADO',7698,'1981/12/03',
                        1235000,NULL,30);
INSERT INTO emple VALUES (7902,'FERNANDEZ','ANALISTA',7566,'1981/12/03',
                        390000,NULL,20);
INSERT INTO emple VALUES (7934,'MUÑOZ','EMPLEADO',7782,'1982/01/23',
                        169000,NULL,10);

INSERT INTO depart VALUES (10,'CONTABILIDAD','SEVILLA');
INSERT INTO depart VALUES (20,'INVESTIGACIÓN','MADRID');
INSERT INTO depart VALUES (30,'VENTAS','BARCELONA');
INSERT INTO depart VALUES (40,'PRODUCCIÓN','BILBAO');



-- Realizar las siguientes consultas:

--1 Mostrar el apellido, oficio y número de departamento de cada empleado.

SELECT apellido, oficio, dept_no FROM emple;

--2 Mostrar el número, nombre y localización de cada departamento.

SELECT dept_no, dnombre, loc FROM depart;

--3 Mostrar todos los datos de todos los empleados.

SELECT * FROM emple;

--4 Datos de los empleados ordenados por apellidos.

SELECT * FROM emple ORDER BY apellido ASC;

--5 Datos de los empleados ordenados por número de departamento descendentemente.

SELECT * FROM emple ORDER BY dept_no DESC;

--6 Datos de los empleados ordenados por número de departamento descendentemente y dentro de cada departamento ordenados por apellido ascendentemente.

SELECT * FROM emple ORDER BY dept_no DESC, apellido ASC;

--8 Mostrar los datos de los empleados cuyo salario sea mayor que 2000000. 

SELECT * FROM emple WHERE salario>2000000;

--9 Mostrar los datos de los empleados cuyo oficio sea ʻANALISTAʼ.

SELECT * FROM emple WHERE oficio='ANALISTA';
   
--10 Seleccionar el apellido y oficio de los empleados del departamento número 20.

SELECT apellido, oficio FROM emple WHERE dept_no='20';

--11 Mostrar todos los datos de los empleados ordenados por apellido.

SELECT * FROM emple ORDER BY apellidos ASC;

--12 Seleccionar los empleados cuyo oficio sea ʻVENDEDORʼ. Mostrar los datos ordenados por apellido.

SELECT * FROM emple WHERE oficio='VENDEDOR' ORDER BY apellido ASC;

--13 Mostrar los empleados cuyo departamento sea 10 y cuyo oficio sea ʻANALISTAʼ. Ordenar el resultado por apellido.

SELECT * FROM emple WHERE dept_no='10'AND oficio='ANALISTA' ORDER BY apellido ASC;

--14 Mostrar los empleados que tengan un salario mayor que 200000 o que pertenezcan al departamento número 20.

SELECT * FROM emple WHERE salario>200000 OR dept_no='20';

--15 Ordenar los empleados por oficio, y dentro de oficio por nombre.

SELECT * FROM emple ORDER BY oficio ASC, emp_no ASC;

--16 Seleccionar de la tabla EMPLE los empleados cuyo apellido empiece por ʻAʼ.

SELECT * FROM emple WHERE empleado LIKE 'A%';

--17 Seleccionar de la tabla EMPLE los empleados cuyo apellido termine por ʻZʼ.

SELECT * FROM emple WHERE apellido LIKE '%Z';

--18 Seleccionar de la tabla EMPLE aquellas filas cuyo APELLIDO empiece por ʻAʼ y el OFICIO tenga una ʻEʼ en cualquier posición.

SELECT * FROM emple WHERE apellido LIKE 'A%' AND 'E';

--19 Seleccionar los empleados cuyo salario esté entre 100000 y 200000. Utilizar el operador BETWEEN.

SELECT * FROM emple WHERE salario BETWEEN '100000' AND '200000';

--20 Obtener los empleados cuyo oficio sea ʻVENDEDORʼ y tengan una comisión superior a 100000.

SELECT * FROM emple WHERE oficio='VENDEDOR'AND comision>'100000';

--21 Seleccionar los datos de los empleados ordenados por número de departamento, y dentro de cada departamento ordenados por apellido.

SELECT * FROM emple ORDER BY dept_no ASC, apellido ASC;

--22 Número y apellidos de los empleados cuyo apellido termine por ʻZʼ y tengan un salario superior a 300000.

SELECT emp_no, apellido FROM emple WHERE apellido LIKE '%Z' AND salario>'300000';

--23. Datos de los departamentos cuya localización empiece por ʻBʼ.

SELECT * FROM departamentos WHERE loc LIKE 'B%';

--24. Datos de los empleados cuyo oficio sea ʻEMPLEADOʼ, tengan un salario superior a 100000 y pertenezcan al departamento número 10.

SELECT * FROM emple WHERE oficio='EMPLEADO' AND salario>'100000' AND dept_no='10';

--25. Mostrar los apellidos de los empleados que no tengan comisión.

SELECT apellido FROM emple WHERE comision IS 'NULL';

--26. Mostrar los apellidos de los empleados que no tengan comisión y cuyo apellido empiece por ʻJʼ.



--27. Mostrar los apellidos de los empleados cuyo oficio sea ʻVENDEDORʼ, ʻANALISTAʼ o ʻEMPLEADOʼ.


 
--28. Mostrar los apellidos de los empleados cuyo oficio no sea ni ʻANALISTAʼ ni ʻEMPLEADOʼ, y además tengan un salario mayor de 200000.


--29 Seleccionar de la tabla EMPLE los empleados cuyo salario esté entre 2000000 y 3000000 (utilizar BETWEEN).


--30 Seleccionar el apellido, salario y número de departamento de los empleados cuyo salario sea mayor que 200000 en los departamentos 10 ó 30.