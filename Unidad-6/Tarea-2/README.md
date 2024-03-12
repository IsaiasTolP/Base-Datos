<div align="justify">

# <div align="center">Tarea 2 MySQL</div>

## Base de datos MySQL
```sql
-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS practica_joins;

-- Usar la base de datos
USE practica_joins;

-- Crear la tabla de clientes
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT AUTO_INCREMENT  PRIMARY KEY,
    nombre Varchar(50),
    direccion Varchar(100)
);

-- Insertar 20 registros de ejemplo en la tabla de clientes
INSERT INTO clientes (nombre, direccion) VALUES
    ('Cliente 1', 'Dirección 1'),
    ('Cliente 2', 'Dirección 2'),
    ('Cliente 3', 'Dirección 3'),
    ('Cliente 4', 'Dirección 4'),
    ('Cliente 5', 'Dirección 5'),
    ('Cliente 6', 'Dirección 6'),
    ('Cliente 7', 'Dirección 7'),
    ('Cliente 8', 'Dirección 8'),
    ('Cliente 9', 'Dirección 9'),
    ('Cliente 10', 'Dirección 10'),
    ('Cliente 11', 'Dirección 11'),
    ('Cliente 12', 'Dirección 12'),
    ('Cliente 13', 'Dirección 13'),
    ('Cliente 14', 'Dirección 14'),
    ('Cliente 15', 'Dirección 15'),
    ('Cliente 16', 'Dirección 16'),
    ('Cliente 17', 'Dirección 17'),
    ('Cliente 18', 'Dirección 18'),
    ('Cliente 19', 'Dirección 19'),
    ('Cliente 20', 'Dirección 20');

-- Crear la tabla de productos
CREATE TABLE IF NOT EXISTS productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre Varchar(50),
    precio FLOAT(8, 2)
);

-- Insertar 20 registros de ejemplo en la tabla de productos
INSERT INTO productos (nombre, precio) VALUES
    ('Producto 1', 10.99),
    ('Producto 2', 20.50),
    ('Producto 3', 30.99),
    ('Producto 4', 40.50),
    ('Producto 5', 50.99),
    ('Producto 6', 60.50),
    ('Producto 7', 70.99),
    ('Producto 8', 80.50),
    ('Producto 9', 90.99),
    ('Producto 10', 100.50),
    ('Producto 11', 110.99),
    ('Producto 12', 120.50),
    ('Producto 13', 130.99),
    ('Producto 14', 140.50),
    ('Producto 15', 150.99),
    ('Producto 16', 160.50),
    ('Producto 17', 170.99),
    ('Producto 18', 180.50),
    ('Producto 19', 190.99),
    ('Producto 20', 200.50);

-- Crear la tabla de órdenes
CREATE TABLE IF NOT EXISTS ordenes (
    id_orden INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

-- Insertar 20 registros de ejemplo en la tabla de órdenes
INSERT INTO ordenes (id_cliente, id_producto, cantidad) VALUES
    (1, 1, 2),
    (2, 2, 1),
    (3, 3, 3),
    (4, 4, 2),
    (5, 5, 1),
    (6, 6, 2),
    (7, 7, 3),
    (8, 8, 2),
    (9, 9, 1),
    (10, 10, 2),
    (11, 11, 3),
    (12, 12, 2),
    (13, 13, 1),
    (14, 14, 2),
    (15, 15, 3),
    (16, 16, 2),
    (17, 17, 1),
    (18, 18, 2),
    (19, 19, 3),
    (20, 20, 2);
```

## Consultas SQL

