<div align="justify">

# <div align="center">Tarea 8 MySQL</div>
![logo](../Tarea-3/images/Mysql.png)

## Copiar la BDD
```sql
source jardineria.sql;
```

## Consulte cuáles son los índices que hay en la tabla producto utilizando las instrucciones SQL que nos permiten obtener esta información de la table
```sql
show index from producto;
/**
+----------+------------+----------+--------------+-----------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table    | Non_unique | Key_name | Seq_in_index | Column_name     | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------+------------+----------+--------------+-----------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| producto |          0 | PRIMARY  |            1 | codigo_producto | A         |         276 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| producto |          1 | gama     |            1 | gama            | A         |           4 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+----------+------------+----------+--------------+-----------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
**/
```

## Haga uso de EXPLAIN para obtener información sobre cómo se están realizando las consultas y diga cuál de las dos consultas realizará menos comparaciones para encontrar el producto que estamos buscando. ¿Cuántas comparaciones se realizan en cada caso? ¿Por qué?
```sql
EXPLAIN SELECT *
FROM producto
WHERE codigo_producto = 'OR-114';
/**
+----+-------------+----------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
| id | select_type | table    | partitions | type  | possible_keys | key     | key_len | ref   | rows | filtered | Extra |
+----+-------------+----------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | producto | NULL       | const | PRIMARY       | PRIMARY | 62      | const |    1 |   100.00 | NULL  |
+----+-------------+----------+------------+-------+---------------+---------+---------+-------+------+----------+-------+

En este caso vemos como gracias a la PRIMARY KEY que, al fin y al cabo también es un indice que consigue filtrar la rápidamente la consulta, así vemos que la tasa de filtrado es del 100%.
**/

EXPLAIN SELECT *
FROM producto
WHERE nombre = 'Evonimus Pulchellus';
/**
+----+-------------+----------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table    | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+----------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | producto | NULL       | ALL  | NULL          | NULL | NULL    | NULL |  276 |    10.00 | Using where |
+----+-------------+----------+------------+------+---------------+------+---------+------+------+----------+-------------+

En este caso no hay indice posible a utilizar por lo que se revisan todas y cada una de las filas para ver si existen coincidencias.
**/
```

## Suponga que estamos trabajando con la base de datos jardineria y queremos saber optimizar las siguientes consultas. ¿Cuál de las dos sería más eficiente?. Se recomienda hacer uso de EXPLAIN para obtener información sobre cómo se están realizando las consultas
```sql
EXPLAIN SELECT AVG(total)
FROM pago
WHERE YEAR(fecha_pago) = 2008;
/**
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | pago  | NULL       | ALL  | NULL          | NULL | NULL    | NULL |   26 |   100.00 | Using where |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
**/
EXPLAIN SELECT AVG(total)
FROM pago
WHERE fecha_pago >= '2008-01-01' AND fecha_pago <= '2008-12-31';

/**
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | pago  | NULL       | ALL  | NULL          | NULL | NULL    | NULL |   26 |    11.11 | Using where |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
**/
/**
En el primer caso la tasa de filtrado es del 100 lo que quiere decir que ha encontrado de la mejor forma los resultados de la consulta, en cambio en la segunda el filtrado es de 11.11 lo que significa que es bastante malo y para encontrar las 26 columnas ha buscado sobre muchas más filas de las necesarias.
**/
```

## Optimiza la siguiente consulta creando índices cuando sea necesario. Se recomienda hacer uso de EXPLAIN para obtener información sobre cómo se están realizando las consultas
```sql
EXPLAIN SELECT *
FROM cliente INNER JOIN pedido
ON cliente.codigo_cliente = pedido.codigo_cliente
WHERE cliente.nombre_cliente LIKE 'A%';
/**
+----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
| id | select_type | table   | partitions | type | possible_keys  | key            | key_len | ref                               | rows | filtered | Extra       |
+----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
|  1 | SIMPLE      | cliente | NULL       | ALL  | PRIMARY        | NULL           | NULL    | NULL                              |   36 |    11.11 | Using where |
|  1 | SIMPLE      | pedido  | NULL       | ref  | codigo_cliente | codigo_cliente | 4       | jardineria.cliente.codigo_cliente |    6 |   100.00 | NULL        |
+----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+

En este caso el problema estaría en la búsqueda de la tabla cliente, ya que filtramos por nombre sin tener indice en el mismo, por lo que no es una consulta muy optimizada, además se usa LIKE, cuando se podría optar por expresiones regulares, aun así con un indice no debería de haber problema con usar LIKE.
**/
Create index idx_nombre ON cliente(nombre_cliente);
/**
+----+-------------+---------+------------+-------+--------------------+----------------+---------+-----------------------------------+------+----------+-----------------------+
| id | select_type | table   | partitions | type  | possible_keys      | key            | key_len | ref                               | rows | filtered | Extra                 |
+----+-------------+---------+------------+-------+--------------------+----------------+---------+-----------------------------------+------+----------+-----------------------+
|  1 | SIMPLE      | cliente | NULL       | range | PRIMARY,idx_nombre | idx_nombre     | 202     | NULL                              |    3 |   100.00 | Using index condition |
|  1 | SIMPLE      | pedido  | NULL       | ref   | codigo_cliente     | codigo_cliente | 4       | jardineria.cliente.codigo_cliente |    6 |   100.00 | NULL                  |
+----+-------------+---------+------------+-------+--------------------+----------------+---------+-----------------------------------+------+----------+-----------------------+

Como se puede ver tras crear un indice en el nombre del cliente el filtro ha sido del 100 contra los 11.11 que había antes.
**/
```

