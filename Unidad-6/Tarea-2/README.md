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
-- Mostrar todos los productos.
select * from productos;
-- Mostrar todas las órdenes.
select * from ordenes;
-- Mostrar los primeros 5 clientes ordenados por nombre.
select * from clientes order by nombre LIMIT 5;
-- Mostrar los productos con un precio mayor a 50.
select * from productos where precio > 50;
-- Mostrar todas las órdenes realizadas por el cliente con ID 1.
select * from ordenes where id_cliente = 1;
-- Mostrar los clientes cuyos nombres comienzan con la letra "M".
select * from clientes where nombre regexp '^M';
-- Mostrar las órdenes que contienen más de 2 productos.
select * from ordenes where cantidad > 2;
-- Mostrar los productos ordenados por precio de forma descendente.
select * from productos order by precio DESC;
```


</div>