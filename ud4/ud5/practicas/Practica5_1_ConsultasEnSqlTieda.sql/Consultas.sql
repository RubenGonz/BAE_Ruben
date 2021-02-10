--a) Obtener todos los datos de los productos de la tienda.

SELECT * FROM articulos;

--b) Obtener los Nombres de los productos de la tienda.

SELECT Nombre FROM articulos;

--c) Obtener los Nombres y Precio de los productos de la tienda.

SELECT Nombre, Precio FROM articulos;

--d) Obtener los Nombres de los artículos sin repeticiones.

SELECT DISTINCT Nombre FROM articulos;

--e) Obtener todos los datos del artículo cuya clave de producto es ‘5’.

SELECT * FROM articulos WHERE Clave_articulo=5;

--f) Obtener todos los datos del artículo cuyo Nombre del producto es ‘’Teclado”.

SELECT * FROM articulos WHERE Nombre='Teclado';

--g) Obtener todos los datos de la Memoria RAM y memorias USB.

SELECT * FROM articulos WHERE Nombre='Memoria RAM' OR Nombre='memorias USB';

--h) Obtener todos los datos de los artículos que empiezan con ‘M’.

SELECT * FROM articulos WHERE Nombre LIKE='M%';

--i) Obtener el Nombre de los productos donde el Precio sea 100.

SELECT Nombre FROM articulos WHERE Precio=100;

--j) Obtener el Nombre de los productos donde el Precio sea mayor a 200.

SELECT Nombre FROM articulos WHERE Precio>200;

--k) Obtener todos los datos de los artículos cuyo Precio este entre 100 y 350.

SELECT Nombre FROM articulos WHERE Precio BETWEEN 100 AND 350;

--l) Obtener el Precio medio de todos los productos.

SELECT AVG(Precio) FROM articulos;

--m) Obtener el Precio medio de los artículos cuyo código de fabricante sea 2.

SELECT AVG(Precio) FROM articulos WHERE Clave_fabricante=2;

--n) Obtener el Nombre y Precio de los artículos ordenados por Nombre.

SELECT Nombre, Precio FROM articulos ORDER BY Nombre ASC;

--o) Obtener todos los datos de los productos ordenados descendentemente por Precio.

SELECT * FROM articulos ORDER BY Precio DESC;

--p) Obtener el Nombre y Precio de los artículos cuyo Precio sea mayor a 250 y ordenarlos descendentemente por Precio y luego ascendentemente por Nombre.

SELECT Nombre, Precio FROM articulos WHERE Precio>250 ORDER BY Precio DESC, Nombre ASC;

--q) Obtener un listado completo de los productos, incluyendo por cada articulo los datos del articulo y del fabricante.

SELECT * FROM articulos, fabricantes WHERE articulos.Clave_fabricante=fabricantes.Clave_fabricante;

--r) Obtener la clave de producto, Nombre del producto y Nombre del fabricante de todos los productos en venta.

SELECT articulos.Clave_articulo, articulos.Nombre, fabricantes.Nombre FROM articulos, fabricantes WHERE articulos.Clave_fabricante=fabricantes.Clave_fabricante;

--s) Obtener el Nombre y Precio de los artículos donde el fabricante sea Logitech ordenarlos alfabéticamente por Nombre del producto.

SELECT articulos.Nombre, articulos.Precio, fabricantes.Nombre FROM articulos, fabricantes WHERE articulos.Clave_fabricante=fabricantes.Clave_fabricante AND fabricantes.Nombre='Logitech' ORDER BY articulos.Nombre ASC;

--t) Obtener el Nombre, Precio y Nombre de fabricante de los productos que son marca Lexar o Kingston ordenados descendentemente por Precio.

SELECT articulos.Nombre, articulos.Precio, fabricantes.Nombre FROM articulos, fabricantes WHERE articulos.Clave_fabricante=fabricantes.Clave_fabricante AND fabricantes.Nombre='Lexar' OR fabricantes.Nombre='Kingston' ORDER BY articulos.Precio DESC;

--u) Añade un nuevo producto: Clave del producto 11, Altavoces de 120 del fabricante 2.

INSERT INTO articulos VALUES (11,'Altavoces',120,2);

--v) Cambia el Nombre del producto 6 a ‘Impresora Laser’.

UPDATE articulos SET Nombre='Impresora Laser' WHERE Clave_articulo=6;

--w) Aplicar un descuento del 10% a todos los productos.

UPDATE articulos SET Precio=Precio * 0.9;

--x) Aplicar un descuento de 10 a todos los productos cuyo Precio sea mayor o igual a 300.

UPDATE articulos SET Precio=Precio - 10 WHERE Precio>= 300;

--y) Borra el producto numero 6.

DELETE FROM articulos WHERE Clave_articulo= 6;