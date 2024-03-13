<div align="justify">

# <div align="center">Consultas en MySQL Tarea 3</div>

## Base de Datos
```sql
CREATE DATABASE IF NOT EXISTS tienda2;

USE tienda2;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(100),
    ciudad_cliente VARCHAR(100)
);

CREATE TABLE ordenes (
    id_orden INT PRIMARY KEY,
    id_cliente INT,
    fecha_orden DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    nombre_producto VARCHAR(100),
    precio_producto DECIMAL(10, 2)
);

CREATE TABLE detalles_ordenes (
    id_detalle INT PRIMARY KEY,
    id_orden INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_orden) REFERENCES ordenes(id_orden),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

INSERT INTO clientes (id_cliente, nombre_cliente, ciudad_cliente) VALUES
(1, 'Juan', 'Ciudad A'),
(2, 'María', 'Ciudad B'),
(3, 'Pedro', 'Ciudad C');

INSERT INTO ordenes (id_orden, id_cliente, fecha_orden) VALUES
(1, 1, '2024-03-01'),
(2, 2, '2024-03-02'),
(3, 3, '2024-03-03');

INSERT INTO productos (id_producto, nombre_producto, precio_producto) VALUES
(1, 'Producto A', 50.00),
(2, 'Producto B', 75.00),
(3, 'Producto C', 100.00);

INSERT INTO detalles_ordenes (id_detalle, id_orden, id_producto, cantidad) VALUES
(1, 1, 1, 2),
(2, 2, 2, 1),
(3, 3, 3, 3);
```

