--a) Obtener todos los datos de los productos de la tienda.

SELECT * FROM articulos;

--b) Obtener los nombres de los productos de la tienda.

SELECT nombre FROM articulos;

--c) Obtener los nombres y precio de los productos de la tienda.

SELECT nombre, precio FROM articulos;

--d) Obtener los nombres de los artículos sin repeticiones.

SELECT DISTINCT nombre FROM articulos;

--e) Obtener todos los datos del artículo cuya clave de producto es ‘5’.

SELECT * FROM articulos WHERE clave_articulo=5;

--f) Obtener todos los datos del artículo cuyo nombre del producto es ‘’Teclado”.

SELECT * FROM articulos WHERE nombre='Teclado';

--g) Obtener todos los datos de la Memoria RAM y memorias USB.

SELECT * FROM articulos WHERE nombre='Memoria RAM' OR nombre='memorias USB';

--h) Obtener todos los datos de los artículos que empiezan con ‘M’.

SELECT * FROM articulos WHERE nombre LIKE='M%';

--i) Obtener el nombre de los productos donde el precio sea 100.

SELECT nombre FROM articulos WHERE precio=100;

--j) Obtener el nombre de los productos donde el precio sea mayor a 200.

SELECT nombre FROM articulos WHERE precio>200;

--k) Obtener todos los datos de los artículos cuyo precio este entre 100 y 350.

SELECT nombre FROM articulos WHERE precio BETWEEN 100 AND 350;

--l) Obtener el precio medio de todos los productos.

SELECT AVG(Precio) FROM articulos;

--m) Obtener el precio medio de los artículos cuyo código de fabricante sea 2.

SELECT AVG(Precio) FROM articulos WHERE clave_fabricante=2;

--n) Obtener el nombre y precio de los artículos ordenados por Nombre.

SELECT nombre, precio FROM articulos ORDER BY nombre ASC;

--o) Obtener todos los datos de los productos ordenados descendentemente por Precio.

SELECT * FROM articulos ORDER BY precio DESC;

--p) Obtener el nombre y precio de los artículos cuyo precio sea mayor a 250 y ordenarlos descendentemente por precio y luego ascendentemente por nombre.

SELECT nombre, precio FROM articulos WHERE precio>250 ORDER BY precio DESC, nombre ASC;

--q) Obtener un listado completo de los productos, incluyendo por cada articulo los datos del articulo y del fabricante.



--r) Obtener la clave de producto, nombre del producto y nombre del fabricante de todos los productos en venta.



--s) Obtener el nombre y precio de los artículos donde el fabricante sea Logitech ordenarlos alfabéticamente por nombre del producto.



--t) Obtener el nombre, precio y nombre de fabricante de los productos que son marca Lexar o Kingston ordenados descendentemente por precio.



--u) Añade un nuevo producto: Clave del producto 11, Altavoces de 120 del fabricante 2.



--v) Cambia el nombre del producto 6 a ‘Impresora Laser’.



--w) Aplicar un descuento del 10% a todos los productos.



--x) Aplicar un descuento de 10 a todos los productos cuyo precio sea mayor o igual a 300.



--y) Borra el producto numero 6.

