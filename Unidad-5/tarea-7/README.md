<div align="justify">

# <div align="center">Consultas 7 SQLite</div>

```sql
-- Listar los coches vendidos con sus modelos y precios, junto con los nombres de los clientes que los compraron.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. ¿Qué es lo que no me han pedido?
select c.modelo, c.precio, cl.nombre from coches as c, clientes as cl, ventas as v where cl.id_cliente=v.id_cliente and v.id_coche=c.id_coche;
/**
┌────────────────┬─────────┬─────────────────┐
│     modelo     │ precio  │     nombre      │
├────────────────┼─────────┼─────────────────┤
│ Sedán 2022     │ 25000.0 │ Juan Pérez      │
│ Hatchback 2021 │ 22000.0 │ María Gómez     │
│ SUV 2023       │ 30000.0 │ Carlos López    │
│ Coupé 2022     │ 28000.0 │ Ana Martínez    │
│ Camioneta 2023 │ 32000.0 │ Pedro Rodríguez │
│ Compacto 2021  │ 20000.0 │ Laura Sánchez   │
│ Híbrido 2022   │ 27000.0 │ Miguel González │
│ Deportivo 2023 │ 35000.0 │ Isabel Díaz     │
│ Eléctrico 2021 │ 40000.0 │ Elena Torres    │
└────────────────┴─────────┴─────────────────┘
**/
-- Encontrar los clientes que han comprado coches con precios superiores al promedio de todos los coches vendidos.
  -- Cosas que debo de tener en cuenta:
    -- Precios superiores.
    -- Obtener la media. AVG(precio)
select cl.* from clientes as cl, coches as c, ventas as v where c.precio>(select AVG(precio) from coches) and cl.id_cliente=v.id_cliente and c.id_coche=v.id_coche;
/**
┌────────────┬─────────────────┬──────┬────────────────┐
│ id_cliente │     nombre      │ edad │   direccion    │
├────────────┼─────────────────┼──────┼────────────────┤
│ 3          │ Carlos López    │ 35   │ Calle C #789   │
│ 5          │ Pedro Rodríguez │ 40   │ Calle E #234   │
│ 8          │ Isabel Díaz     │ 38   │ Avenida H #111 │
│ 10         │ Elena Torres    │ 29   │ Avenida J #333 │
└────────────┴─────────────────┴──────┴────────────────┘
**/
-- Mostrar los modelos de coches y sus precios que no han sido vendidos aún:

  -- Cosas que debo de tener en cuenta:
    -- Coches que han sido vendidos.
    -- Quiero los coches que no han sido vendidos. NOT id_coche IN ventas
select modelo, precio from coches where NOT id_coche IN (select id_coche from ventas);
/**
┌─────────────┬─────────┐
│   modelo    │ precio  │
├─────────────┼─────────┤
│ Pickup 2022 │ 31000.0 │
└─────────────┴─────────┘
**/
-- Calcular el total gastado por todos los clientes en coches:
  -- Cosas que debo de tener en cuenta:
    -- Me estan pidiendo la suma total de todos los coches vendidos, NO de aquellos que aún no se han vendido.
select SUM(precio) as "Ingresos ventas" from coches where id_coche IN (select id_coche from ventas);
/**
┌─────────────────┐
│ Ingresos ventas │
├─────────────────┤
│ 259000.0        │
└─────────────────┘
**/
-- Listar los coches vendidos junto con la fecha de venta y el nombre del cliente, ordenados por fecha de venta de forma descendente:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. ¿Por qué campo tengo que ordenadar. Es uno o más campos?
select c.modelo, v.fecha_venta, cl.nombre from coches as c, ventas as v, clientes as cl where c.id_coche=v.id_coche and cl.id_cliente=v.id_cliente order by fecha_venta DESC;
/**
┌────────────────┬─────────────┬─────────────────┐
│     modelo     │ fecha_venta │     nombre      │
├────────────────┼─────────────┼─────────────────┤
│ Eléctrico 2021 │ 2023-10-05  │ Elena Torres    │
│ Deportivo 2023 │ 2023-08-25  │ Isabel Díaz     │
│ Híbrido 2022   │ 2023-07-20  │ Miguel González │
│ Compacto 2021  │ 2023-06-15  │ Laura Sánchez   │
│ Camioneta 2023 │ 2023-05-05  │ Pedro Rodríguez │
│ Coupé 2022     │ 2023-04-10  │ Ana Martínez    │
│ SUV 2023       │ 2023-03-25  │ Carlos López    │
│ Hatchback 2021 │ 2023-02-20  │ María Gómez     │
│ Sedán 2022     │ 2023-01-15  │ Juan Pérez      │
└────────────────┴─────────────┴─────────────────┘
**/
-- Encontrar el modelo de coche más caro.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. MAX
select modelo from coches where precio=(select MAX(precio) from coches);
/**
┌────────────────┐
│     modelo     │
├────────────────┤
│ Eléctrico 2021 │
└────────────────┘
**/
-- Mostrar los clientes que han comprado al menos un coche (un coche o más) y la cantidad de coches comprados.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT
select cl.*, COUNT(v.id_cliente) as "Coches comprados" from clientes as cl, ventas as v where cl.id_cliente=v.id_cliente group by v.id_cliente;
/**
┌────────────┬─────────────────┬──────┬────────────────┬──────────────────┐
│ id_cliente │     nombre      │ edad │   direccion    │ Coches comprados │
├────────────┼─────────────────┼──────┼────────────────┼──────────────────┤
│ 1          │ Juan Pérez      │ 30   │ Calle A #123   │ 1                │
│ 2          │ María Gómez     │ 25   │ Avenida B #456 │ 1                │
│ 3          │ Carlos López    │ 35   │ Calle C #789   │ 1                │
│ 4          │ Ana Martínez    │ 28   │ Avenida D #101 │ 1                │
│ 5          │ Pedro Rodríguez │ 40   │ Calle E #234   │ 1                │
│ 6          │ Laura Sánchez   │ 32   │ Avenida F #567 │ 1                │
│ 7          │ Miguel González │ 27   │ Calle G #890   │ 1                │
│ 8          │ Isabel Díaz     │ 38   │ Avenida H #111 │ 1                │
│ 10         │ Elena Torres    │ 29   │ Avenida J #333 │ 1                │
└────────────┴─────────────────┴──────┴────────────────┴──────────────────┘
**/
-- Encontrar los clientes que han comprado coches de la marca 'Toyota':
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. Like | regexp | =. Tabla normalizada ?.
select cl.* from clientes as cl, ventas as v, coches as c where cl.id_cliente=v.id_cliente and c.marca='Toyota' and c.id_coche=v.id_coche;
/**
┌────────────┬────────────┬──────┬──────────────┐
│ id_cliente │   nombre   │ edad │  direccion   │
├────────────┼────────────┼──────┼──────────────┤
│ 1          │ Juan Pérez │ 30   │ Calle A #123 │
└────────────┴────────────┴──────┴──────────────┘
**/
-- Calcular el promedio de edad de los clientes que han comprado coches de más de 25,000.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. 
select ROUND(AVG(edad)) as "Edad media" from clientes as cl, ventas as v, coches as c where cl.id_cliente=v.id_cliente and c.precio>25000 and c.id_coche=v.id_coche;
/**
┌────────────┐
│ Edad media │
├────────────┤
│ 33.0       │
└────────────┘
**/
-- Mostrar los modelos de coches y sus precios que fueron comprados por clientes mayores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.
select c.modelo, c.precio from coches as c, ventas as v, clientes as cl where cl.edad>30 and cl.id_cliente=v.id_cliente and c.id_coche=v.id_coche;
/**
┌────────────────┬─────────┐
│     modelo     │ precio  │
├────────────────┼─────────┤
│ SUV 2023       │ 30000.0 │
│ Camioneta 2023 │ 32000.0 │
│ Compacto 2021  │ 20000.0 │
│ Deportivo 2023 │ 35000.0 │
└────────────────┴─────────┘
**/
-- Encontrar los coches vendidos en el año 2022 junto con la cantidad total de ventas en ese año.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.
select c.*, COUNT(id_venta) as "Ventas totales anuales" from coches as c, ventas as v where v.fecha_venta regexp '2022' and c.id_coche=v.id_coche;
/**
┌──────────┬────────┬───────┬─────┬────────┬────────────────────────┐
│ id_coche │ modelo │ marca │ año │ precio │ Ventas totales anuales │
├──────────┼────────┼───────┼─────┼────────┼────────────────────────┤
│          │        │       │     │        │ 0                      │
└──────────┴────────┴───────┴─────┴────────┴────────────────────────┘
**/
-- Listar los coches cuyos precios son mayores que el precio promedio de coches vendidos a clientes menores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. AVG
select * from coches where precio>(select AVG(precio) from coches as c, clientes as cl, ventas as v where cl.id_cliente=v.id_cliente and c.id_coche=v.id_coche and cl.edad<30);
/**
┌──────────┬────────────────┬────────┬──────┬─────────┐
│ id_coche │     modelo     │ marca  │ año  │ precio  │
├──────────┼────────────────┼────────┼──────┼─────────┤
│ 3        │ SUV 2023       │ Ford   │ 2023 │ 30000.0 │
│ 5        │ Camioneta 2023 │ Nissan │ 2023 │ 32000.0 │
│ 8        │ Deportivo 2023 │ Mazda  │ 2023 │ 35000.0 │
│ 9        │ Pickup 2022    │ Ram    │ 2022 │ 31000.0 │
│ 10       │ Eléctrico 2021 │ Tesla  │ 2021 │ 40000.0 │
└──────────┴────────────────┴────────┴──────┴─────────┘
**/
-- Calcular el total de ventas por marca de coche, ordenado de forma descendente por el total de ventas:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT| DESC|ASC precio
select c.marca, COUNT(v.id_coche) as "Ventas por marcas" from ventas as v, coches as c where v.id_coche=c.id_coche group by v.id_coche order by COUNT(v.id_coche) DESC;
/**
┌────────────┬───────────────────┐
│   marca    │ Ventas por marcas │
├────────────┼───────────────────┤
│ Tesla      │ 1                 │
│ Mazda      │ 1                 │
│ Hyundai    │ 1                 │
│ Volkswagen │ 1                 │
│ Nissan     │ 1                 │
│ Chevrolet  │ 1                 │
│ Ford       │ 1                 │
│ Honda      │ 1                 │
│ Toyota     │ 1                 │
└────────────┴───────────────────┘
**/
```

</div>