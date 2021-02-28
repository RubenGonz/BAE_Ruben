/*  CONSULTAS SOBRE UNA TABLA (0,5 puntos) */
/* Devuelve un listado con todos los pedidos que se han realizado. Los pedidos deben estar ordenados por 
la fecha de realización, mostrando en primer lugar los pedidos más recientes.*/
SELECT
  *
FROM
  pedido
ORDER BY
  fecha DESC;
  /* Devuelve todos los datos de los dos pedidos de mayor valor.*/
SELECT
  *
FROM
  pedido
ORDER BY
  cantidad DESC
LIMIT
  2;
  /* Devuelve un listado con los identificadores de los clientes que han realizado algún pedido. 
    Tenga en cuenta que que no debe mostrar identificadores que estén repetidos.*/
SELECT
  DISTINCT id_cliente
FROM
  pedido;
  /* Devuelve un listado de todos los pedidos que se realizaron durante el año 2017, cuya cantidad sea superior a 500€.*/
SELECT
  id,
  fecha,
  cantidad
FROM
  pedido
WHERE
  fecha LIKE "2017%"
  AND cantidad > 500;
  /* Devuelve un listado con el nombre y los apellidos de los comerciales que tienen una comisión entre 0.05 y 0.11.*/
SELECT
  nombre,
  apellido1,
  apellido2,
  comision
FROM
  comercial
WHERE
  comision BETWEEN 0.05
  AND 0.11;
  /* Devuelve el valor de la comisión de mayor valor que existe en la tabla comercial.*/
SELECT
  MAX(comision)
FROM
  comercial;
  /* Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo segundo apellido no es NULL. 
    El listado deberá estar ordenado alfabéticamente por apellidos y nombre.*/
SELECT
  id,
  nombre,
  apellido1
FROM
  cliente
WHERE
  apellido2 IS NOT NULL
ORDER BY
  apellido1;
  /* Devuelve un listado de los nombres de los clientes que empiezan por A y terminan por n y también los nombres que 
    empiezan por P. El listado deberá estar ordenado alfabéticamente.*/
SELECT
  nombre
FROM
  cliente
WHERE
  (
    nombre LIKE "A%"
    AND nombre LIKE "%n"
  )
  OR nombre LIKE "P%"
ORDER BY
  nombre ASC;
  /* Devuelve un listado de los nombres de los clientes que no empiezan por A. El listado deberá estar ordenado alfabéticamente.*/
SELECT
  nombre
FROM
  cliente
WHERE
  nombre NOT LIKE "A%"
ORDER BY
  nombre ASC;
  /* Devuelve un listado con los nombres de los comerciales que terminan por o. Tenga en cuenta que se deberán eliminar 
    los nombres repetidos.*/
SELECT
  DISTINCT nombre
FROM
  comercial
WHERE
  nombre LIKE "%o"
ORDER BY
  nombre ASC;
  /* CONSULTAS MULTITABLA ( INNER JOIN ) (2 puntos)*/
  /* Devuelve un listado con el identificador, nombre y los apellidos de todos los clientes que han realizado algún pedido. 
    El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.*/
SELECT
  DISTINCT cliente.id,
  cliente.nombre,
  cliente.apellido1,
  cliente.apellido2
FROM
  cliente
  INNER JOIN pedido ON cliente.id = pedido.id_cliente
ORDER BY
  cliente.nombre;
  /* Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los 
    datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.*/
SELECT
  cliente.id AS ClienteID,
  pedido.id AS PedidoID
FROM
  cliente
  INNER JOIN pedido ON pedido.id_cliente = cliente.id;
  /* Devuelve un listado que muestre todos los pedidos en los que ha participado un comercial. El resultado debe mostrar todos 
    los datos de los pedidos y de los comerciales. El listado debe mostrar los datos de los comerciales ordenados alfabéticamente.*/
SELECT
  comercial.id AS ComercialID,
  pedido.id AS PedidoID
FROM
  comercial
  INNER JOIN pedido ON pedido.id_comercial = comercial.id;
  /* Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los 
    comerciales asociados a cada pedido.*/
SELECT
  cliente.id AS ClienteID,
  cliente.nombre AS ClienteNombre,
  comercial.id AS ComercialID,
  comercial.nombre AS ComercialNombre,
  pedido.id AS PedidoID,
  pedido.fecha
FROM
  comercial
  INNER JOIN pedido ON comercial.id = pedido.id_comercial
  INNER JOIN cliente
ORDER BY
  cliente.id,
  comercial.id,
  pedido.id;
  /* Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2017, cuya cantidad esté entre 300 € y 1000 €.*/
SELECT
  cliente.id,
  cliente.nombre,
  pedido.cantidad,
  pedido.fecha
