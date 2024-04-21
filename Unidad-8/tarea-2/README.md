<div align="justify">

# <div align="center">Tarea 2 MySQL Unidad 8</div>
![logo](../../Unidad-6/Tarea-3/images/Mysql.png)

## Función calcular_precio_total_pedido

    Nota:Dado un código de pedido la función debe calcular la suma total del pedido. Tenga en cuenta que un pedido puede contener varios productos diferentes y varias cantidades de cada producto.

        Parámetros de entrada: codigo_pedido (INT)
        Parámetros de salida: El precio total del pedido (FLOAT)
```sql
DELIMITER $$
CREATE FUNCTION calcular_precio_total_pedido(cod_pedido INT) RETURNS FLOAT
BEGIN
    DECLARE precio_total FLOAT;
    select SUM(cantidad*precio_unidad) INTO precio_total from detalle_pedido where codigo_pedido=cod_pedido;
    RETURN precio_total;
END $$
DELIMITER ;

select codigo_pedido, calcular_precio_total_pedido(1) as "precio total" from pedido where codigo_pedido=1;
/**
+---------------+--------------+
| codigo_pedido | precio total |
+---------------+--------------+
|             1 |         1567 |
+---------------+--------------+
**/
```

## Función calcular_suma_pedidos_cliente

    Nota:Dado un código de cliente la función debe calcular la suma total de todos los pedidos realizados por el cliente. Deberá hacer uso de la función calcular_precio_total_pedido que ha desarrollado en el apartado anterior.

        Parámetros de entrada: codigo_cliente (INT)
        Parámetros de salida: La suma total de todos los pedidos del cliente (FLOAT)

```sql
DELIMITER $$
CREATE FUNCTION calcular_suma_pedidos_cliente(cod_cliente INT) RETURNS FLOAT
BEGIN
    DECLARE total_pedidos FLOAT;
    select SUM(calcular_precio_total_pedido(codigo_pedido)) INTO total_pedidos from pedido where codigo_cliente=cod_cliente group by codigo_cliente;
    RETURN total_pedidos;
END $$
DELIMITER ;

select calcular_suma_pedidos_cliente(1) as "Precio total pedidos" from cliente where codigo_cliente = 1;
/**
+----------------------+
| Precio total pedidos |
+----------------------+
|             10365.00 |
+----------------------+
**/
```

## Función calcular_suma_pagos_cliente

    Nota:Dado un código de cliente la función debe calcular la suma total de los pagos realizados por ese cliente.

        Parámetros de entrada: codigo_cliente (INT)
        Parámetros de salida: La suma total de todos los pagos del cliente (FLOAT)

```sql
DELIMITER $$
CREATE FUNCTION calcular_suma_pagos_cliente(cod_cliente INT) RETURNS FLOAT
BEGIN
    DECLARE total_pagos FLOAT;
    select SUM(total) INTO total_pagos from pago where codigo_cliente=cod_cliente;
    RETURN total_pagos;
END $$
DELIMITER ;

select calcular_suma_pagos_cliente(1) from cliente where codigo_cliente=1;
/**
+--------------------------------+
| calcular_suma_pagos_cliente(1) |
+--------------------------------+
|                           4000 |
+--------------------------------+
**/
```

## Procedimiento calcular_pagos_pendientes

        Nota:Deberá calcular los pagos pendientes de todos los clientes. Para saber si un cliente tiene algún pago pendiente deberemos calcular cuál es la cantidad de todos los pedidos y los pagos que ha realizado. Si la cantidad de los pedidos es mayor que la de los pagos entonces ese cliente tiene pagos pendientes.

```sql
DELIMITER $$
CREATE PROCEDURE calcular_pagos_pendientes(IN cod_cliente INT)
BEGIN
    DECLARE total_pagos FLOAT;
    DECLARE total_pedidos FLOAT;
    SET total_pagos = calcular_suma_pagos_cliente(cod_cliente);
    SET total_pedidos = calcular_suma_pedidos_cliente(cod_cliente);
    IF total_pedidos > total_pagos THEN
        select "El cliente tiene pagos pendientes" as "¿Pago Pendiente?";
    ELSE
        select "El cliente no tiene pagos pendientes" as "¿Pago Pendiente?";
    END IF;
END $$
DELIMITER ;

CALL calcular_pagos_pendientes(1);
/**
+-----------------------------------+
| ¿Pago Pendiente?                  |
+-----------------------------------+
| El cliente tiene pagos pendientes |
+-----------------------------------+
**/

CALL calcular_pagos_pendientes(2);
/**
+--------------------------------------+
| ¿Pago Pendiente?                     |
+--------------------------------------+
| El cliente no tiene pagos pendientes |
+--------------------------------------+
**/

CALL calcular_pagos_pendientes(3);
/**
+-----------------------------------+
| ¿Pago Pendiente?                  |
+-----------------------------------+
| El cliente tiene pagos pendientes |
+-----------------------------------+
**/
```

</div>