## ¿Por qué no es posible optimizar el tiempo de ejecución de las siguientes consultas, incluso haciendo uso de índices?
```sql
EXPLAIN SELECT *
FROM cliente INNER JOIN pedido
ON cliente.codigo_cliente = pedido.codigo_cliente
WHERE cliente.nombre_cliente LIKE '%A%';
/**
En este caso, no se puede por culpa del LIKE, pero en realidad si que se puede optimizar, si cambiamos el LIKE por expresiones regulares, la consulta se optimizaría.
+----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
| id | select_type | table   | partitions | type | possible_keys  | key            | key_len | ref                               | rows | filtered | Extra       |
+----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
|  1 | SIMPLE      | cliente | NULL       | ALL  | PRIMARY        | NULL           | NULL    | NULL                              |   36 |    11.11 | Using where |
|  1 | SIMPLE      | pedido  | NULL       | ref  | codigo_cliente | codigo_cliente | 4       | jardineria.cliente.codigo_cliente |    6 |   100.00 | NULL        |
+----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
**/
EXPLAIN SELECT *
FROM cliente INNER JOIN pedido
ON cliente.codigo_cliente = pedido.codigo_cliente
WHERE cliente.nombre_cliente regexp 'A';
/**
+----+-------------+---------+------------+--------+----------------+---------+---------+----------------------------------+------+----------+-------------+
| id | select_type | table   | partitions | type   | possible_keys  | key     | key_len | ref                              | rows | filtered | Extra       |
+----+-------------+---------+------------+--------+----------------+---------+---------+----------------------------------+------+----------+-------------+
|  1 | SIMPLE      | pedido  | NULL       | ALL    | codigo_cliente | NULL    | NULL    | NULL                             |  115 |   100.00 | NULL        |
|  1 | SIMPLE      | cliente | NULL       | eq_ref | PRIMARY        | PRIMARY | 4       | jardineria.pedido.codigo_cliente |    1 |   100.00 | Using where |
+----+-------------+---------+------------+--------+----------------+---------+---------+----------------------------------+------+----------+-------------+

Se ha optimizado
**/
```
```sql
EXPLAIN SELECT *
FROM cliente INNER JOIN pedido
ON cliente.codigo_cliente = pedido.codigo_cliente
WHERE cliente.nombre_cliente LIKE '%A';
/**
+----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
| id | select_type | table   | partitions | type | possible_keys  | key            | key_len | ref                               | rows | filtered | Extra       |
+----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
|  1 | SIMPLE      | cliente | NULL       | ALL  | PRIMARY        | NULL           | NULL    | NULL                              |   36 |    11.11 | Using where |
|  1 | SIMPLE      | pedido  | NULL       | ref  | codigo_cliente | codigo_cliente | 4       | jardineria.cliente.codigo_cliente |    6 |   100.00 | NULL        |
+----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+

Lo mismo que en el caso anterior, el uso del LIKE está ralentizando la consulta, usamos expresiones regulares.
**/
EXPLAIN SELECT *
FROM cliente INNER JOIN pedido
ON cliente.codigo_cliente = pedido.codigo_cliente
WHERE cliente.nombre_cliente regexp '^A';
/**
+----+-------------+---------+------------+--------+----------------+---------+---------+----------------------------------+------+----------+-------------+
| id | select_type | table   | partitions | type   | possible_keys  | key     | key_len | ref                              | rows | filtered | Extra       |
+----+-------------+---------+------------+--------+----------------+---------+---------+----------------------------------+------+----------+-------------+
|  1 | SIMPLE      | pedido  | NULL       | ALL    | codigo_cliente | NULL    | NULL    | NULL                             |  115 |   100.00 | NULL        |
|  1 | SIMPLE      | cliente | NULL       | eq_ref | PRIMARY        | PRIMARY | 4       | jardineria.pedido.codigo_cliente |    1 |   100.00 | Using where |
+----+-------------+---------+------------+--------+----------------+---------+---------+----------------------------------+------+----------+-------------+

Ahora está optimizada
**/
```

## Una vez creado el índice del ejercicio anterior realiza las siguientes consultas haciendo uso de la función MATCH, para buscar todos los productos que:
```sql
-- Contienen la palabra planta en el nombre o en la descripción. - Realice una consulta para cada uno de los modos de búsqueda full-text que existen en MySQL (IN NATURAL LANGUAGE MODE, IN BOOLEAN MODE y WITH QUERY EXPANSION) y compare los resultados que ha obtenido en cada caso.
-- Contienen la palabra planta seguida de cualquier carácter o conjunto de caracteres, en el nombre o en la descripción.
-- Empiezan con la palabra planta en el nombre o en la descripción.
-- Contienen la palabra tronco o la palabra árbol en el nombre o en la descripción.
-- Contienen la palabra tronco y la palabra árbol en el nombre o en la descripción.
-- Contienen la palabra tronco pero no contienen la palabra árbol en el nombre o en la descripción.
-- Contiene la frase proviene de las costas en el nombre o en la descripción.
-- Crea un índice de tipo INDEX compuesto por las columnas apellido_contacto y nombre_contacto de la tabla cliente.
-- Una vez creado el índice del ejercicio anterior realice las siguientes consultas haciendo uso de EXPLAIN:
    -- Busca el cliente Javier Villar. ¿Cuántas filas se han examinado hasta encontrar el resultado?
    -- Busca el cliente anterior utilizando solamente el apellido Villar.
    -- ¿Cuántas filas se han examinado hasta encontrar el resultado?
    -- Busca el cliente anterior utilizando solamente el nombre Javier. ¿Cuántas filas se han examinado hasta encontrar el resultado? ¿Qué ha ocurrido en este caso?
-- Calcula cuál podría ser un buen valor para crear un índice sobre un prefijo de la columna nombre_cliente de la tabla cliente. Tenga en cuenta que un buen valor será aquel que nos permita utilizar el menor número de caracteres para diferenciar todos los valores que existen en la columna sobre la que estamos creando el índice.
    -- En primer lugar calculamos cuántos valores distintos existen en la columna nombre_cliente. Necesitarás utilizar la función COUNT y DISTINCT.
    -- Haciendo uso de la función LEFT ve calculando el número de caracteres que necesitas utilizar como prefijo para diferenciar todos los valores de la columna. Necesitarás la función COUNT, DISTINCT y LEFT.
    -- Una vez que hayas encontrado el valor adecuado para el prefijo, crea el índice sobre la columna nombre_cliente de la tabla cliente.
    -- Ejecuta algunas consultas de prueba sobre el índice que acabas de crear.

```