### Consultas simples
```sql
-- Mostrar todos los clientes.
select * from clientes;
/**
+------------+------------+---------------+
| id_cliente | nombre     | direccion     |
+------------+------------+---------------+
|          1 | Cliente 1  | Dirección 1   |
|          2 | Cliente 2  | Dirección 2   |
|          3 | Cliente 3  | Dirección 3   |
|          4 | Cliente 4  | Dirección 4   |
|          5 | Cliente 5  | Dirección 5   |
|          6 | Cliente 6  | Dirección 6   |
|          7 | Cliente 7  | Dirección 7   |
|          8 | Cliente 8  | Dirección 8   |
|          9 | Cliente 9  | Dirección 9   |
|         10 | Cliente 10 | Dirección 10  |
|         11 | Cliente 11 | Dirección 11  |
|         12 | Cliente 12 | Dirección 12  |
|         13 | Cliente 13 | Dirección 13  |
|         14 | Cliente 14 | Dirección 14  |
|         15 | Cliente 15 | Dirección 15  |
|         16 | Cliente 16 | Dirección 16  |
|         17 | Cliente 17 | Dirección 17  |
|         18 | Cliente 18 | Dirección 18  |
|         19 | Cliente 19 | Dirección 19  |
|         20 | Cliente 20 | Dirección 20  |
+------------+------------+---------------+
**/
-- Mostrar todos los productos.
select * from productos;
/**
+-------------+-------------+--------+
| id_producto | nombre      | precio |
+-------------+-------------+--------+
|           1 | Producto 1  |  10.99 |
|           2 | Producto 2  |  20.50 |
|           3 | Producto 3  |  30.99 |
|           4 | Producto 4  |  40.50 |
|           5 | Producto 5  |  50.99 |
|           6 | Producto 6  |  60.50 |
|           7 | Producto 7  |  70.99 |
|           8 | Producto 8  |  80.50 |
|           9 | Producto 9  |  90.99 |
|          10 | Producto 10 | 100.50 |
|          11 | Producto 11 | 110.99 |
|          12 | Producto 12 | 120.50 |
|          13 | Producto 13 | 130.99 |
|          14 | Producto 14 | 140.50 |
|          15 | Producto 15 | 150.99 |
|          16 | Producto 16 | 160.50 |
|          17 | Producto 17 | 170.99 |
|          18 | Producto 18 | 180.50 |
|          19 | Producto 19 | 190.99 |
|          20 | Producto 20 | 200.50 |
+-------------+-------------+--------+
**/
-- Mostrar todas las órdenes.
select * from ordenes;
/**
+----------+------------+-------------+----------+
| id_orden | id_cliente | id_producto | cantidad |
+----------+------------+-------------+----------+
|        1 |          1 |           1 |        2 |
|        2 |          2 |           2 |        1 |
|        3 |          3 |           3 |        3 |
|        4 |          4 |           4 |        2 |
|        5 |          5 |           5 |        1 |
|        6 |          6 |           6 |        2 |
|        7 |          7 |           7 |        3 |
|        8 |          8 |           8 |        2 |
|        9 |          9 |           9 |        1 |
|       10 |         10 |          10 |        2 |
|       11 |         11 |          11 |        3 |
|       12 |         12 |          12 |        2 |
|       13 |         13 |          13 |        1 |
|       14 |         14 |          14 |        2 |
|       15 |         15 |          15 |        3 |
|       16 |         16 |          16 |        2 |
|       17 |         17 |          17 |        1 |
|       18 |         18 |          18 |        2 |
|       19 |         19 |          19 |        3 |
|       20 |         20 |          20 |        2 |
+----------+------------+-------------+----------+
**/
-- Mostrar los primeros 5 clientes ordenados por nombre.
select * from clientes order by nombre LIMIT 5;
/**
+------------+------------+---------------+
| id_cliente | nombre     | direccion     |
+------------+------------+---------------+
|          1 | Cliente 1  | Dirección 1   |
|         10 | Cliente 10 | Dirección 10  |
|         11 | Cliente 11 | Dirección 11  |
|         12 | Cliente 12 | Dirección 12  |
|         13 | Cliente 13 | Dirección 13  |
+------------+------------+---------------+
**/
-- Mostrar los productos con un precio mayor a 50.
select * from productos where precio > 50;
/**
+-------------+-------------+--------+
| id_producto | nombre      | precio |
+-------------+-------------+--------+
|           5 | Producto 5  |  50.99 |
|           6 | Producto 6  |  60.50 |
|           7 | Producto 7  |  70.99 |
|           8 | Producto 8  |  80.50 |
|           9 | Producto 9  |  90.99 |
|          10 | Producto 10 | 100.50 |
|          11 | Producto 11 | 110.99 |
|          12 | Producto 12 | 120.50 |
|          13 | Producto 13 | 130.99 |
|          14 | Producto 14 | 140.50 |
|          15 | Producto 15 | 150.99 |
|          16 | Producto 16 | 160.50 |
|          17 | Producto 17 | 170.99 |
|          18 | Producto 18 | 180.50 |
|          19 | Producto 19 | 190.99 |
|          20 | Producto 20 | 200.50 |
+-------------+-------------+--------+
**/
-- Mostrar todas las órdenes realizadas por el cliente con ID 1.
select * from ordenes where id_cliente = 1;
/**
+----------+------------+-------------+----------+
| id_orden | id_cliente | id_producto | cantidad |
+----------+------------+-------------+----------+
|        1 |          1 |           1 |        2 |
+----------+------------+-------------+----------+
**/
-- Mostrar los clientes cuyos nombres comienzan con la letra "M".
select * from clientes where nombre regexp '^M';
/**
No hay
**/
-- Mostrar las órdenes que contienen más de 2 productos.
select * from ordenes where cantidad > 2;
/**
+----------+------------+-------------+----------+
| id_orden | id_cliente | id_producto | cantidad |
+----------+------------+-------------+----------+
|        3 |          3 |           3 |        3 |
|        7 |          7 |           7 |        3 |
|       11 |         11 |          11 |        3 |
|       15 |         15 |          15 |        3 |
|       19 |         19 |          19 |        3 |
+----------+------------+-------------+----------+
**/
-- Mostrar los productos ordenados por precio de forma descendente.
select * from productos order by precio DESC;
/**
+-------------+-------------+--------+
| id_producto | nombre      | precio |
+-------------+-------------+--------+
|          20 | Producto 20 | 200.50 |
|          19 | Producto 19 | 190.99 |
|          18 | Producto 18 | 180.50 |
|          17 | Producto 17 | 170.99 |
|          16 | Producto 16 | 160.50 |
|          15 | Producto 15 | 150.99 |
|          14 | Producto 14 | 140.50 |
|          13 | Producto 13 | 130.99 |
|          12 | Producto 12 | 120.50 |
|          11 | Producto 11 | 110.99 |
|          10 | Producto 10 | 100.50 |
|           9 | Producto 9  |  90.99 |
|           8 | Producto 8  |  80.50 |
|           7 | Producto 7  |  70.99 |
|           6 | Producto 6  |  60.50 |
|           5 | Producto 5  |  50.99 |
|           4 | Producto 4  |  40.50 |
|           3 | Producto 3  |  30.99 |
|           2 | Producto 2  |  20.50 |
|           1 | Producto 1  |  10.99 |
+-------------+-------------+--------+
**/
```

