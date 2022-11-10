-- EJERCICIOS PAIR PROGRAMMING DIA 10 NOVIEMBRE --
USE northwind ;

-- 1 Crea una consulta que muestre los primeros 10 productos según 
-- su ID y que nos indique el nombre de dichos productos y sus precios.

SELECT product_id, unit_price, product_name 
FROM products 
ORDER BY product_id ASC 
LIMIT 10;

-- 2 Ordenando los resultados: Ahora realiza la misma 
-- consulta pero que nos muestre los últimos 10 productos
--  según su ID de manera descendiente.

SELECT product_id, unit_price, product_name 
FROM products 
ORDER BY product_id DESC
LIMIT 10;

-- 3 Nos interesa conocer qué pedidos distintos hemos tenido 
-- (eliminando entradas duplicadas según su ID en la tabla order_details).

SELECT DISTINCT order_id
FROM order_details;

-- 4 

SELECT DISTINCT order_id
FROM order_details
LIMIT 2;

-- 5 los 3 pedidos que han supuesto un mayor 
-- coste económico total para la empresa. 

SELECT (unit_price * quantity) AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 3;
-- como nos salen 2 registros con el mismo precio 
-- usamos distinct para ver los pedidos que no se repiten

SELECT DISTINCT (unit_price * quantity) AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 3;

-- 6 Los pedidos que están entre las posiciones 5 y 10 de nuestro ranking:

SELECT (unit_price * quantity) AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 5
OFFSET 4;

-- 7 una lista de las categorías que componen 
-- los tipos de pedido de la empresa. Queremos que la 
-- lista de resultado sea renombrada como "NombreDeCategoria".

SELECT DISTINCT category_name AS NombreDeCategoria
FROM categories;
