-- BLOQUE 1

-- 1.Listar los nombres de los usuarios

SELECT nombre FROM usuarios;

-- 2.Calcular el saldo máximo de los usuarios de sexo "Mujer"

SELECT MAX(saldo) FROM usuarios WHERE sexo = 'M';

-- 3.Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY

SELECT nombre, telefono FROM usuarios WHERE marca IN('NOKIA', 'BLACKBERRY', 'SONY');

-- 4.Contar los usuarios sin saldo o inactivos

SELECT COUNT(*) FROM usuarios WHERE NOT activo OR saldo <= 0;

-- 5.Listar el login de los usuarios con nivel 1, 2 o 3

SELECT usuario FROM usuarios WHERE nivel IN(1, 2, 3);

-- 6.Listar los números de teléfono con saldo menor o igual a 300

SELECT telefono FROM usuarios WHERE saldo <= 300;

-- 7.Calcular la suma de los saldos de los usuarios de la compañia telefónica NEXTEL

SELECT SUM(saldo) FROM usuarios WHERE compañia = 'NEXTEL';

-- 8.Contar el número de usuarios por compañía telefónica

SELECT compañia, COUNT(*) FROM usuarios GROUP BY compañia;

-- 9.Contar el número de usuarios por nivel

SELECT nivel, COUNT(*) FROM usuarios GROUP BY nivel;

-- 10.Listar el login de los usuarios con nivel 2

SELECT usuario FROM usuarios WHERE nivel = 2;

-- 11.Mostrar el email de los usuarios que usan gmail

SELECT email FROM usuarios WHERE email LIKE '%gmail.com';

-- 12.Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA

SELECT nombre, telefono FROM usuarios WHERE marca IN('LG', 'SAMSUNG', 'MOTOROLA');

-- BLOQUE 2

-- 13.Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG

SELECT nombre, telefono FROM usuarios WHERE marca NOT IN('LG', 'SAMSUNG');

-- 14.Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL

SELECT usuario, telefono FROM usuarios WHERE compañia = 'IUSACELL';

-- 15.Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL

SELECT usuario, telefono FROM usuarios WHERE compañia <> "TELCEL";

-- 16.Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA

SELECT AVG(saldo) FROM usuarios WHERE marca = 'NOKIA';

-- 17.Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o AXEL

SELECT usuario, telefono FROM usuarios WHERE compañia IN('IUSACELL', 'AXEL');

-- 18.Mostrar el email de los usuarios que no usan yahoo

SELECT email FROM usuarios WHERE email NOT LIKE '%yahoo.com';

-- 19.Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL o IUSACELL

SELECT usuario, telefono FROM usuarios WHERE compañia NOT IN('TELCEL', 'IUSACELL');

-- 20.Listar el login y teléfono de los usuarios con compañia telefónica UNEFON

SELECT usuario, telefono FROM usuarios WHERE compañia = 'UNEFON';

-- 21.Listar las diferentes marcas de celular en orden alfabético descendentemente

SELECT DISTINCT marca FROM usuarios ORDER BY marca DESC;

-- 22.Listar las diferentes compañias en orden alfabético aleatorio

SELECT DISTINCT compañia FROM usuarios ORDER BY RAND();

-- 23.Listar el login de los usuarios con nivel 0 o 2

SELECT usuario FROM usuarios WHERE nivel IN(0, 2);

-- 24.Calcular el saldo promedio de los usuarios que tienen teléfono marca LG

SELECT AVG(saldo) FROM usuarios WHERE marca = 'LG';

-- BLOQUE 3

-- 25.Listar el login de los usuarios con nivel 1 o 3

SELECT usuario FROM usuarios WHERE nivel IN(1, 3);

-- 26.Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY 

SELECT nombre, telefono FROM usuarios WHERE marca <> "BLACKBERRY";

-- 27.Listar el login de los usuarios con nivel 3

SELECT usuario FROM usuarios WHERE nivel = 3;

-- 28.Listar el login de los usuarios con nivel 0

SELECT usuario FROM usuarios WHERE nivel = 0;

-- 29.Listar el login de los usuarios con nivel 1

SELECT usuario FROM usuarios WHERE nivel = 1;

-- 30.Contar el número de usuarios por sexo

SELECT sexo, COUNT(*) FROM usuarios GROUP BY sexo;

-- 31.Listar el login y teléfono de los usuarios con compañia telefónica AT&T

SELECT usuario, telefono FROM usuarios WHERE compañia = "AT&T";

-- 32.Listar las diferentes compañias en orden alfabético descendentemente

SELECT DISTINCT compañia FROM usuarios ORDER BY compañia DESC;

-- 33.Listar el login de los usuarios inactivos

SELECT usuario FROM usuarios WHERE NOT activo;

-- 34.Listar los números de teléfono sin saldo

SELECT telefono FROM usuarios WHERE saldo <= 0;

-- 35.Calcular el saldo mínimo de los usuarios de sexo "Hombre"

SELECT MIN(saldo) FROM usuarios WHERE sexo = 'H';

-- 36.Listar los números de teléfono con saldo mayor a 300

SELECT telefono FROM usuarios WHERE saldo > 300;

-- BLOQUE 4

-- 37.Contar el número de usuarios por marca de teléfono

SELECT marca, COUNT(*) FROM usuarios GROUP BY marca;

-- 38.Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG

SELECT nombre, telefono FROM usuarios WHERE marca <> "LG";

-- 39.Listar las diferentes compañias en orden alfabético ascendentemente

SELECT DISTINCT compañia FROM usuarios ORDER BY compañia ASC;

-- 40.Calcular la suma de los saldos de los usuarios de la compañia telefónica UNEFON

SELECT SUM(saldo) FROM usuarios WHERE compañia = 'UNEFON';

-- 41.Mostrar el email de los usuarios que usan hotmail

SELECT email FROM usuarios WHERE email LIKE "%hotmail.com";

-- 42.Listar los nombres de los usuarios sin saldo o inactivos

SELECT nombre FROM usuarios WHERE NOT activo OR saldo <= 0;

-- 43.Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o TELCEL

SELECT usuario, telefono FROM usuarios WHERE compañia IN('IUSACELL', 'TELCEL');

-- 44.Listar las diferentes marcas de celular en orden alfabético ascendentemente

SELECT DISTINCT marca FROM usuarios ORDER BY marca DESC;

-- 45.Listar las diferentes marcas de celular en orden alfabético aleatorio

SELECT DISTINCT marca FROM usuarios ORDER BY RAND();

-- 46.Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o UNEFON

SELECT usuario, telefono FROM usuarios WHERE compañia IN('IUSACELL', 'UNEFON');

-- 47.Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA

SELECT nombre, telefono FROM usuarios WHERE marca NOT IN('MOTOROLA', 'NOKIA');

-- 48.Calcular la suma de los saldos de los usuarios de la compañia telefónica TELCEL

SELECT SUM(saldo) FROM usuarios WHERE compañia = 'TELCEL';