## Consultas SQL
```sql
-- Mostrar todos los clientes.
select * from clientes;
/**
+------------+----------------+----------------+
| id_cliente | nombre_cliente | ciudad_cliente |
+------------+----------------+----------------+
|          1 | Juan           | Ciudad A       |
|          2 | María          | Ciudad B       |
|          3 | Pedro          | Ciudad C       |
+------------+----------------+----------------+
**/
-- Mostrar todas las órdenes.
select * from ordenes;
/**
+----------+------------+-------------+
| id_orden | id_cliente | fecha_orden |
+----------+------------+-------------+
|        1 |          1 | 2024-03-01  |
|        2 |          2 | 2024-03-02  |
|        3 |          3 | 2024-03-03  |
+----------+------------+-------------+
**/
-- Mostrar todos los productos.
select * from productos;
/**
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           1 | Producto A      |           50.00 |
|           2 | Producto B      |           75.00 |
|           3 | Producto C      |          100.00 |
+-------------+-----------------+-----------------+
**/
-- Mostrar todos los detalles de las órdenes.
select * from detalles_ordenes;
/**
+------------+----------+-------------+----------+
| id_detalle | id_orden | id_producto | cantidad |
+------------+----------+-------------+----------+
|          1 |        1 |           1 |        2 |
|          2 |        2 |           2 |        1 |
|          3 |        3 |           3 |        3 |
+------------+----------+-------------+----------+
**/
-- Mostrar los primeros 5 clientes ordenados por nombre.
select * from clientes order by nombre_cliente LIMIT 5;
/**
+------------+----------------+----------------+
| id_cliente | nombre_cliente | ciudad_cliente |
+------------+----------------+----------------+
|          1 | Juan           | Ciudad A       |
|          2 | María          | Ciudad B       |
|          3 | Pedro          | Ciudad C       |
+------------+----------------+----------------+
**/
-- Mostrar los productos con un precio mayor a 50.
select * from productos where precio_producto > 50;
/**
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           2 | Producto B      |           75.00 |
|           3 | Producto C      |          100.00 |
+-------------+-----------------+-----------------+
**/
-- Mostrar todas las órdenes realizadas por el cliente con ID 1.
select * from ordenes where id_cliente = 1;
/**
+----------+------------+-------------+
| id_orden | id_cliente | fecha_orden |
+----------+------------+-------------+
|        1 |          1 | 2024-03-01  |
+----------+------------+-------------+
**/
-- Mostrar los clientes cuyos nombres comienzan con la letra "A".
select * from clientes where nombre_cliente regexp '^A';
/**
No hay
**/
-- Mostrar las órdenes que contienen más de 2 productos.
select o.* from detalles_ordenes as do JOIN ordenes as o ON do.id_orden = o.id_orden where do.cantidad > 2;
/**
+----------+------------+-------------+
| id_orden | id_cliente | fecha_orden |
+----------+------------+-------------+
|        3 |          3 | 2024-03-03  |
+----------+------------+-------------
**/
-- Mostrar los productos ordenados por precio de forma descendente.
select * from productos order by precio_producto DESC;
/**
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           3 | Producto C      |          100.00 |
|           2 | Producto B      |           75.00 |
|           1 | Producto A      |           50.00 |
+-------------+-----------------+-----------------+
**/
-- Seleccionar todos los clientes y sus órdenes, incluso si no tienen órdenes.
select * from clientes as c LEFT JOIN ordenes as o ON c.id_cliente=o.id_cliente;
/**
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
+------------+----------------+----------------+----------+------------+-------------+
**/
-- Seleccionar todas las órdenes junto con los productos correspondientes.
select p.*, o.* from detalles_ordenes as do JOIN productos as p ON do.id_producto=p.id_producto
JOIN ordenes as o ON do.id_orden=o.id_orden;
/**
+-------------+-----------------+-----------------+----------+------------+-------------+
| id_producto | nombre_producto | precio_producto | id_orden | id_cliente | fecha_orden |
+-------------+-----------------+-----------------+----------+------------+-------------+
|           1 | Producto A      |           50.00 |        1 |          1 | 2024-03-01  |
|           2 | Producto B      |           75.00 |        2 |          2 | 2024-03-02  |
|           3 | Producto C      |          100.00 |        3 |          3 | 2024-03-03  |
+-------------+-----------------+-----------------+----------+------------+-------------+
**/
-- Mostrar el nombre de los clientes que han realizado órdenes de productos que cuestan más de 50.
select c.nombre_cliente from clientes as c JOIN ordenes as o ON c.id_cliente=o.id_cliente
JOIN detalles_ordenes as do ON o.id_orden=do.id_orden
JOIN productos as p ON do.id_producto=p.id_producto
where p.precio_producto > 50;
/**
+----------------+
| nombre_cliente |
+----------------+
| María          |
| Pedro          |
+----------------+
**/
-- Obtener el nombre de los productos que no se han ordenado aún.
select p.nombre_producto from productos as p LEFT JOIN detalles_ordenes as do ON p.id_producto=do.id_producto where do.id_producto is NULL;
/**
No hay
**/
-- Mostrar el nombre del cliente, el producto y la cantidad para todas las órdenes.
select c.nombre_cliente, p.nombre_producto, do.cantidad from clientes as c JOIN ordenes as o ON c.id_cliente=o.id_cliente
JOIN detalles_ordenes as do ON o.id_orden=do.id_orden
JOIN productos as p ON do.id_producto=p.id_producto;
/**
+----------------+-----------------+----------+
| nombre_cliente | nombre_producto | cantidad |
+----------------+-----------------+----------+
| Juan           | Producto A      |        2 |
| María          | Producto B      |        1 |
| Pedro          | Producto C      |        3 |
+----------------+-----------------+----------+
**/
-- Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos.
select c.nombre_cliente, p.nombre_producto from clientes as c JOIN ordenes as o ON c.id_cliente=o.id_cliente
JOIN detalles_ordenes as do ON o.id_orden=do.id_orden
JOIN productos as p ON do.id_producto=p.id_producto;
/**
+----------------+-----------------+
| nombre_cliente | nombre_producto |
+----------------+-----------------+
| Juan           | Producto A      |
| María          | Producto B      |
| Pedro          | Producto C      |
+----------------+-----------------+
**/
-- Mostrar todas las órdenes con sus clientes y productos, incluso si no hay órdenes.
select c.nombre_cliente, p.nombre_producto from clientes as c LEFT JOIN ordenes as o ON c.id_cliente=o.id_cliente
JOIN detalles_ordenes as do ON o.id_orden=do.id_orden
JOIN productos as p ON do.id_producto=p.id_producto;
/**
+----------------+-----------------+
| nombre_cliente | nombre_producto |
+----------------+-----------------+
| Juan           | Producto A      |
| María          | Producto B      |
| Pedro          | Producto C      |
+----------------+-----------------+
**/
-- Obtener el nombre de los clientes junto con el número total de órdenes que han realizado.
select c.nombre_cliente, COUNT(o.id_orden) as "numero compras" from clientes as c JOIN ordenes as o ON c.id_cliente=o.id_cliente group by c.id_cliente;
/**
+----------------+----------------+
| nombre_cliente | numero compras |
+----------------+----------------+
| Juan           |              1 |
| María          |              1 |
| Pedro          |              1 |
+----------------+----------------+
**/
-- Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto.
select o.*, c.nombre_cliente, p.nombre_producto from clientes as c JOIN ordenes as o ON c.id_cliente=o.id_cliente
JOIN detalles_ordenes as do ON o.id_orden=do.id_orden
JOIN productos as p ON do.id_producto=p.id_producto;
/**
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+
**/
-- Mostrar todas las órdenes con sus productos y clientes, incluso si no hay información de cliente.
select o.*, c.nombre_cliente, p.nombre_producto from clientes as c RIGHT JOIN ordenes as o ON c.id_cliente=o.id_cliente
JOIN detalles_ordenes as do ON o.id_orden=do.id_orden
JOIN productos as p ON do.id_producto=p.id_producto;
/**
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+
**/
-- Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos, incluyendo los productos que no han sido ordenados.
select o.*, c.nombre_cliente, p.nombre_producto from clientes as c JOIN ordenes as o ON c.id_cliente=o.id_cliente
JOIN detalles_ordenes as do ON o.id_orden=do.id_orden
RIGHT JOIN productos as p ON do.id_producto=p.id_producto;
/**
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+
**/
-- Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto, incluyendo las órdenes sin productos.
select o.*, c.nombre_cliente, p.nombre_producto from clientes as c JOIN ordenes as o ON c.id_cliente=o.id_cliente
JOIN detalles_ordenes as do ON o.id_orden=do.id_orden
LEFT JOIN productos as p ON do.id_producto=p.id_producto;
/**
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+
**/
-- Obtener el nombre de los clientes junto con el número total de órdenes que han realizado, incluyendo los clientes que no han realizado órdenes.
select c.nombre_cliente, COUNT(o.id_orden) as "numero compras" from clientes as c LEFT JOIN ordenes as o ON c.id_cliente=o.id_cliente group by c.id_cliente;
/**
+----------------+----------------+
| nombre_cliente | numero compras |
+----------------+----------------+
| Juan           |              1 |
| María          |              1 |
| Pedro          |              1 |
+----------------+----------------+
**/
-- Mostrar todas las órdenes con sus clientes y productos, incluyendo las órdenes y productos que no tienen información.
select o.*, c.*, p.* from clientes as c RIGHT JOIN ordenes as o ON c.id_cliente=o.id_cliente
RIGHT JOIN detalles_ordenes as do ON o.id_orden=do.id_orden
RIGHT JOIN productos as p ON do.id_producto=p.id_producto;
/**
+----------+------------+-------------+------------+----------------+----------------+-------------+-----------------+-----------------+
| id_orden | id_cliente | fecha_orden | id_cliente | nombre_cliente | ciudad_cliente | id_producto | nombre_producto | precio_producto |
+----------+------------+-------------+------------+----------------+----------------+-------------+-----------------+-----------------+
|        1 |          1 | 2024-03-01  |          1 | Juan           | Ciudad A       |           1 | Producto A      |           50.00 |
|        2 |          2 | 2024-03-02  |          2 | María          | Ciudad B       |           2 | Producto B      |           75.00 |
|        3 |          3 | 2024-03-03  |          3 | Pedro          | Ciudad C       |           3 | Producto C      |          100.00 |
+----------+------------+-------------+------------+----------------+----------------+-------------+-----------------+-----------------+
**/
-- Realizar un inner join entre clientes y órdenes.
select * from clientes as c INNER JOIN ordenes as o ON o.id_cliente=c.id_cliente;
/**
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
+------------+----------------+----------------+----------+------------+-------------+
**/
-- Realizar un left join entre órdenes y detalles de órdenes.
select * from ordenes as o LEFT JOIN detalles_ordenes as do ON o.id_orden=do.id_orden;
/**
+----------+------------+-------------+------------+----------+-------------+----------+
| id_orden | id_cliente | fecha_orden | id_detalle | id_orden | id_producto | cantidad |
+----------+------------+-------------+------------+----------+-------------+----------+
|        1 |          1 | 2024-03-01  |          1 |        1 |           1 |        2 |
|        2 |          2 | 2024-03-02  |          2 |        2 |           2 |        1 |
|        3 |          3 | 2024-03-03  |          3 |        3 |           3 |        3 |
+----------+------------+-------------+------------+----------+-------------+----------+
**/
-- Realizar un right join entre productos y detalles de órdenes.
select * from productos as p RIGHT JOIN detalles_ordenes as do ON p.id_producto=do.id_producto;
/**
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
| id_producto | nombre_producto | precio_producto | id_detalle | id_orden | id_producto | cantidad |
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
|           1 | Producto A      |           50.00 |          1 |        1 |           1 |        2 |
|           2 | Producto B      |           75.00 |          2 |        2 |           2 |        1 |
|           3 | Producto C      |          100.00 |          3 |        3 |           3 |        3 |
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
**/
-- Realizar un full join entre clientes y órdenes.
select * from clientes as c LEFT JOIN ordenes as o ON c.id_cliente=o.id_cliente 
UNION
select * from clientes as c RIGHT JOIN ordenes as o ON c.id_cliente=o.id_cliente where c.id_cliente is NULL;
/**
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
+------------+----------------+----------------+----------+------------+-------------+
**/
-- Realizar un full join entre órdenes y detalles de órdenes.
select * from ordenes as o LEFT JOIN detalles_ordenes as do ON o.id_orden=do.id_orden
UNION
select * from ordenes as o RIGHT JOIN detalles_ordenes as do ON o.id_orden=do.id_orden where o.id_orden is NULL;
/**
+----------+------------+-------------+------------+----------+-------------+----------+
| id_orden | id_cliente | fecha_orden | id_detalle | id_orden | id_producto | cantidad |
+----------+------------+-------------+------------+----------+-------------+----------+
|        1 |          1 | 2024-03-01  |          1 |        1 |           1 |        2 |
|        2 |          2 | 2024-03-02  |          2 |        2 |           2 |        1 |
|        3 |          3 | 2024-03-03  |          3 |        3 |           3 |        3 |
+----------+------------+-------------+------------+----------+-------------+----------+
**/
-- Realizar un full join entre productos y detalles de órdenes.
select * from productos as p LEFT JOIN detalles_ordenes as do ON p.id_producto=do.id_producto
UNION
select * from productos as p RIGHT JOIN detalles_ordenes as do ON p.id_producto=do.id_producto where p.id_producto is NULL;
/**
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
| id_producto | nombre_producto | precio_producto | id_detalle | id_orden | id_producto | cantidad |
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
|           1 | Producto A      |           50.00 |          1 |        1 |           1 |        2 |
|           2 | Producto B      |           75.00 |          2 |        2 |           2 |        1 |
|           3 | Producto C      |          100.00 |          3 |        3 |           3 |        3 |
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
**/
```