### Consultas de ejemplo para practicar joins

```sql
-- Seleccionar todos los clientes y sus órdenes, incluso si no tienen órdenes
select * from clientes as c LEFT JOIN ordenes as o ON c.id_cliente=o.id_cliente;
/**
+------------+------------+---------------+----------+------------+-------------+----------+
| id_cliente | nombre     | direccion     | id_orden | id_cliente | id_producto | cantidad |
+------------+------------+---------------+----------+------------+-------------+----------+
|          1 | Cliente 1  | Dirección 1   |        1 |          1 |           1 |        2 |
|          2 | Cliente 2  | Dirección 2   |        2 |          2 |           2 |        1 |
|          3 | Cliente 3  | Dirección 3   |        3 |          3 |           3 |        3 |
|          4 | Cliente 4  | Dirección 4   |        4 |          4 |           4 |        2 |
|          5 | Cliente 5  | Dirección 5   |        5 |          5 |           5 |        1 |
|          6 | Cliente 6  | Dirección 6   |        6 |          6 |           6 |        2 |
|          7 | Cliente 7  | Dirección 7   |        7 |          7 |           7 |        3 |
|          8 | Cliente 8  | Dirección 8   |        8 |          8 |           8 |        2 |
|          9 | Cliente 9  | Dirección 9   |        9 |          9 |           9 |        1 |
|         10 | Cliente 10 | Dirección 10  |       10 |         10 |          10 |        2 |
|         11 | Cliente 11 | Dirección 11  |       11 |         11 |          11 |        3 |
|         12 | Cliente 12 | Dirección 12  |       12 |         12 |          12 |        2 |
|         13 | Cliente 13 | Dirección 13  |       13 |         13 |          13 |        1 |
|         14 | Cliente 14 | Dirección 14  |       14 |         14 |          14 |        2 |
|         15 | Cliente 15 | Dirección 15  |       15 |         15 |          15 |        3 |
|         16 | Cliente 16 | Dirección 16  |       16 |         16 |          16 |        2 |
|         17 | Cliente 17 | Dirección 17  |       17 |         17 |          17 |        1 |
|         18 | Cliente 18 | Dirección 18  |       18 |         18 |          18 |        2 |
|         19 | Cliente 19 | Dirección 19  |       19 |         19 |          19 |        3 |
|         20 | Cliente 20 | Dirección 20  |       20 |         20 |          20 |        2 |
+------------+------------+---------------+----------+------------+-------------+----------+
**/
-- Seleccionar todas las órdenes junto con los productos correspondientes
select * from productos as p INNER JOIN ordenes as o ON p.id_producto=o.id_producto;
/**
+-------------+-------------+--------+----------+------------+-------------+----------+
| id_producto | nombre      | precio | id_orden | id_cliente | id_producto | cantidad |
+-------------+-------------+--------+----------+------------+-------------+----------+
|           1 | Producto 1  |  10.99 |        1 |          1 |           1 |        2 |
|           2 | Producto 2  |  20.50 |        2 |          2 |           2 |        1 |
|           3 | Producto 3  |  30.99 |        3 |          3 |           3 |        3 |
|           4 | Producto 4  |  40.50 |        4 |          4 |           4 |        2 |
|           5 | Producto 5  |  50.99 |        5 |          5 |           5 |        1 |
|           6 | Producto 6  |  60.50 |        6 |          6 |           6 |        2 |
|           7 | Producto 7  |  70.99 |        7 |          7 |           7 |        3 |
|           8 | Producto 8  |  80.50 |        8 |          8 |           8 |        2 |
|           9 | Producto 9  |  90.99 |        9 |          9 |           9 |        1 |
|          10 | Producto 10 | 100.50 |       10 |         10 |          10 |        2 |
|          11 | Producto 11 | 110.99 |       11 |         11 |          11 |        3 |
|          12 | Producto 12 | 120.50 |       12 |         12 |          12 |        2 |
|          13 | Producto 13 | 130.99 |       13 |         13 |          13 |        1 |
|          14 | Producto 14 | 140.50 |       14 |         14 |          14 |        2 |
|          15 | Producto 15 | 150.99 |       15 |         15 |          15 |        3 |
|          16 | Producto 16 | 160.50 |       16 |         16 |          16 |        2 |
|          17 | Producto 17 | 170.99 |       17 |         17 |          17 |        1 |
|          18 | Producto 18 | 180.50 |       18 |         18 |          18 |        2 |
|          19 | Producto 19 | 190.99 |       19 |         19 |          19 |        3 |
|          20 | Producto 20 | 200.50 |       20 |         20 |          20 |        2 |
+-------------+-------------+--------+----------+------------+-------------+----------+
**/
-- Mostrar el nombre de los clientes que han realizado órdenes de productos que cuestan más de 50
select c.nombre from clientes as c INNER JOIN ordenes as o ON c.id_cliente=o.id_cliente
INNER JOIN productos as p ON o.id_producto=p.id_producto where p.precio > 50;
/**
+------------+
| nombre     |
+------------+
| Cliente 5  |
| Cliente 6  |
| Cliente 7  |
| Cliente 8  |
| Cliente 9  |
| Cliente 10 |
| Cliente 11 |
| Cliente 12 |
| Cliente 13 |
| Cliente 14 |
| Cliente 15 |
| Cliente 16 |
| Cliente 17 |
| Cliente 18 |
| Cliente 19 |
| Cliente 20 |
+------------+
**/
-- Obtener el nombre de los productos que no se han ordenado aún
select p.nombre from productos as p LEFT JOIN ordenes as o ON p.id_producto=o.id_producto where o.id_producto is NULL;
/**
No hay
**/
-- Mostrar el nombre del cliente, el producto y la cantidad para todas las órdenes
select c.nombre, p.nombre, o.cantidad from ordenes as o INNER JOIN productos as p ON p.id_producto=o.id_producto
INNER JOIN clientes as c ON c.id_cliente=o.id_cliente;
/**
+------------+-------------+----------+
| nombre     | nombre      | cantidad |
+------------+-------------+----------+
| Cliente 1  | Producto 1  |        2 |
| Cliente 2  | Producto 2  |        1 |
| Cliente 3  | Producto 3  |        3 |
| Cliente 4  | Producto 4  |        2 |
| Cliente 5  | Producto 5  |        1 |
| Cliente 6  | Producto 6  |        2 |
| Cliente 7  | Producto 7  |        3 |
| Cliente 8  | Producto 8  |        2 |
| Cliente 9  | Producto 9  |        1 |
| Cliente 10 | Producto 10 |        2 |
| Cliente 11 | Producto 11 |        3 |
| Cliente 12 | Producto 12 |        2 |
| Cliente 13 | Producto 13 |        1 |
| Cliente 14 | Producto 14 |        2 |
| Cliente 15 | Producto 15 |        3 |
| Cliente 16 | Producto 16 |        2 |
| Cliente 17 | Producto 17 |        1 |
| Cliente 18 | Producto 18 |        2 |
| Cliente 19 | Producto 19 |        3 |
| Cliente 20 | Producto 20 |        2 |
+------------+-------------+----------+
**/
-- Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos
select p.nombre, c.nombre from productos as p INNER JOIN ordenes as o ON p.id_producto=o.id_producto
INNER JOIN clientes as c ON c.id_cliente=o.id_cliente;
/**
+-------------+------------+
| nombre      | nombre     |
+-------------+------------+
| Producto 1  | Cliente 1  |
| Producto 2  | Cliente 2  |
| Producto 3  | Cliente 3  |
| Producto 4  | Cliente 4  |
| Producto 5  | Cliente 5  |
| Producto 6  | Cliente 6  |
| Producto 7  | Cliente 7  |
| Producto 8  | Cliente 8  |
| Producto 9  | Cliente 9  |
| Producto 10 | Cliente 10 |
| Producto 11 | Cliente 11 |
| Producto 12 | Cliente 12 |
| Producto 13 | Cliente 13 |
| Producto 14 | Cliente 14 |
| Producto 15 | Cliente 15 |
| Producto 16 | Cliente 16 |
| Producto 17 | Cliente 17 |
| Producto 18 | Cliente 18 |
| Producto 19 | Cliente 19 |
| Producto 20 | Cliente 20 |
+-------------+------------+
**/
-- Mostrar todas las órdenes con sus clientes y productos, incluso si no hay órdenes
select * from ordenes as o LEFT JOIN productos as p ON o.id_producto=p.id_producto
LEFT JOIN clientes as c ON o.id_cliente=c.id_cliente;
/**
+----------+------------+-------------+----------+-------------+-------------+--------+------------+------------+---------------+
| id_orden | id_cliente | id_producto | cantidad | id_producto | nombre      | precio | id_cliente | nombre     | direccion     |
+----------+------------+-------------+----------+-------------+-------------+--------+------------+------------+---------------+
|        1 |          1 |           1 |        2 |           1 | Producto 1  |  10.99 |          1 | Cliente 1  | Dirección 1   |
|        2 |          2 |           2 |        1 |           2 | Producto 2  |  20.50 |          2 | Cliente 2  | Dirección 2   |
|        3 |          3 |           3 |        3 |           3 | Producto 3  |  30.99 |          3 | Cliente 3  | Dirección 3   |
|        4 |          4 |           4 |        2 |           4 | Producto 4  |  40.50 |          4 | Cliente 4  | Dirección 4   |
|        5 |          5 |           5 |        1 |           5 | Producto 5  |  50.99 |          5 | Cliente 5  | Dirección 5   |
|        6 |          6 |           6 |        2 |           6 | Producto 6  |  60.50 |          6 | Cliente 6  | Dirección 6   |
|        7 |          7 |           7 |        3 |           7 | Producto 7  |  70.99 |          7 | Cliente 7  | Dirección 7   |
|        8 |          8 |           8 |        2 |           8 | Producto 8  |  80.50 |          8 | Cliente 8  | Dirección 8   |
|        9 |          9 |           9 |        1 |           9 | Producto 9  |  90.99 |          9 | Cliente 9  | Dirección 9   |
|       10 |         10 |          10 |        2 |          10 | Producto 10 | 100.50 |         10 | Cliente 10 | Dirección 10  |
|       11 |         11 |          11 |        3 |          11 | Producto 11 | 110.99 |         11 | Cliente 11 | Dirección 11  |
|       12 |         12 |          12 |        2 |          12 | Producto 12 | 120.50 |         12 | Cliente 12 | Dirección 12  |
|       13 |         13 |          13 |        1 |          13 | Producto 13 | 130.99 |         13 | Cliente 13 | Dirección 13  |
|       14 |         14 |          14 |        2 |          14 | Producto 14 | 140.50 |         14 | Cliente 14 | Dirección 14  |
|       15 |         15 |          15 |        3 |          15 | Producto 15 | 150.99 |         15 | Cliente 15 | Dirección 15  |
|       16 |         16 |          16 |        2 |          16 | Producto 16 | 160.50 |         16 | Cliente 16 | Dirección 16  |
|       17 |         17 |          17 |        1 |          17 | Producto 17 | 170.99 |         17 | Cliente 17 | Dirección 17  |
|       18 |         18 |          18 |        2 |          18 | Producto 18 | 180.50 |         18 | Cliente 18 | Dirección 18  |
|       19 |         19 |          19 |        3 |          19 | Producto 19 | 190.99 |         19 | Cliente 19 | Dirección 19  |
|       20 |         20 |          20 |        2 |          20 | Producto 20 | 200.50 |         20 | Cliente 20 | Dirección 20  |
+----------+------------+-------------+----------+-------------+-------------+--------+------------+------------+---------------+
**/
-- Obtener el nombre de los clientes junto con el número total de órdenes que han realizado
select c.nombre, COUNT(o.id_orden) as "Numero de ordenes" from clientes as c INNER JOIN ordenes as o ON c.id_cliente=o.id_cliente group by c.id_cliente;
/**
+------------+-------------------+
| nombre     | Numero de ordenes |
+------------+-------------------+
| Cliente 1  |                 1 |
| Cliente 2  |                 1 |
| Cliente 3  |                 1 |
| Cliente 4  |                 1 |
| Cliente 5  |                 1 |
| Cliente 6  |                 1 |
| Cliente 7  |                 1 |
| Cliente 8  |                 1 |
| Cliente 9  |                 1 |
| Cliente 10 |                 1 |
| Cliente 11 |                 1 |
| Cliente 12 |                 1 |
| Cliente 13 |                 1 |
| Cliente 14 |                 1 |
| Cliente 15 |                 1 |
| Cliente 16 |                 1 |
| Cliente 17 |                 1 |
| Cliente 18 |                 1 |
| Cliente 19 |                 1 |
| Cliente 20 |                 1 |
+------------+-------------------+
**/
-- Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto
select o.*, c.nombre, p.nombre from ordenes as o INNER JOIN clientes as c ON o.id_cliente=c.id_cliente
INNER JOIN productos as p ON o.id_producto=p.id_producto;
/**
+----------+------------+-------------+----------+------------+-------------+
| id_orden | id_cliente | id_producto | cantidad | nombre     | nombre      |
+----------+------------+-------------+----------+------------+-------------+
|        1 |          1 |           1 |        2 | Cliente 1  | Producto 1  |
|        2 |          2 |           2 |        1 | Cliente 2  | Producto 2  |
|        3 |          3 |           3 |        3 | Cliente 3  | Producto 3  |
|        4 |          4 |           4 |        2 | Cliente 4  | Producto 4  |
|        5 |          5 |           5 |        1 | Cliente 5  | Producto 5  |
|        6 |          6 |           6 |        2 | Cliente 6  | Producto 6  |
|        7 |          7 |           7 |        3 | Cliente 7  | Producto 7  |
|        8 |          8 |           8 |        2 | Cliente 8  | Producto 8  |
|        9 |          9 |           9 |        1 | Cliente 9  | Producto 9  |
|       10 |         10 |          10 |        2 | Cliente 10 | Producto 10 |
|       11 |         11 |          11 |        3 | Cliente 11 | Producto 11 |
|       12 |         12 |          12 |        2 | Cliente 12 | Producto 12 |
|       13 |         13 |          13 |        1 | Cliente 13 | Producto 13 |
|       14 |         14 |          14 |        2 | Cliente 14 | Producto 14 |
|       15 |         15 |          15 |        3 | Cliente 15 | Producto 15 |
|       16 |         16 |          16 |        2 | Cliente 16 | Producto 16 |
|       17 |         17 |          17 |        1 | Cliente 17 | Producto 17 |
|       18 |         18 |          18 |        2 | Cliente 18 | Producto 18 |
|       19 |         19 |          19 |        3 | Cliente 19 | Producto 19 |
|       20 |         20 |          20 |        2 | Cliente 20 | Producto 20 |
+----------+------------+-------------+----------+------------+-------------+
**/
-- Mostrar todas las órdenes con sus productos y clientes, incluso si no hay información de cliente.
select * from ordenes as o LEFT JOIN clientes as c ON o.id_cliente=c.id_cliente
INNER JOIN productos as p ON o.id_producto=p.id_producto;
/**
+----------+------------+-------------+----------+------------+------------+---------------+-------------+-------------+--------+
| id_orden | id_cliente | id_producto | cantidad | id_cliente | nombre     | direccion     | id_producto | nombre      | precio |
+----------+------------+-------------+----------+------------+------------+---------------+-------------+-------------+--------+
|        1 |          1 |           1 |        2 |          1 | Cliente 1  | Dirección 1   |           1 | Producto 1  |  10.99 |
|        2 |          2 |           2 |        1 |          2 | Cliente 2  | Dirección 2   |           2 | Producto 2  |  20.50 |
|        3 |          3 |           3 |        3 |          3 | Cliente 3  | Dirección 3   |           3 | Producto 3  |  30.99 |
|        4 |          4 |           4 |        2 |          4 | Cliente 4  | Dirección 4   |           4 | Producto 4  |  40.50 |
|        5 |          5 |           5 |        1 |          5 | Cliente 5  | Dirección 5   |           5 | Producto 5  |  50.99 |
|        6 |          6 |           6 |        2 |          6 | Cliente 6  | Dirección 6   |           6 | Producto 6  |  60.50 |
|        7 |          7 |           7 |        3 |          7 | Cliente 7  | Dirección 7   |           7 | Producto 7  |  70.99 |
|        8 |          8 |           8 |        2 |          8 | Cliente 8  | Dirección 8   |           8 | Producto 8  |  80.50 |
|        9 |          9 |           9 |        1 |          9 | Cliente 9  | Dirección 9   |           9 | Producto 9  |  90.99 |
|       10 |         10 |          10 |        2 |         10 | Cliente 10 | Dirección 10  |          10 | Producto 10 | 100.50 |
|       11 |         11 |          11 |        3 |         11 | Cliente 11 | Dirección 11  |          11 | Producto 11 | 110.99 |
|       12 |         12 |          12 |        2 |         12 | Cliente 12 | Dirección 12  |          12 | Producto 12 | 120.50 |
|       13 |         13 |          13 |        1 |         13 | Cliente 13 | Dirección 13  |          13 | Producto 13 | 130.99 |
|       14 |         14 |          14 |        2 |         14 | Cliente 14 | Dirección 14  |          14 | Producto 14 | 140.50 |
|       15 |         15 |          15 |        3 |         15 | Cliente 15 | Dirección 15  |          15 | Producto 15 | 150.99 |
|       16 |         16 |          16 |        2 |         16 | Cliente 16 | Dirección 16  |          16 | Producto 16 | 160.50 |
|       17 |         17 |          17 |        1 |         17 | Cliente 17 | Dirección 17  |          17 | Producto 17 | 170.99 |
|       18 |         18 |          18 |        2 |         18 | Cliente 18 | Dirección 18  |          18 | Producto 18 | 180.50 |
|       19 |         19 |          19 |        3 |         19 | Cliente 19 | Dirección 19  |          19 | Producto 19 | 190.99 |
|       20 |         20 |          20 |        2 |         20 | Cliente 20 | Dirección 20  |          20 | Producto 20 | 200.50 |
+----------+------------+-------------+----------+------------+------------+---------------+-------------+-------------+--------+
**/
-- Obtener el nombre de los productos junto con el nombre de los clientes que han realizado órdenes de esos productos, incluyendo los productos que no han sido ordenados
select p.nombre, c.nombre from ordenes as o LEFT JOIN productos as p ON o.id_producto=p.id_producto
INNER JOIN clientes as c ON o.id_cliente=c.id_cliente;
/**
+-------------+------------+
| nombre      | nombre     |
+-------------+------------+
| Producto 1  | Cliente 1  |
| Producto 2  | Cliente 2  |
| Producto 3  | Cliente 3  |
| Producto 4  | Cliente 4  |
| Producto 5  | Cliente 5  |
| Producto 6  | Cliente 6  |
| Producto 7  | Cliente 7  |
| Producto 8  | Cliente 8  |
| Producto 9  | Cliente 9  |
| Producto 10 | Cliente 10 |
| Producto 11 | Cliente 11 |
| Producto 12 | Cliente 12 |
| Producto 13 | Cliente 13 |
| Producto 14 | Cliente 14 |
| Producto 15 | Cliente 15 |
| Producto 16 | Cliente 16 |
| Producto 17 | Cliente 17 |
| Producto 18 | Cliente 18 |
| Producto 19 | Cliente 19 |
| Producto 20 | Cliente 20 |
**/
-- Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto, incluyendo las órdenes sin productos
select o.*, c.nombre, p.nombre from ordenes as o LEFT JOIN productos as p ON o.id_producto=p.id_producto
INNER JOIN clientes as c ON o.id_cliente=c.id_cliente;
/**
+----------+------------+-------------+----------+------------+-------------+
| id_orden | id_cliente | id_producto | cantidad | nombre     | nombre      |
+----------+------------+-------------+----------+------------+-------------+
|        1 |          1 |           1 |        2 | Cliente 1  | Producto 1  |
|        2 |          2 |           2 |        1 | Cliente 2  | Producto 2  |
|        3 |          3 |           3 |        3 | Cliente 3  | Producto 3  |
|        4 |          4 |           4 |        2 | Cliente 4  | Producto 4  |
|        5 |          5 |           5 |        1 | Cliente 5  | Producto 5  |
|        6 |          6 |           6 |        2 | Cliente 6  | Producto 6  |
|        7 |          7 |           7 |        3 | Cliente 7  | Producto 7  |
|        8 |          8 |           8 |        2 | Cliente 8  | Producto 8  |
|        9 |          9 |           9 |        1 | Cliente 9  | Producto 9  |
|       10 |         10 |          10 |        2 | Cliente 10 | Producto 10 |
|       11 |         11 |          11 |        3 | Cliente 11 | Producto 11 |
|       12 |         12 |          12 |        2 | Cliente 12 | Producto 12 |
|       13 |         13 |          13 |        1 | Cliente 13 | Producto 13 |
|       14 |         14 |          14 |        2 | Cliente 14 | Producto 14 |
|       15 |         15 |          15 |        3 | Cliente 15 | Producto 15 |
|       16 |         16 |          16 |        2 | Cliente 16 | Producto 16 |
|       17 |         17 |          17 |        1 | Cliente 17 | Producto 17 |
|       18 |         18 |          18 |        2 | Cliente 18 | Producto 18 |
|       19 |         19 |          19 |        3 | Cliente 19 | Producto 19 |
|       20 |         20 |          20 |        2 | Cliente 20 | Producto 20 |
+----------+------------+-------------+----------+------------+-------------+
**/
-- Obtener el nombre de los clientes junto con el número total de órdenes que han realizado, incluyendo los clientes que no han realizado órdenes.
select c.nombre, COUNT(o.id_orden) as "Numero de ordenes" from clientes as c LEFT JOIN ordenes as o ON c.id_cliente=o.id_cliente group by c.id_cliente;
/**
+------------+-------------------+
| nombre     | Numero de ordenes |
+------------+-------------------+
| Cliente 1  |                 1 |
| Cliente 2  |                 1 |
| Cliente 3  |                 1 |
| Cliente 4  |                 1 |
| Cliente 5  |                 1 |
| Cliente 6  |                 1 |
| Cliente 7  |                 1 |
| Cliente 8  |                 1 |
| Cliente 9  |                 1 |
| Cliente 10 |                 1 |
| Cliente 11 |                 1 |
| Cliente 12 |                 1 |
| Cliente 13 |                 1 |
| Cliente 14 |                 1 |
| Cliente 15 |                 1 |
| Cliente 16 |                 1 |
| Cliente 17 |                 1 |
| Cliente 18 |                 1 |
| Cliente 19 |                 1 |
| Cliente 20 |                 1 |
+------------+-------------------+
**/
-- Mostrar todas las órdenes con sus clientes y productos, incluyendo las órdenes y productos que no tienen información.
select * from ordenes as o LEFT JOIN clientes as c ON o.id_cliente=c.id_cliente
LEFT JOIN productos as p ON o.id_producto=p.id_producto;
/**
+----------+------------+-------------+----------+------------+------------+---------------+-------------+-------------+--------+
| id_orden | id_cliente | id_producto | cantidad | id_cliente | nombre     | direccion     | id_producto | nombre      | precio |
+----------+------------+-------------+----------+------------+------------+---------------+-------------+-------------+--------+
|        1 |          1 |           1 |        2 |          1 | Cliente 1  | Dirección 1   |           1 | Producto 1  |  10.99 |
|        2 |          2 |           2 |        1 |          2 | Cliente 2  | Dirección 2   |           2 | Producto 2  |  20.50 |
|        3 |          3 |           3 |        3 |          3 | Cliente 3  | Dirección 3   |           3 | Producto 3  |  30.99 |
|        4 |          4 |           4 |        2 |          4 | Cliente 4  | Dirección 4   |           4 | Producto 4  |  40.50 |
|        5 |          5 |           5 |        1 |          5 | Cliente 5  | Dirección 5   |           5 | Producto 5  |  50.99 |
|        6 |          6 |           6 |        2 |          6 | Cliente 6  | Dirección 6   |           6 | Producto 6  |  60.50 |
|        7 |          7 |           7 |        3 |          7 | Cliente 7  | Dirección 7   |           7 | Producto 7  |  70.99 |
|        8 |          8 |           8 |        2 |          8 | Cliente 8  | Dirección 8   |           8 | Producto 8  |  80.50 |
|        9 |          9 |           9 |        1 |          9 | Cliente 9  | Dirección 9   |           9 | Producto 9  |  90.99 |
|       10 |         10 |          10 |        2 |         10 | Cliente 10 | Dirección 10  |          10 | Producto 10 | 100.50 |
|       11 |         11 |          11 |        3 |         11 | Cliente 11 | Dirección 11  |          11 | Producto 11 | 110.99 |
|       12 |         12 |          12 |        2 |         12 | Cliente 12 | Dirección 12  |          12 | Producto 12 | 120.50 |
|       13 |         13 |          13 |        1 |         13 | Cliente 13 | Dirección 13  |          13 | Producto 13 | 130.99 |
|       14 |         14 |          14 |        2 |         14 | Cliente 14 | Dirección 14  |          14 | Producto 14 | 140.50 |
|       15 |         15 |          15 |        3 |         15 | Cliente 15 | Dirección 15  |          15 | Producto 15 | 150.99 |
|       16 |         16 |          16 |        2 |         16 | Cliente 16 | Dirección 16  |          16 | Producto 16 | 160.50 |
|       17 |         17 |          17 |        1 |         17 | Cliente 17 | Dirección 17  |          17 | Producto 17 | 170.99 |
|       18 |         18 |          18 |        2 |         18 | Cliente 18 | Dirección 18  |          18 | Producto 18 | 180.50 |
|       19 |         19 |          19 |        3 |         19 | Cliente 19 | Dirección 19  |          19 | Producto 19 | 190.99 |
|       20 |         20 |          20 |        2 |         20 | Cliente 20 | Dirección 20  |          20 | Producto 20 | 200.50 |
+----------+------------+-------------+----------+------------+------------+---------------+-------------+-------------+--------+
**/
```



</div>