FROM
  cliente
  INNER JOIN pedido ON cliente.id = pedido.id_cliente
  AND cantidad BETWEEN 300
  AND 1000
  AND fecha LIKE "2017%"
ORDER BY
  cliente.id;
  /* Devuelve el nombre y los apellidos de todos los comerciales que ha participado en algún pedido realizado por María 
    Santana Moreno.*/
SELECT
  DISTINCT comercial.id,
  comercial.nombre,
  comercial.apellido1,
  comercial.apellido2
FROM
  comercial
  INNER JOIN pedido ON comercial.id = pedido.id_comercial
  INNER JOIN cliente ON cliente.id = pedido.id_cliente
  AND cliente.id = (
    SELECT
      id
    FROM
      cliente
    WHERE
      nombre = "Mara"
  );
  /* Devuelve el nombre de todos los clientes que han realizado algún pedido con el comercial Daniel Sáez Vega.*/
SELECT
  DISTINCT cliente.nombre
FROM
  cliente
  INNER JOIN pedido ON cliente.id = pedido.id_cliente
  INNER JOIN comercial ON comercial.id = pedido.id_comercial
  AND comercial.id = (
    SELECT
      id
    FROM
      comercial
    WHERE
      nombre = "Daniel"
      AND apellido1 = "Sez"
      AND apellido2 = "Vega"
  );
  /* CONSULTAS RESUMEN (2 puntos) */
  /* Calcula la cantidad total de todos los pedidos que aparecen en la tabla pedido. */
SELECT
  sum(cantidad)
FROM
  pedido;
  /* Calcula la cantidad media de todos los pedidos que aparecen en la tabla pedido. */
SELECT
  avg(cantidad)
FROM
  pedido;
  /* Calcula el número total de comerciales distintos que aparecen en la tabla pedido. */
SELECT
  count(id_comercial)
FROM
  pedido;
  /* Calcula el número total de clientes que aparecen en la tabla cliente. */
SELECT
  count(id)
FROM
  cliente;
  /* Calcula cuál es la mayor cantidad que aparece en la tabla pedido. */
SELECT
  max(cantidad)
FROM
  pedido;
  /* Calcula cuál es la menor cantidad que aparece en la tabla pedido. */
SELECT
  min(cantidad)
FROM
  pedido;
  /* Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla cliente. */
SELECT
  max(categoria),
  ciudad
FROM
  cliente
GROUP BY
  ciudad;
  /* Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes. 
    Es decir, el mismo cliente puede haber realizado varios pedidos de diferentes cantidades el mismo día. Se pide que se 
    calcule cuál es el pedido de máximo valor para cada uno de los días en los que un cliente ha realizado un pedido. 
    Muestra el identificador del cliente, nombre, apellidos, la fecha y el valor de la cantidad. */
SELECT
  cliente.id,
  cliente.nombre,
  cliente.apellido1,
  cliente.apellido2,
  pedido.fecha,
  max(pedido.cantidad)
FROM
  cliente,
  pedido
GROUP BY
  pedido.fecha,
  cliente.id
ORDER BY
  pedido.fecha;
  /* Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes, 
    teniendo en cuenta que sólo queremos mostrar aquellos pedidos que superen la cantidad de 2000 €. */
SELECT
  cliente.id,
  cliente.nombre,
  cliente.apellido1,
  cliente.apellido2,
  pedido.fecha,
  max(pedido.cantidad)
FROM
  cliente,
  pedido
WHERE
  pedido.cantidad > 200
GROUP BY
  pedido.fecha,
  cliente.id
ORDER BY
  pedido.fecha;
  /* Calcula el máximo valor de los pedidos realizados para cada uno de los comerciales durante la fecha 2016-08-17. 
    Muestra el identificador del comercial, nombre, apellidos y total. */
SELECT
  comercial.id,
  comercial.nombre,
  comercial.apellido1,
  comercial.apellido2,
  pedido.fecha,
  max(pedido.cantidad)
FROM
  comercial,
  pedido
WHERE
  fecha = "2016-08-17"
GROUP BY
  comercial.id;
  /* Devuelve un listado con el identificador de cliente, nombre y apellidos y el número total de pedidos que ha 
    realizado cada uno de clientes. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido. 
    Estos clientes también deben aparecer en el listado indicando que el número de pedidos realizados es 0. */
SELECT
  cliente.id,
  cliente.nombre,
  cliente.apellido1,
  cliente.apellido2,
  IFNULL(count(cliente.id), 0)
FROM
  cliente,
  pedido
WHERE
  cliente.id = pedido.id_cliente
GROUP BY
  cliente.id;
  /* Devuelve un listado que muestre el identificador de cliente, nombre, primer apellido y el valor de la máxima 
    cantidad del pedido realizado por cada uno de los clientes. El resultado debe mostrar aquellos clientes que no 
    han realizado ningún pedido indicando que la máxima cantidad de sus pedidos realizados es 0. Puede hacer uso de 
    la función IFNULL. */
