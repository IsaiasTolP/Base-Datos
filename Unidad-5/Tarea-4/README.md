<div align="justify">

# <div align="center">Tarea 4, Consultas en SQLite</div>

![Logo SQLite](../Tarea-2/img/SQLite-logo.png)

## Índice
1. Crear la base de datos.
2. Consultas en SQLite.
  
## Crear la base de datos
Tenemos el fichero [supermecado-dump.sql](supermercado-dump.sql), con el contenido de la base de datos. Entonces lo que hay que hacer es abrir SQLite con ```sqlite tarea3.db``` y una vez dentro escribimos: 
```sql
.read empleados-dump.sql
```
Esto volcará los datos del fichero sql a la base de datos.

## Haciendo consultas

1. Mostrar todos los productos de la categoría "Bebidas".
```sql
select * from productos where categoria = "Bebidas";
┌────┬──────────────────┬───────────┬────────┐
│ id │      nombre      │ categoria │ precio │
├────┼──────────────────┼───────────┼────────┤
│ 16 │ Café             │ Bebidas   │ 5.0    │
│ 19 │ Botellas de Agua │ Bebidas   │ 1.0    │
│ 20 │ Cerveza          │ Bebidas   │ 3.8    │
└────┴──────────────────┴───────────┴────────┘
```
2. Listar los productos ordenados por precio de forma descendente.
```sql
select * from productos order by precio DESC;
┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 5  │ Pollo              │ Carnes    │ 5.5    │
│ 16 │ Café               │ Bebidas   │ 5.0    │
│ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
│ 9  │ Queso              │ Lácteos   │ 4.0    │
│ 20 │ Cerveza            │ Bebidas   │ 3.8    │
│ 10 │ Cereal             │ Desayuno  │ 3.5    │
│ 4  │ Manzanas           │ Frutas    │ 3.0    │
│ 13 │ Detergente         │ Limpieza  │ 2.8    │
│ 1  │ Arroz              │ Alimentos │ 2.5    │
│ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
│ 8  │ Tomates            │ Verduras  │ 2.2    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 2  │ Leche              │ Lácteos   │ 1.8    │
│ 14 │ Galletas           │ Snacks    │ 1.7    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 3  │ Pan                │ Panadería │ 1.2    │
│ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
│ 6  │ Huevos             │ Lácteos   │ 1.0    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
└────┴────────────────────┴───────────┴────────┘
```
3. Calcular el precio total de todos los productos en la tabla "productos".
```sql
select SUM(precio) AS "Precio Total" from productos;
┌──────────────┐
│ Precio Total │
├──────────────┤
│ 52.5         │
└──────────────┘
```
4. Encontrar los productos con un nombre que contenga la letra 'a'.
```sql
select * from productos where nombre LIKE "%a%";
┌────┬──────────────────┬───────────┬────────┐
│ id │      nombre      │ categoria │ precio │
├────┼──────────────────┼───────────┼────────┤
│ 1  │ Arroz            │ Alimentos │ 2.5    │
│ 3  │ Pan              │ Panadería │ 1.2    │
│ 4  │ Manzanas         │ Frutas    │ 3.0    │
│ 8  │ Tomates          │ Verduras  │ 2.2    │
│ 10 │ Cereal           │ Desayuno  │ 3.5    │
│ 11 │ Papel Higiénico  │ Hogar     │ 1.5    │
│ 14 │ Galletas         │ Snacks    │ 1.7    │
│ 15 │ Aceite de Oliva  │ Cocina    │ 4.5    │
│ 16 │ Café             │ Bebidas   │ 5.0    │
│ 17 │ Sopa enlatada    │ Conservas │ 2.3    │
│ 18 │ Jabón de Baño    │ Higiene   │ 1.2    │
│ 19 │ Botellas de Agua │ Bebidas   │ 1.0    │
│ 20 │ Cerveza          │ Bebidas   │ 3.8    │
└────┴──────────────────┴───────────┴────────┘
```
5. Obtener la cantidad total de productos vendidos en todas las fechas.
```sql
select SUM(cantidad) AS "Cantidad Total" from ventas;
┌────────────────┐
│ Cantidad Total │
├────────────────┤
│ 43             │
└────────────────┘
```
6. Encontrar el producto más caro en cada categoría.
```sql
select nombre, categoria, MAX(precio) AS "Mas caro" from productos group by categoria;
┌────────────────────┬───────────┬──────────┐
│       nombre       │ categoria │ Mas caro │
├────────────────────┼───────────┼──────────┤
│ Arroz              │ Alimentos │ 2.5      │
│ Café               │ Bebidas   │ 5.0      │
│ Pollo              │ Carnes    │ 5.5      │
│ Aceite de Oliva    │ Cocina    │ 4.5      │
│ Sopa enlatada      │ Conservas │ 2.3      │
│ Cereal             │ Desayuno  │ 3.5      │
│ Manzanas           │ Frutas    │ 3.0      │
│ Cepillo de Dientes │ Higiene   │ 2.0      │
│ Papel Higiénico    │ Hogar     │ 1.5      │
│ Detergente         │ Limpieza  │ 2.8      │
│ Queso              │ Lácteos   │ 4.0      │
│ Pan                │ Panadería │ 1.2      │
│ Galletas           │ Snacks    │ 1.7      │
│ Tomates            │ Verduras  │ 2.2      │
└────────────────────┴───────────┴──────────┘
```
7. Listar los productos que no han sido vendidos.
```sql
select * from productos where id NOT IN (select id_producto from ventas);
┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 3  │ Pan                │ Panadería │ 1.2    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 9  │ Queso              │ Lácteos   │ 4.0    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 13 │ Detergente         │ Limpieza  │ 2.8    │
│ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
│ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
│ 20 │ Cerveza            │ Bebidas   │ 3.8    │
└────┴────────────────────┴───────────┴────────┘
```
8. Calcular el precio promedio de los productos en la categoría "Snacks".
```sql
select AVG(precio) AS "Promedio precio Snacks" from productos where categoria = "Snacks";
┌────────────────────────┐
│ Promedio precio Snacks │
├────────────────────────┤
│ 1.7                    │
└────────────────────────┘
```
9.  Encontrar los productos que han sido vendidos más de 5 veces.
```sql
select productos.* from productos, ventas where productos.id=ventas.id_producto and cantidad > 5;
┌────┬───────────────┬───────────┬────────┐
│ id │    nombre     │ categoria │ precio │
├────┼───────────────┼───────────┼────────┤
│ 6  │ Huevos        │ Lácteos   │ 1.0    │
│ 14 │ Galletas      │ Snacks    │ 1.7    │
│ 18 │ Jabón de Baño │ Higiene   │ 1.2    │
└────┴───────────────┴───────────┴────────┘
```
10. Mostrar la fecha y la cantidad de ventas para cada producto.
```sql
select p.nombre, v.cantidad, v.fecha from productos AS p, ventas AS v where p.id=v.id_producto;
┌───────────────┬──────────┬────────────┐
│    nombre     │ cantidad │   fecha    │
├───────────────┼──────────┼────────────┤
│ Arroz         │ 5        │ 2024-01-17 │
│ Leche         │ 3        │ 2024-01-17 │
│ Manzanas      │ 2        │ 2024-01-17 │
│ Pollo         │ 1        │ 2024-01-17 │
│ Huevos        │ 10       │ 2024-01-18 │
│ Tomates       │ 4        │ 2024-01-18 │
│ Cereal        │ 2        │ 2024-01-18 │
│ Galletas      │ 7        │ 2024-01-19 │
│ Café          │ 3        │ 2024-01-19 │
│ Jabón de Baño │ 6        │ 2024-01-20 │
└───────────────┴──────────┴────────────┘
```
11. Encontrar los productos que tienen un precio menor o igual a 2.
```sql
select * from productos where precio <= 2;
┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 2  │ Leche              │ Lácteos   │ 1.8    │
│ 3  │ Pan                │ Panadería │ 1.2    │
│ 6  │ Huevos             │ Lácteos   │ 1.0    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 14 │ Galletas           │ Snacks    │ 1.7    │
│ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
└────┴────────────────────┴───────────┴────────┘
```
12. Calcular la cantidad total de ventas para cada fecha.
```sql
select SUM(cantidad), fecha from ventas group by fecha;
┌───────────────┬────────────┐
│ SUM(cantidad) │   fecha    │
├───────────────┼────────────┤
│ 11            │ 2024-01-17 │
│ 16            │ 2024-01-18 │
│ 10            │ 2024-01-19 │
│ 6             │ 2024-01-20 │
└───────────────┴────────────┘
```
13. Listar los productos cuyo nombre comienza con la letra 'P'.
```sql
select * from productos where nombre LIKE "P%";
┌────┬─────────────────┬───────────┬────────┐
│ id │     nombre      │ categoria │ precio │
├────┼─────────────────┼───────────┼────────┤
│ 3  │ Pan             │ Panadería │ 1.2    │
│ 5  │ Pollo           │ Carnes    │ 5.5    │
│ 11 │ Papel Higiénico │ Hogar     │ 1.5    │
└────┴─────────────────┴───────────┴────────┘
```
14. Obtener el producto más vendido en términos de cantidad.
```sql
select productos.* from productos, ventas where productos.id=ventas.id order by ventas.cantidad DESC LIMIT 1;
┌────┬────────┬───────────┬────────┐
│ id │ nombre │ categoria │ precio │
├────┼────────┼───────────┼────────┤
│ 5  │ Pollo  │ Carnes    │ 5.5    │
└────┴────────┴───────────┴────────┘
```
15. Mostrar los productos que fueron vendidos en la fecha '2024-01-18'.
```sql
select productos.* from productos, ventas where productos.id=ventas.id_producto and ventas.fecha="2024-01-18";
┌────┬─────────┬───────────┬────────┐
│ id │ nombre  │ categoria │ precio │
├────┼─────────┼───────────┼────────┤
│ 6  │ Huevos  │ Lácteos   │ 1.0    │
│ 8  │ Tomates │ Verduras  │ 2.2    │
│ 10 │ Cereal  │ Desayuno  │ 3.5    │
└────┴─────────┴───────────┴────────┘
```
16. Calcular el total de ventas para cada producto.
```sql
select p.nombre, v.cantidad AS "Cantidad ventas" from productos AS p, ventas AS v where p.id=v.id group by p.nombre;
┌──────────┬─────────────────┐
│  nombre  │ Cantidad ventas │
├──────────┼─────────────────┤
│ Arroz    │ 5               │
│ Cereal   │ 6               │
│ Huevos   │ 4               │
│ Leche    │ 3               │
│ Manzanas │ 1               │
│ Pan      │ 2               │
│ Pollo    │ 10              │
│ Queso    │ 3               │
│ Tomates  │ 7               │
│ Yogurt   │ 2               │
└──────────┴─────────────────┘
```
17. Encontrar los productos con un precio entre 3 y 4.
```sql
select * from productos where precio BETWEEN 3 and 4;
┌────┬──────────┬───────────┬────────┐
│ id │  nombre  │ categoria │ precio │
├────┼──────────┼───────────┼────────┤
│ 4  │ Manzanas │ Frutas    │ 3.0    │
│ 9  │ Queso    │ Lácteos   │ 4.0    │
│ 10 │ Cereal   │ Desayuno  │ 3.5    │
│ 20 │ Cerveza  │ Bebidas   │ 3.8    │
└────┴──────────┴───────────┴────────┘
```
18. Listar los productos y sus categorías ordenados alfabéticamente por categoría.
```sql
select * from productos order by categoria ASC;
┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 1  │ Arroz              │ Alimentos │ 2.5    │
│ 16 │ Café               │ Bebidas   │ 5.0    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
│ 20 │ Cerveza            │ Bebidas   │ 3.8    │
│ 5  │ Pollo              │ Carnes    │ 5.5    │
│ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
│ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
│ 10 │ Cereal             │ Desayuno  │ 3.5    │
│ 4  │ Manzanas           │ Frutas    │ 3.0    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 13 │ Detergente         │ Limpieza  │ 2.8    │
│ 2  │ Leche              │ Lácteos   │ 1.8    │
│ 6  │ Huevos             │ Lácteos   │ 1.0    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 9  │ Queso              │ Lácteos   │ 4.0    │
│ 3  │ Pan                │ Panadería │ 1.2    │
│ 14 │ Galletas           │ Snacks    │ 1.7    │
│ 8  │ Tomates            │ Verduras  │ 2.2    │
└────┴────────────────────┴───────────┴────────┘
```
19. Calcular el precio total de los productos vendidos en la fecha '2024-01-19'.
```sql
select SUM(p.precio * v.cantidad) AS 'Ingresos 2024-01-19' from productos AS p, ventas AS v where v.fecha = '2024-01-19' and p.id=v.id_producto;
┌─────────────────────┐
│ Ingresos 2024-01-19 │
├─────────────────────┤
│ 26.9                │
└─────────────────────┘
```
20. Mostrar los productos que no pertenecen a la categoría "Higiene".
```sql
select * from productos where categoria != "Higiene";
┌────┬──────────────────┬───────────┬────────┐
│ id │      nombre      │ categoria │ precio │
├────┼──────────────────┼───────────┼────────┤
│ 1  │ Arroz            │ Alimentos │ 2.5    │
│ 2  │ Leche            │ Lácteos   │ 1.8    │
│ 3  │ Pan              │ Panadería │ 1.2    │
│ 4  │ Manzanas         │ Frutas    │ 3.0    │
│ 5  │ Pollo            │ Carnes    │ 5.5    │
│ 6  │ Huevos           │ Lácteos   │ 1.0    │
│ 7  │ Yogurt           │ Lácteos   │ 2.0    │
│ 8  │ Tomates          │ Verduras  │ 2.2    │
│ 9  │ Queso            │ Lácteos   │ 4.0    │
│ 10 │ Cereal           │ Desayuno  │ 3.5    │
│ 11 │ Papel Higiénico  │ Hogar     │ 1.5    │
│ 13 │ Detergente       │ Limpieza  │ 2.8    │
│ 14 │ Galletas         │ Snacks    │ 1.7    │
│ 15 │ Aceite de Oliva  │ Cocina    │ 4.5    │
│ 16 │ Café             │ Bebidas   │ 5.0    │
│ 17 │ Sopa enlatada    │ Conservas │ 2.3    │
│ 19 │ Botellas de Agua │ Bebidas   │ 1.0    │
│ 20 │ Cerveza          │ Bebidas   │ 3.8    │
└────┴──────────────────┴───────────┴────────┘
```
21. Encontrar la cantidad total de productos en cada categoría.
```sql
select COUNT(nombre) AS "Cantidad total", categoria from productos group by categoria;
┌───────────────┬───────────┐
│ COUNT(nombre) │ categoria │
├───────────────┼───────────┤
│ 1             │ Alimentos │
│ 3             │ Bebidas   │
│ 1             │ Carnes    │
│ 1             │ Cocina    │
│ 1             │ Conservas │
│ 1             │ Desayuno  │
│ 1             │ Frutas    │
│ 2             │ Higiene   │
│ 1             │ Hogar     │
│ 1             │ Limpieza  │
│ 4             │ Lácteos   │
│ 1             │ Panadería │
│ 1             │ Snacks    │
│ 1             │ Verduras  │
└───────────────┴───────────┘
```
22. Listar los productos que tienen un precio igual a la media de precios.
```sql
select * from productos where precio = (select AVG(precio) from productos);

'SIN RESULTADO, la media de precio es 2.625, no hay producto con ese precio'
```
23. Calcular el precio total de los productos vendidos en cada fecha.
```sql
select SUM(p.precio * v.cantidad) AS "Ingresos", v.fecha from productos as p, ventas as v where p.id=v.id_producto group by v.fecha;
┌──────────┬────────────┐
│ Ingresos │   fecha    │
├──────────┼────────────┤
│ 29.4     │ 2024-01-17 │
│ 25.8     │ 2024-01-18 │
│ 26.9     │ 2024-01-19 │
│ 7.2      │ 2024-01-20 │
└──────────┴────────────┘
```
24. Mostrar los productos con un nombre que termina con la letra 'o'.
```sql
select * from productos where nombre LIKE "%o";
┌────┬─────────────────┬───────────┬────────┐
│ id │     nombre      │ categoria │ precio │
├────┼─────────────────┼───────────┼────────┤
│ 5  │ Pollo           │ Carnes    │ 5.5    │
│ 9  │ Queso           │ Lácteos   │ 4.0    │
│ 11 │ Papel Higiénico │ Hogar     │ 1.5    │
│ 18 │ Jabón de Baño   │ Higiene   │ 1.2    │
└────┴─────────────────┴───────────┴────────┘
```
25. Encontrar los productos que han sido vendidos en más de una fecha.
```sql
select p.* from productos AS p, ventas AS v where p.id=v.id_producto and 2 <= (select COUNT(id_producto) from ventas group by id_producto);

'NO HAY RESPUESTA, es decir los productos solo se han vendido en una fecha concreta. Podemos verlo perfectamente si imprimimos la tabla de ventas'
┌────┬─────────────┬──────────┬────────────┐
│ id │ id_producto │ cantidad │   fecha    │
├────┼─────────────┼──────────┼────────────┤
│ 1  │ 1           │ 5        │ 2024-01-17 │
│ 2  │ 2           │ 3        │ 2024-01-17 │
│ 3  │ 4           │ 2        │ 2024-01-17 │
│ 4  │ 5           │ 1        │ 2024-01-17 │
│ 5  │ 6           │ 10       │ 2024-01-18 │
│ 6  │ 8           │ 4        │ 2024-01-18 │
│ 7  │ 10          │ 2        │ 2024-01-18 │
│ 8  │ 14          │ 7        │ 2024-01-19 │
│ 9  │ 16          │ 3        │ 2024-01-19 │
│ 10 │ 18          │ 6        │ 2024-01-20 │
└────┴─────────────┴──────────┴────────────┘ 
```
26. Listar los productos cuya categoría comienza con la letra 'L'.
```sql
select * from productos where categoria LIKE "L%";
┌────┬────────────┬───────────┬────────┐
│ id │   nombre   │ categoria │ precio │
├────┼────────────┼───────────┼────────┤
│ 2  │ Leche      │ Lácteos   │ 1.8    │
│ 6  │ Huevos     │ Lácteos   │ 1.0    │
│ 7  │ Yogurt     │ Lácteos   │ 2.0    │
│ 9  │ Queso      │ Lácteos   │ 4.0    │
│ 13 │ Detergente │ Limpieza  │ 2.8    │
└────┴────────────┴───────────┴────────┘
```
27. Calcular el total de ventas para cada producto en la fecha '2024-01-17'.
```sql
select SUM(v.cantidad) AS "Cantida ventas", p.nombre, v.fecha from productos AS p, ventas AS v where p.id=v.id_producto and v.fecha='2024-01-17' group by p.nombre; 
┌────────────────┬──────────┬────────────┐
│ Cantida ventas │  nombre  │   fecha    │
├────────────────┼──────────┼────────────┤
│ 5              │ Arroz    │ 2024-01-17 │
│ 3              │ Leche    │ 2024-01-17 │
│ 2              │ Manzanas │ 2024-01-17 │
│ 1              │ Pollo    │ 2024-01-17 │
└────────────────┴──────────┴────────────┘
```
28. Mostrar los productos cuyo nombre tiene al menos 5 caracteres.
```sql
select * from productos where 5 <= (select LENGTH(nombre) from productos); 
┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 1  │ Arroz              │ Alimentos │ 2.5    │
│ 2  │ Leche              │ Lácteos   │ 1.8    │
│ 3  │ Pan                │ Panadería │ 1.2    │
│ 4  │ Manzanas           │ Frutas    │ 3.0    │
│ 5  │ Pollo              │ Carnes    │ 5.5    │
│ 6  │ Huevos             │ Lácteos   │ 1.0    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 8  │ Tomates            │ Verduras  │ 2.2    │
│ 9  │ Queso              │ Lácteos   │ 4.0    │
│ 10 │ Cereal             │ Desayuno  │ 3.5    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 13 │ Detergente         │ Limpieza  │ 2.8    │
│ 14 │ Galletas           │ Snacks    │ 1.7    │
│ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
│ 16 │ Café               │ Bebidas   │ 5.0    │
│ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
│ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
│ 20 │ Cerveza            │ Bebidas   │ 3.8    │
└────┴────────────────────┴───────────┴────────┘
```
29. Encontrar los productos que tienen un precio superior al precio medio en la tabla "productos".
```sql
select * from productos where precio > (select AVG(precio) from productos);
┌────┬─────────────────┬───────────┬────────┐
│ id │     nombre      │ categoria │ precio │
├────┼─────────────────┼───────────┼────────┤
│ 4  │ Manzanas        │ Frutas    │ 3.0    │
│ 5  │ Pollo           │ Carnes    │ 5.5    │
│ 9  │ Queso           │ Lácteos   │ 4.0    │
│ 10 │ Cereal          │ Desayuno  │ 3.5    │
│ 13 │ Detergente      │ Limpieza  │ 2.8    │
│ 15 │ Aceite de Oliva │ Cocina    │ 4.5    │
│ 16 │ Café            │ Bebidas   │ 5.0    │
│ 20 │ Cerveza         │ Bebidas   │ 3.8    │
└────┴─────────────────┴───────────┴────────┘
```