## Vistas
```sql
-- Escriba una vista que se llame listado_pagos_clientes que muestre un listado donde aparezcan todos los clientes y los pagos que ha realizado cada uno de ellos. La vista deberá tener las siguientes columnas: nombre y apellidos del cliente concatenados, teléfono, ciudad, pais, fecha_pago, total del pago, id de la transacción
Create view listado_pagos_clientes as
select CONCAT(c.nombre_contacto, ' ', c.apellido_contacto) as "Nombre_completo", c.telefono, c.ciudad, c.pais, p.fecha_pago, p.total, p.id_transaccion from cliente as c JOIN pago as p ON c.codigo_cliente=p.codigo_cliente;
/**
+------------------------------------------------+-------------+--------------------------+-----------+------------+----------+----------------+
| CONCAT(c.nombre_contacto, c.apellido_contacto) | telefono    | ciudad                   | pais      | fecha_pago | total    | id_transaccion |
+------------------------------------------------+-------------+--------------------------+-----------+------------+----------+----------------+
| Daniel GGoldFish                               | 5556901745  | San Francisco            | USA       | 2008-11-10 |  2000.00 | ak-std-000001  |
| Daniel GGoldFish                               | 5556901745  | San Francisco            | USA       | 2008-12-10 |  2000.00 | ak-std-000002  |
| AnneWright                                     | 5557410345  | Miami                    | USA       | 2009-01-16 |  5000.00 | ak-std-000003  |
| AnneWright                                     | 5557410345  | Miami                    | USA       | 2009-02-16 |  5000.00 | ak-std-000004  |
| AnneWright                                     | 5557410345  | Miami                    | USA       | 2009-02-19 |   926.00 | ak-std-000005  |
| LinkFlaute                                     | 5552323129  | New York                 | USA       | 2007-01-08 | 20000.00 | ak-std-000006  |
| LinkFlaute                                     | 5552323129  | New York                 | USA       | 2007-01-08 | 20000.00 | ak-std-000007  |
| LinkFlaute                                     | 5552323129  | New York                 | USA       | 2007-01-08 | 20000.00 | ak-std-000008  |
| LinkFlaute                                     | 5552323129  | New York                 | USA       | 2007-01-08 | 20000.00 | ak-std-000009  |
| LinkFlaute                                     | 5552323129  | New York                 | USA       | 2007-01-08 |  1849.00 | ak-std-000010  |
| AkaneTendo                                     | 55591233210 | Miami                    | USA       | 2006-01-18 | 23794.00 | ak-std-000011  |
| JoseBermejo                                    | 654987321   | Madrid                   | Spain     | 2009-01-13 |  2390.00 | ak-std-000012  |
| GuillermoRengifo                               | 689234750   | Madrid                   | Spain     | 2009-01-06 |   929.00 | ak-std-000013  |
| PedroCamunas                                   | 34914873241 | San Lorenzo del Escorial | Spain     | 2008-08-04 |  2246.00 | ak-std-000014  |
| JuanRodriguez                                  | 34912453217 | Madrid                   | Spain     | 2008-07-15 |  4160.00 | ak-std-000015  |
| JavierVillar                                   | 654865643   | Madrid                   | Spain     | 2009-01-15 |  2081.00 | ak-std-000016  |
| JavierVillar                                   | 654865643   | Madrid                   | Spain     | 2009-02-15 | 10000.00 | ak-std-000035  |
| MariaRodriguez                                 | 666555444   | Fuenlabrada              | Spain     | 2009-02-16 |  4399.00 | ak-std-000017  |
| LuisMartinez                                   | 916458762   | Santa cruz de Tenerife   | Spain     | 2009-03-06 |   232.00 | ak-std-000018  |
| MariaSantillana                                | 915576622   | Sotogrande               | Spain     | 2009-03-26 |   272.00 | ak-std-000019  |
| Eva MaríaSánchez                               | 916877445   | Madrid                   | Spain     | 2008-03-18 | 18846.00 | ak-std-000020  |
| MatíasSan Martín                               | 916544147   | Madrid                   | Spain     | 2009-02-08 | 10972.00 | ak-std-000021  |
| BenitoLopez                                    | 675432926   | Getafe                   | Spain     | 2009-01-13 |  8489.00 | ak-std-000022  |
| SaraMarquez                                    | 675124537   | Fuenlabrada              | Spain     | 2009-01-16 |  7863.00 | ak-std-000024  |
| JacobJones                                     | 2 9261-2433 | Sydney                   | Australia | 2007-10-06 |  3321.00 | ak-std-000025  |
| JustinSmith                                    | 2 8005-7161 | Sydney                   | Australia | 2006-05-26 |  1171.00 | ak-std-000026  |
+------------------------------------------------+-------------+--------------------------+-----------+------------+----------+----------------+
**/

-- Escriba una vista que se llame listado_pedidos_clientes que muestre un listado donde aparezcan todos los clientes y los pedidos que ha realizado cada uno de ellos. La vista deberá tener las siguientes columnas: código del cliente, nombre y apellidos del cliente concatendados, teléfono, ciudad, pais, código del pedido, fecha del pedido, fecha esperada, fecha de entrega y la cantidad total del pedido, que será la suma del producto de todas las cantidades por el precio de cada unidad, que aparecen en cada línea de pedido.
create view listado_pedidos_clientes as
select c.codigo_cliente, CONCAT(c.nombre_contacto, c.apellido_contacto) as "Nombre y apellidos", c.telefono, c.pais, c.ciudad, p.codigo_pedido, p.fecha_pedido, p.fecha_esperada, p.fecha_entrega, SUM(dp.cantidad*dp.precio_unidad) as "total" from cliente as c JOIN pedido as p ON c.codigo_cliente=p.codigo_cliente JOIN detalle_pedido as dp ON p.codigo_pedido=dp.codigo_pedido group by p.codigo_pedido;
/**
+----------------+--------------------+-------------+-----------+--------------------------+---------------+--------------+----------------+---------------+----------+
| codigo_cliente | Nombre y apellidos | telefono    | pais      | ciudad                   | codigo_pedido | fecha_pedido | fecha_esperada | fecha_entrega | total    |
+----------------+--------------------+-------------+-----------+--------------------------+---------------+--------------+----------------+---------------+----------+
|              5 | AkaneTendo         | 55591233210 | USA       | Miami                    |             1 | 2006-01-17   | 2006-01-19     | 2006-01-19    |  1567.00 |
|              5 | AkaneTendo         | 55591233210 | USA       | Miami                    |             2 | 2007-10-23   | 2007-10-28     | 2007-10-26    |  7113.00 |
|              5 | AkaneTendo         | 55591233210 | USA       | Miami                    |             3 | 2008-06-20   | 2008-06-25     | NULL          | 10850.00 |
|              5 | AkaneTendo         | 55591233210 | USA       | Miami                    |             4 | 2009-01-20   | 2009-01-26     | NULL          |  2624.00 |
|              1 | Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |             8 | 2008-11-09   | 2008-11-14     | 2008-11-14    |  1065.00 |
|              1 | Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |             9 | 2008-12-22   | 2008-12-27     | 2008-12-28    |  2535.00 |
|              3 | AnneWright         | 5557410345  | USA       | Miami                    |            10 | 2009-01-15   | 2009-01-20     | NULL          |  2920.00 |
|              1 | Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |            11 | 2009-01-20   | 2009-01-27     | NULL          |   820.00 |
|              1 | Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |            12 | 2009-01-22   | 2009-01-27     | NULL          |   290.00 |
|              7 | JoseBermejo        | 654987321   | Spain     | Madrid                   |            13 | 2009-01-12   | 2009-01-14     | 2009-01-15    |   738.00 |
|              7 | JoseBermejo        | 654987321   | Spain     | Madrid                   |            14 | 2009-01-02   | 2009-01-02     | NULL          |   829.00 |
|              7 | JoseBermejo        | 654987321   | Spain     | Madrid                   |            15 | 2009-01-09   | 2009-01-12     | 2009-01-11    |   214.00 |
|              7 | JoseBermejo        | 654987321   | Spain     | Madrid                   |            16 | 2009-01-06   | 2009-01-07     | 2009-01-15    |   234.00 |
|              7 | JoseBermejo        | 654987321   | Spain     | Madrid                   |            17 | 2009-01-08   | 2009-01-09     | 2009-01-11    |   375.00 |
|              9 | GuillermoRengifo   | 689234750   | Spain     | Madrid                   |            18 | 2009-01-05   | 2009-01-06     | 2009-01-07    |   116.00 |
|              9 | GuillermoRengifo   | 689234750   | Spain     | Madrid                   |            19 | 2009-01-18   | 2009-02-12     | NULL          |   333.00 |
|              9 | GuillermoRengifo   | 689234750   | Spain     | Madrid                   |            20 | 2009-01-20   | 2009-02-15     | NULL          |   292.00 |
|              9 | GuillermoRengifo   | 689234750   | Spain     | Madrid                   |            21 | 2009-01-09   | 2009-01-09     | 2009-01-09    |   182.00 |
|              9 | GuillermoRengifo   | 689234750   | Spain     | Madrid                   |            22 | 2009-01-11   | 2009-01-11     | 2009-01-13    |     6.00 |
|              5 | AkaneTendo         | 55591233210 | USA       | Miami                    |            23 | 2008-12-30   | 2009-01-10     | NULL          |  1640.00 |
|             14 | JuanRodriguez      | 34912453217 | Spain     | Madrid                   |            24 | 2008-07-14   | 2008-07-31     | 2008-07-25    |   287.00 |
|              1 | Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |            25 | 2009-02-02   | 2009-02-08     | NULL          |  1455.00 |
|              3 | AnneWright         | 5557410345  | USA       | Miami                    |            26 | 2009-02-06   | 2009-02-12     | NULL          |   675.00 |
|              3 | AnneWright         | 5557410345  | USA       | Miami                    |            27 | 2009-02-07   | 2009-02-13     | NULL          |   504.00 |
|              3 | AnneWright         | 5557410345  | USA       | Miami                    |            28 | 2009-02-10   | 2009-02-17     | 2009-02-20    |  2052.00 |
|             14 | JuanRodriguez      | 34912453217 | Spain     | Madrid                   |            29 | 2008-08-01   | 2008-09-01     | 2008-09-01    |  1324.00 |
|             13 | PedroCamunas       | 34914873241 | Spain     | San Lorenzo del Escorial |            30 | 2008-08-03   | 2008-09-03     | 2008-08-31    |   711.00 |
|             13 | PedroCamunas       | 34914873241 | Spain     | San Lorenzo del Escorial |            31 | 2008-09-04   | 2008-09-30     | 2008-10-04    |   244.00 |
|              4 | LinkFlaute         | 5552323129  | USA       | New York                 |            32 | 2007-01-07   | 2007-01-19     | 2007-01-27    |  3089.00 |
|              4 | LinkFlaute         | 5552323129  | USA       | New York                 |            33 | 2007-05-20   | 2007-05-28     | NULL          | 73226.00 |
|              4 | LinkFlaute         | 5552323129  | USA       | New York                 |            34 | 2007-06-20   | 2008-06-28     | 2008-06-28    |  1532.00 |
|              4 | LinkFlaute         | 5552323129  | USA       | New York                 |            35 | 2008-03-10   | 2009-03-20     | NULL          |  1718.00 |
|             14 | JuanRodriguez      | 34912453217 | Spain     | Madrid                   |            36 | 2008-10-15   | 2008-12-15     | 2008-12-10    |   311.00 |
|              4 | LinkFlaute         | 5552323129  | USA       | New York                 |            37 | 2008-11-03   | 2009-11-13     | NULL          |  2284.00 |
|             19 | LuisMartinez       | 916458762   | Spain     | Santa cruz de Tenerife   |            38 | 2009-03-05   | 2009-03-06     | 2009-03-07    |    98.00 |
|             19 | LuisMartinez       | 916458762   | Spain     | Santa cruz de Tenerife   |            39 | 2009-03-06   | 2009-03-07     | 2009-03-09    |   108.00 |
|             19 | LuisMartinez       | 916458762   | Spain     | Santa cruz de Tenerife   |            40 | 2009-03-09   | 2009-03-10     | 2009-03-13    |    12.00 |
|             19 | LuisMartinez       | 916458762   | Spain     | Santa cruz de Tenerife   |            41 | 2009-03-12   | 2009-03-13     | 2009-03-13    |    10.00 |
|             19 | LuisMartinez       | 916458762   | Spain     | Santa cruz de Tenerife   |            42 | 2009-03-22   | 2009-03-23     | 2009-03-27    |     4.00 |
|             23 | MariaSantillana    | 915576622   | Spain     | Sotogrande               |            43 | 2009-03-25   | 2009-03-26     | 2009-03-28    |     9.00 |
|             23 | MariaSantillana    | 915576622   | Spain     | Sotogrande               |            44 | 2009-03-26   | 2009-03-27     | 2009-03-30    |     5.00 |
|             23 | MariaSantillana    | 915576622   | Spain     | Sotogrande               |            45 | 2009-04-01   | 2009-03-04     | 2009-03-07    |    10.00 |
|             23 | MariaSantillana    | 915576622   | Spain     | Sotogrande               |            46 | 2009-04-03   | 2009-03-04     | 2009-03-05    |    84.00 |
|             23 | MariaSantillana    | 915576622   | Spain     | Sotogrande               |            47 | 2009-04-15   | 2009-03-17     | 2009-03-17    |   164.00 |
|             26 | Eva MaríaSánchez   | 916877445   | Spain     | Madrid                   |            48 | 2008-03-17   | 2008-03-30     | 2008-03-29    |  6398.00 |
|             26 | Eva MaríaSánchez   | 916877445   | Spain     | Madrid                   |            49 | 2008-07-12   | 2008-07-22     | 2008-07-30    |   625.00 |
|             26 | Eva MaríaSánchez   | 916877445   | Spain     | Madrid                   |            50 | 2008-03-17   | 2008-08-09     | NULL          |  3506.00 |
|             26 | Eva MaríaSánchez   | 916877445   | Spain     | Madrid                   |            51 | 2008-10-01   | 2008-10-14     | 2008-10-14    |  7750.00 |
|             26 | Eva MaríaSánchez   | 916877445   | Spain     | Madrid                   |            52 | 2008-12-07   | 2008-12-21     | NULL          |   700.00 |
|             13 | PedroCamunas       | 34914873241 | Spain     | San Lorenzo del Escorial |            53 | 2008-10-15   | 2008-11-15     | 2008-11-09    |   141.00 |
|             14 | JuanRodriguez      | 34912453217 | Spain     | Madrid                   |            54 | 2009-01-11   | 2009-02-11     | NULL          |   669.00 |
|             14 | JuanRodriguez      | 34912453217 | Spain     | Madrid                   |            55 | 2008-12-10   | 2009-01-10     | 2009-01-11    |  1569.00 |
|             13 | PedroCamunas       | 34914873241 | Spain     | San Lorenzo del Escorial |            56 | 2008-12-19   | 2009-01-20     | NULL          |   377.00 |
|             13 | PedroCamunas       | 34914873241 | Spain     | San Lorenzo del Escorial |            57 | 2009-01-05   | 2009-02-05     | NULL          |   773.00 |
|              3 | AnneWright         | 5557410345  | USA       | Miami                    |            58 | 2009-01-24   | 2009-01-31     | 2009-01-30    |  4775.00 |
|              1 | Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |            59 | 2008-11-09   | 2008-11-14     | 2008-11-14    |   700.00 |
|              1 | Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |            60 | 2008-12-22   | 2008-12-27     | 2008-12-28    |   700.00 |
|              3 | AnneWright         | 5557410345  | USA       | Miami                    |            61 | 2009-01-15   | 2009-01-20     | NULL          |   700.00 |
|              1 | Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |            62 | 2009-01-20   | 2009-01-27     | NULL          |   700.00 |
|              1 | Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |            63 | 2009-01-22   | 2009-01-27     | NULL          |   700.00 |
|              1 | Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |            64 | 2009-01-24   | 2009-01-31     | 2009-01-30    |   700.00 |
|              1 | Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |            65 | 2009-02-02   | 2009-02-08     | NULL          |   700.00 |
|              3 | AnneWright         | 5557410345  | USA       | Miami                    |            66 | 2009-02-06   | 2009-02-12     | NULL          |   700.00 |
|              3 | AnneWright         | 5557410345  | USA       | Miami                    |            67 | 2009-02-07   | 2009-02-13     | NULL          |   700.00 |
|              3 | AnneWright         | 5557410345  | USA       | Miami                    |            68 | 2009-02-10   | 2009-02-17     | 2009-02-20    |   700.00 |
|             15 | JavierVillar       | 654865643   | Spain     | Madrid                   |            74 | 2009-01-14   | 2009-01-22     | NULL          |  3562.00 |
|             15 | JavierVillar       | 654865643   | Spain     | Madrid                   |            75 | 2009-01-11   | 2009-01-13     | 2009-01-13    |  1048.00 |
|             15 | JavierVillar       | 654865643   | Spain     | Madrid                   |            76 | 2008-11-15   | 2008-11-23     | 2008-11-23    |  2223.00 |
|             15 | JavierVillar       | 654865643   | Spain     | Madrid                   |            77 | 2009-01-03   | 2009-01-08     | NULL          |   588.00 |
|             15 | JavierVillar       | 654865643   | Spain     | Madrid                   |            78 | 2008-12-15   | 2008-12-17     | 2008-12-17    |  4660.00 |
|             28 | BenitoLopez        | 675432926   | Spain     | Getafe                   |            79 | 2009-01-12   | 2009-01-13     | 2009-01-13    |   300.00 |
|             28 | BenitoLopez        | 675432926   | Spain     | Getafe                   |            80 | 2009-01-25   | 2009-01-26     | NULL          |  5773.00 |
|             28 | BenitoLopez        | 675432926   | Spain     | Getafe                   |            81 | 2009-01-18   | 2009-01-24     | NULL          |   120.00 |
|             28 | BenitoLopez        | 675432926   | Spain     | Getafe                   |            82 | 2009-01-20   | 2009-01-29     | 2009-01-29    |  2176.00 |
|             28 | BenitoLopez        | 675432926   | Spain     | Getafe                   |            83 | 2009-01-24   | 2009-01-28     | NULL          |   120.00 |
|             35 | JacobJones         | 2 9261-2433 | Australia | Sydney                   |            89 | 2007-10-05   | 2007-12-13     | 2007-12-10    |   710.00 |
|             27 | MatíasSan Martín   | 916544147   | Spain     | Madrid                   |            90 | 2009-02-07   | 2008-02-17     | NULL          |    41.00 |
|             27 | MatíasSan Martín   | 916544147   | Spain     | Madrid                   |            91 | 2009-03-18   | 2009-03-29     | 2009-03-27    |  1384.00 |
|             27 | MatíasSan Martín   | 916544147   | Spain     | Madrid                   |            92 | 2009-04-19   | 2009-04-30     | 2009-05-03    |  2906.00 |
|             27 | MatíasSan Martín   | 916544147   | Spain     | Madrid                   |            93 | 2009-05-03   | 2009-05-30     | 2009-05-17    |   882.00 |
|             27 | MatíasSan Martín   | 916544147   | Spain     | Madrid                   |            94 | 2009-10-18   | 2009-11-01     | NULL          |  5759.00 |
|             35 | JacobJones         | 2 9261-2433 | Australia | Sydney                   |            95 | 2008-01-04   | 2008-01-19     | 2008-01-19    |   605.00 |
|             35 | JacobJones         | 2 9261-2433 | Australia | Sydney                   |            96 | 2008-03-20   | 2008-04-12     | 2008-04-13    |   660.00 |
|             35 | JacobJones         | 2 9261-2433 | Australia | Sydney                   |            97 | 2008-10-08   | 2008-11-25     | 2008-11-25    |   322.00 |
|             35 | JacobJones         | 2 9261-2433 | Australia | Sydney                   |            98 | 2009-01-08   | 2009-02-13     | NULL          |  1024.00 |
|             16 | MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |            99 | 2009-02-15   | 2009-02-27     | NULL          |  2070.00 |
|             16 | MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |           100 | 2009-01-10   | 2009-01-15     | 2009-01-15    |   800.00 |
|             16 | MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |           101 | 2009-03-07   | 2009-03-27     | NULL          |   209.00 |
|             16 | MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |           102 | 2008-12-28   | 2009-01-08     | 2009-01-08    |   660.00 |
|             30 | SaraMarquez        | 675124537   | Spain     | Fuenlabrada              |           103 | 2009-01-15   | 2009-01-20     | 2009-01-24    |   304.00 |
|             30 | SaraMarquez        | 675124537   | Spain     | Fuenlabrada              |           104 | 2009-03-02   | 2009-03-06     | 2009-03-06    |  1760.00 |
|             30 | SaraMarquez        | 675124537   | Spain     | Fuenlabrada              |           105 | 2009-02-14   | 2009-02-20     | NULL          |  1506.00 |
|             30 | SaraMarquez        | 675124537   | Spain     | Fuenlabrada              |           106 | 2009-05-13   | 2009-05-15     | 2009-05-20    |  1077.00 |
|             30 | SaraMarquez        | 675124537   | Spain     | Fuenlabrada              |           107 | 2009-04-06   | 2009-04-10     | 2009-04-10    |  3216.00 |
|             16 | MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |           108 | 2009-04-09   | 2009-04-15     | 2009-04-15    |   660.00 |
|             38 | JustinSmith        | 2 8005-7161 | Australia | Sydney                   |           109 | 2006-05-25   | 2006-07-28     | 2006-07-28    |   553.00 |
|             38 | JustinSmith        | 2 8005-7161 | Australia | Sydney                   |           110 | 2007-03-19   | 2007-04-24     | 2007-04-24    |   149.00 |
|             36 | AntonioRomero      | 654352981   | Spain     | Madrid                   |           111 | 2008-03-05   | 2008-03-30     | 2008-03-30    |   700.00 |
|             36 | AntonioRomero      | 654352981   | Spain     | Madrid                   |           112 | 2009-03-05   | 2009-04-06     | 2009-05-07    |   700.00 |
|             36 | AntonioRomero      | 654352981   | Spain     | Madrid                   |           113 | 2008-10-28   | 2008-11-09     | 2009-01-09    |   700.00 |
|             36 | AntonioRomero      | 654352981   | Spain     | Madrid                   |           114 | 2009-01-15   | 2009-01-29     | 2009-01-31    |   700.00 |
|             36 | AntonioRomero      | 654352981   | Spain     | Madrid                   |           115 | 2008-11-29   | 2009-01-26     | 2009-02-27    |   700.00 |
|             38 | JustinSmith        | 2 8005-7161 | Australia | Sydney                   |           116 | 2008-06-28   | 2008-08-01     | 2008-08-01    |   264.00 |
|             38 | JustinSmith        | 2 8005-7161 | Australia | Sydney                   |           117 | 2008-08-25   | 2008-10-01     | NULL          |   154.00 |
|             16 | MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |           118 | 2009-02-15   | 2009-02-27     | NULL          |   700.00 |
|             16 | MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |           119 | 2009-01-10   | 2009-01-15     | 2009-01-15    |   700.00 |
|             16 | MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |           120 | 2009-03-07   | 2009-03-27     | NULL          |   700.00 |
|             16 | MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |           121 | 2008-12-28   | 2009-01-08     | 2009-01-08    |   700.00 |
|             16 | MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |           122 | 2009-04-09   | 2009-04-15     | 2009-04-15    |   700.00 |
|             30 | SaraMarquez        | 675124537   | Spain     | Fuenlabrada              |           123 | 2009-01-15   | 2009-01-20     | 2009-01-24    |   700.00 |
|             30 | SaraMarquez        | 675124537   | Spain     | Fuenlabrada              |           124 | 2009-03-02   | 2009-03-06     | 2009-03-06    |   700.00 |
|             30 | SaraMarquez        | 675124537   | Spain     | Fuenlabrada              |           125 | 2009-02-14   | 2009-02-20     | NULL          |   700.00 |
|             30 | SaraMarquez        | 675124537   | Spain     | Fuenlabrada              |           126 | 2009-05-13   | 2009-05-15     | 2009-05-20    |   700.00 |
|             30 | SaraMarquez        | 675124537   | Spain     | Fuenlabrada              |           127 | 2009-04-06   | 2009-04-10     | 2009-04-10    |   700.00 |
|             38 | JustinSmith        | 2 8005-7161 | Australia | Sydney                   |           128 | 2008-11-10   | 2008-12-10     | 2008-12-29    |    51.00 |
+----------------+--------------------+-------------+-----------+--------------------------+---------------+--------------+----------------+---------------+----------+
**/
-- Utilice las vistas que ha creado en los pasos anteriores para devolver un listado de los clientes de la ciudad de Madrid que han realizado pagos.
select Nombre_completo, telefono, pais, ciudad from listado_pagos_clientes where ciudad='Madrid';
/**
+---------------------+-------------+-------+--------+
| Nombre_completo     | telefono    | pais  | ciudad |
+---------------------+-------------+-------+--------+
| Jose Bermejo        | 654987321   | Spain | Madrid |
| Guillermo Rengifo   | 689234750   | Spain | Madrid |
| Juan Rodriguez      | 34912453217 | Spain | Madrid |
| Javier Villar       | 654865643   | Spain | Madrid |
| Javier Villar       | 654865643   | Spain | Madrid |
| Eva María Sánchez   | 916877445   | Spain | Madrid |
| Matías San Martín   | 916544147   | Spain | Madrid |
+---------------------+-------------+-------+--------+
**/
-- Utilice las vistas que ha creado en los pasos anteriores para devolver un listado de los clientes que todavía no han recibido su pedido.
select `Nombre y apellidos`, telefono, pais, ciudad from listado_pedidos_clientes where fecha_entrega is NULL;
/**
+--------------------+-------------+-----------+--------------------------+
| Nombre y apellidos | telefono    | pais      | ciudad                   |
+--------------------+-------------+-----------+--------------------------+
| AkaneTendo         | 55591233210 | USA       | Miami                    |
| AkaneTendo         | 55591233210 | USA       | Miami                    |
| AnneWright         | 5557410345  | USA       | Miami                    |
| Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |
| Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |
| JoseBermejo        | 654987321   | Spain     | Madrid                   |
| GuillermoRengifo   | 689234750   | Spain     | Madrid                   |
| GuillermoRengifo   | 689234750   | Spain     | Madrid                   |
| AkaneTendo         | 55591233210 | USA       | Miami                    |
| Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |
| AnneWright         | 5557410345  | USA       | Miami                    |
| AnneWright         | 5557410345  | USA       | Miami                    |
| LinkFlaute         | 5552323129  | USA       | New York                 |
| LinkFlaute         | 5552323129  | USA       | New York                 |
| LinkFlaute         | 5552323129  | USA       | New York                 |
| Eva MaríaSánchez   | 916877445   | Spain     | Madrid                   |
| Eva MaríaSánchez   | 916877445   | Spain     | Madrid                   |
| JuanRodriguez      | 34912453217 | Spain     | Madrid                   |
| PedroCamunas       | 34914873241 | Spain     | San Lorenzo del Escorial |
| PedroCamunas       | 34914873241 | Spain     | San Lorenzo del Escorial |
| AnneWright         | 5557410345  | USA       | Miami                    |
| Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |
| Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |
| Daniel GGoldFish   | 5556901745  | USA       | San Francisco            |
| AnneWright         | 5557410345  | USA       | Miami                    |
| AnneWright         | 5557410345  | USA       | Miami                    |
| JavierVillar       | 654865643   | Spain     | Madrid                   |
| JavierVillar       | 654865643   | Spain     | Madrid                   |
| BenitoLopez        | 675432926   | Spain     | Getafe                   |
| BenitoLopez        | 675432926   | Spain     | Getafe                   |
| BenitoLopez        | 675432926   | Spain     | Getafe                   |
| MatíasSan Martín   | 916544147   | Spain     | Madrid                   |
| MatíasSan Martín   | 916544147   | Spain     | Madrid                   |
| JacobJones         | 2 9261-2433 | Australia | Sydney                   |
| MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |
| MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |
| SaraMarquez        | 675124537   | Spain     | Fuenlabrada              |
| JustinSmith        | 2 8005-7161 | Australia | Sydney                   |
| MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |
| MariaRodriguez     | 666555444   | Spain     | Fuenlabrada              |
| SaraMarquez        | 675124537   | Spain     | Fuenlabrada              |
+--------------------+-------------+-----------+--------------------------+
**/
-- Utilice las vistas que ha creado en los pasos anteriores para calcular el número de pedidos que se ha realizado cada uno de los clientes.
select `Nombre y apellidos`, COUNT(codigo_pedido) as "Numero de pedidos" from listado_pedidos_clientes group by codigo_cliente;
/**
+--------------------+-------------------+
| Nombre y apellidos | Numero de pedidos |
+--------------------+-------------------+
| AkaneTendo         |                 5 |
| Daniel GGoldFish   |                11 |
| AnneWright         |                 9 |
| JoseBermejo        |                 5 |
| GuillermoRengifo   |                 5 |
| JuanRodriguez      |                 5 |
| PedroCamunas       |                 5 |
| LinkFlaute         |                 5 |
| LuisMartinez       |                 5 |
| MariaSantillana    |                 5 |
| Eva MaríaSánchez   |                 5 |
| JavierVillar       |                 5 |
| BenitoLopez        |                 5 |
| JacobJones         |                 5 |
| MatíasSan Martín   |                 5 |
| MariaRodriguez     |                10 |
| SaraMarquez        |                10 |
| JustinSmith        |                 5 |
| AntonioRomero      |                 5 |
+--------------------+-------------------+
**/
-- Utilice las vistas que ha creado en los pasos anteriores para calcular el valor del pedido máximo y mínimo que ha realizado cada cliente.
select `Nombre y apellidos`, MAX(total) as "Maximo", MIN(total) as "Minimo" from listado_pedidos_clientes group by codigo_cliente;
/**
+--------------------+----------+---------+
| Nombre y apellidos | Maximo   | Minimo  |
+--------------------+----------+---------+
| AkaneTendo         | 10850.00 | 1567.00 |
| Daniel GGoldFish   |  2535.00 |  290.00 |
| AnneWright         |  4775.00 |  504.00 |
| JoseBermejo        |   829.00 |  214.00 |
| GuillermoRengifo   |   333.00 |    6.00 |
| JuanRodriguez      |  1569.00 |  287.00 |
| PedroCamunas       |   773.00 |  141.00 |
| LinkFlaute         | 73226.00 | 1532.00 |
| LuisMartinez       |   108.00 |    4.00 |
| MariaSantillana    |   164.00 |    5.00 |
| Eva MaríaSánchez   |  7750.00 |  625.00 |
| JavierVillar       |  4660.00 |  588.00 |
| BenitoLopez        |  5773.00 |  120.00 |
| JacobJones         |  1024.00 |  322.00 |
| MatíasSan Martín   |  5759.00 |   41.00 |
| MariaRodriguez     |  2070.00 |  209.00 |
| SaraMarquez        |  3216.00 |  304.00 |
| JustinSmith        |   553.00 |   51.00 |
| AntonioRomero      |   700.00 |  700.00 |
+--------------------+----------+---------+
**/
-- Modifique el nombre de las vista listado_pagos_clientes y asígnele el nombre listado_de_pagos. Una vez que haya modificado el nombre de la vista ejecute una consulta utilizando el nuevo nombre de la vista para comprobar que sigue funcionando correctamente.
create view listado_de_pagos as
select * from listado_pagos_clientes;
-- Query OK, 0 rows affected (0,01 sec)
drop view listado_pagos_clientes;
-- Query OK, 0 rows affected (0,01 sec)

-- Elimine las vistas que ha creado en los pasos anteriores.
drop view listado_de_pagos;
-- Query OK, 0 rows affected (0,01 sec)
drop view listado_pedidos_clientes;
-- Query OK, 0 rows affected (0,00 sec)
```

</div>