SELECT
  cliente.id,
  cliente.nombre,
  cliente.apellido1,
  IFNULL(max(pedido.cantidad), 0)
FROM
  cliente,
  pedido
WHERE
  cliente.id = pedido.id_cliente
GROUP BY
  cliente.id
ORDER BY
  cliente.id;
  /* Devuelve el número total de pedidos que se han realizado cada año. */
SELECT
  sum(cantidad),
  fecha
FROM
  pedido
GROUP BY
  fecha;
  /* SUBCONSULTAS CON OPERADORES BÁSICOS DE COMPARACIÓN (1 punto) */
  /* Devuelve un listado con todos los pedidos que ha realizado Adela Salas Díaz. (Sin utilizar INNER JOIN). */
SELECT
  pedido.*
FROM
  pedido
WHERE
  id_cliente =(
    SELECT
      id
    FROM
      cliente
    WHERE
      nombre = "Adela"
      AND apellido1 = "Salas"
      AND apellido2 = "Daz"
  );
  /* Devuelve el número de pedidos en los que ha participado el comercial Daniel Sáez Vega. (Sin utilizar INNER JOIN) */
SELECT
  count(*)
FROM
  pedido
WHERE
  id_comercial = (
    SELECT
      id
    FROM
      comercial
    WHERE
      nombre = "Daniel"
      AND apellido1 = "Sez"
      AND apellido2 = "Vega"
  );
  /* Devuelve los datos del cliente que realizó el pedido más caro en el año 2019. (Sin utilizar INNER JOIN) */
SELECT
  *
FROM
  cliente
WHERE
  id = (
    SELECT
      id_cliente
    FROM
      pedido
    WHERE
      cantidad = (
        SELECT
          MAX(cantidad)
        FROM
          pedido
        WHERE
          fecha LIKE "%2019%"
      )
  );
  /* Devuelve la fecha y la cantidad del pedido de menor valor realizado por el cliente Pepe Ruiz Santana. */
SELECT
  fecha,
  cantidad
FROM
  pedido
WHERE
  cantidad = (
    SELECT
      min(cantidad)
    FROM
      pedido
    WHERE
      id_cliente = (
        SELECT
          id
        FROM
          cliente
        WHERE
          nombre = "Pepe"
          AND apellido1 = "Ruz"
          AND apellido2 = "Santana"
      )
  );
  /* Devuelve un listado con los datos de los clientes y los pedidos, de todos los clientes que han realizado un pedido 
    durante el año 2017 con un valor mayor o igual al valor medio de los pedidos realizados durante ese mismo año. */
SELECT
  cliente.*,
  pedido.*
FROM
  cliente,
  pedido
WHERE
  id_cliente = (
    SELECT
      id
    FROM
      cliente
    WHERE
      cliente.id = pedido.id_cliente
      AND fecha LIKE "2017%"
      AND pedido.cantidad >= (
        SELECT
          avg(cantidad)
        FROM
          pedido
      )
  );
  /* SUBCONSULTAS AN ALL Y ANY (0,5 puntos ) */
  /* Devuelve el pedido más caro que existe en la tabla pedido si hacer uso de MAX, ORDER BY ni LIMIT. */
SELECT
  *
FROM
  pedido
WHERE
  cantitad >= ALL (
    SELECT
      cantidad
    FROM
      pedido
  );
  /* Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando ANY o ALL). */
SELECT
  *
FROM
  cliente
WHERE
  id != ALL (
    SELECT
      id_cliente
    FROM
      pedido
  );
  /* Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando ANY o ALL). */
SELECT
  *
FROM
  comercial
WHERE
  id != ALL (
    SELECT
      id_comercial
    FROM
      pedido
  );
  /* SUBCONSULTAS CON  IN Y NOT IN (0,5 puntos) */
  /* Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando IN o NOT IN). */
SELECT
  *
FROM
  cliente
WHERE
  id NOT IN (
    SELECT
      id_cliente
    FROM
      pedido
  );
  /* Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando IN o NOT IN). */
SELECT
  *
FROM
  comercial
WHERE
  id NOT IN (
    SELECT
      id_comercial
    FROM
      pedido
  );
  /* SUBCONSULTAS CON EXISTS Y NOT EXISTS (0,5 puntos) */
  /* Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS). */
SELECT
  *
FROM
  cliente
WHERE
  NOT EXISTS (
    SELECT
      id_cliente
    FROM
      pedido
    WHERE
      cliente.id = pedido.id_cliente
  );
  /* Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS). */
SELECT
  *
FROM
  comercial
WHERE
  NOT EXISTS (
    SELECT
      id_comercial
    FROM
      pedido
    WHERE
      comercial.id = pedido.id_comercial
  );