<div align="justify">

# <div align="center">Tarea 4 UT 8 MySQL</div>
![logo](../../Unidad-6/Tarea-3/images/Mysql.png)

## Usar la base de datos
```sql
USE empresa;
```

## Procedimiento básico
```sql
DELIMITER //

CREATE PROCEDURE my_loop(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        -- Coloca aquí el código que deseas ejecutar en cada iteración del bucle
        -- Por ejemplo, puedes imprimir el valor del contador
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

-- Llama al procedimiento 
CALL my_loop(5);
```

## Inserta cinco filas en la tabla empleados con nombres aleatorios generados usando la función CONCAT() junto con RAND()
```sql
DELIMITER //

CREATE PROCEDURE create_random_workers(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        INSERT INTO empleados (nombre, salario)
        VALUES (CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

-- Llama al procedimiento 
CALL create_random_workers(5);

SELECT * FROM empleados;
/**
+----+------------------------------+---------+
| id | nombre                       | salario |
+----+------------------------------+---------+
|  1 | Juan                         | 3960.00 |
|  2 | María                        | 3850.00 |
|  3 | Pedro                        | 3200.00 |
|  6 | Empleado0.7622515342778075   | 5666.00 |
|  7 | Empleado0.004362950105558103 | 7177.00 |
|  8 | Empleado0.2226325201081415   | 3374.00 |
|  9 | Empleado0.1907516077074703   | 5508.00 |
| 10 | Empleado0.6205881420714671   | 8298.00 |
+----+------------------------------+---------+
-- Se salta algunos IDs, ya que la tabla es autoincremental y antes habían dos empleados que fueron borrados, si volvemos a llamar al procedimiento veremos que los IDs vuelven a seguir un orden normal.
+----+------------------------------+---------+
| id | nombre                       | salario |
+----+------------------------------+---------+
|  1 | Juan                         | 3960.00 |
|  2 | María                        | 3850.00 |
|  3 | Pedro                        | 3200.00 |
|  6 | Empleado0.7622515342778075   | 5666.00 |
|  7 | Empleado0.004362950105558103 | 7177.00 |
|  8 | Empleado0.2226325201081415   | 3374.00 |
|  9 | Empleado0.1907516077074703   | 5508.00 |
| 10 | Empleado0.6205881420714671   | 8298.00 |
| 11 | Empleado0.0744105065934458   | 2082.00 |
| 12 | Empleado0.8285066232350716   | 2892.00 |
| 13 | Empleado0.07193155872815434  | 2201.00 |
| 14 | Empleado0.9101402833220924   | 5801.00 |
| 15 | Empleado0.6452816311691717   | 8408.00 |
+----+------------------------------+---------+
**/
```

## Inserta tres filas en la tabla empleados con nombres aleatorios generados usando la función UUID()
```sql
DELIMITER //

CREATE PROCEDURE create_UUID_random_workers(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        INSERT INTO empleados (nombre, salario)
        VALUES (UUID(), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

-- Llama al procedimiento 
CALL create_UUID_random_workers(3);

SELECT * FROM empleados;
/**
+----+--------------------------------------+---------+
| id | nombre                               | salario |
+----+--------------------------------------+---------+
|  1 | Juan                                 | 3960.00 |
|  2 | María                                | 3850.00 |
|  3 | Pedro                                | 3200.00 |
|  6 | Empleado0.7622515342778075           | 5666.00 |
|  7 | Empleado0.004362950105558103         | 7177.00 |
|  8 | Empleado0.2226325201081415           | 3374.00 |
|  9 | Empleado0.1907516077074703           | 5508.00 |
| 10 | Empleado0.6205881420714671           | 8298.00 |
| 11 | Empleado0.0744105065934458           | 2082.00 |
| 12 | Empleado0.8285066232350716           | 2892.00 |
| 13 | Empleado0.07193155872815434          | 2201.00 |
| 14 | Empleado0.9101402833220924           | 5801.00 |
| 15 | Empleado0.6452816311691717           | 8408.00 |
| 16 | d3355362-1204-11ef-af87-080027077231 | 2552.00 |
| 17 | d3370cb1-1204-11ef-af87-080027077231 | 9540.00 |
| 18 | d3385813-1204-11ef-af87-080027077231 | 6041.00 |
+----+--------------------------------------+---------+
**/
```

## Inserta dos filas en la tabla empleados con nombres aleatorios generados usando la función RAND() junto con ORDER BY RAND()
```sql
DELIMITER //

CREATE PROCEDURE create_random_order_workers(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        INSERT INTO empleados (nombre, salario)
        SELECT CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000
        FROM (SELECT 1 UNION SELECT 2) AS sub ORDER BY RAND() LIMIT 2;
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

CALL create_random_order_workers(1);

SELECT * FROM empleados;
/**
+----+--------------------------------------+---------+
| id | nombre                               | salario |
+----+--------------------------------------+---------+
|  1 | Juan                                 | 3960.00 |
|  2 | María                                | 3850.00 |
|  3 | Pedro                                | 3200.00 |
|  6 | Empleado0.7622515342778075           | 5666.00 |
|  7 | Empleado0.004362950105558103         | 7177.00 |
|  8 | Empleado0.2226325201081415           | 3374.00 |
|  9 | Empleado0.1907516077074703           | 5508.00 |
| 10 | Empleado0.6205881420714671           | 8298.00 |
| 11 | Empleado0.0744105065934458           | 2082.00 |
| 12 | Empleado0.8285066232350716           | 2892.00 |
| 13 | Empleado0.07193155872815434          | 2201.00 |
| 14 | Empleado0.9101402833220924           | 5801.00 |
| 15 | Empleado0.6452816311691717           | 8408.00 |
| 16 | d3355362-1204-11ef-af87-080027077231 | 2552.00 |
| 17 | d3370cb1-1204-11ef-af87-080027077231 | 9540.00 |
| 18 | d3385813-1204-11ef-af87-080027077231 | 6041.00 |
| 19 | Empleado0.37639547081328506          | 3340.00 |
| 20 | Empleado0.15085033434522369          | 9506.00 |
+----+--------------------------------------+---------+
**/
```

## Inserta cuatro filas en la tabla empleados con nombres aleatorios generados usando la función SUBSTRING_INDEX(UUID(), '-', -1)
```sql
DELIMITER //

CREATE PROCEDURE create_random_substring_workers(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        INSERT INTO empleados (nombre, salario)
        VALUES (SUBSTRING_INDEX(UUID(), '-', -1), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

CALL create_random_substring_workers(4);

SELECT * FROM empleados;
/**
+----+--------------------------------------+---------+
| id | nombre                               | salario |
+----+--------------------------------------+---------+
|  1 | Juan                                 | 3960.00 |
|  2 | María                                | 3850.00 |
|  3 | Pedro                                | 3200.00 |
|  6 | Empleado0.7622515342778075           | 5666.00 |
|  7 | Empleado0.004362950105558103         | 7177.00 |
|  8 | Empleado0.2226325201081415           | 3374.00 |
|  9 | Empleado0.1907516077074703           | 5508.00 |
| 10 | Empleado0.6205881420714671           | 8298.00 |
| 11 | Empleado0.0744105065934458           | 2082.00 |
| 12 | Empleado0.8285066232350716           | 2892.00 |
| 13 | Empleado0.07193155872815434          | 2201.00 |
| 14 | Empleado0.9101402833220924           | 5801.00 |
| 15 | Empleado0.6452816311691717           | 8408.00 |
| 16 | d3355362-1204-11ef-af87-080027077231 | 2552.00 |
| 17 | d3370cb1-1204-11ef-af87-080027077231 | 9540.00 |
| 18 | d3385813-1204-11ef-af87-080027077231 | 6041.00 |
| 19 | Empleado0.37639547081328506          | 3340.00 |
| 20 | Empleado0.15085033434522369          | 9506.00 |
| 22 | 080027077231                         | 7666.00 |
| 23 | 080027077231                         | 2309.00 |
| 24 | 080027077231                         | 2549.00 |
| 25 | 080027077231                         | 3820.00 |
+----+--------------------------------------+---------+
**/
```
## Inserta seis filas en la tabla empleados con nombres aleatorios generados usando la función RAND() y una semilla diferente
```sql
DELIMITER //

CREATE PROCEDURE create_random_workers_by_seed(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    Declare seed INT DEFAULT 1;

    WHILE counter < iterations DO
        INSERT INTO empleados (nombre, salario)
        VALUES (CONCAT('Empleado', RAND(seed)), FLOOR(RAND(seed) * (10000 - 2000 + 1)) + 2000);
        SELECT counter;

        SET seed = seed + 1;
        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

CALL create_random_workers_by_seed(6);

SELECT * FROM empleados;
/**
+----+--------------------------------------+---------+
| id | nombre                               | salario |
+----+--------------------------------------+---------+
|  1 | Juan                                 | 3960.00 |
|  2 | María                                | 3850.00 |
|  3 | Pedro                                | 3200.00 |
|  6 | Empleado0.7622515342778075           | 5666.00 |
|  7 | Empleado0.004362950105558103         | 7177.00 |
|  8 | Empleado0.2226325201081415           | 3374.00 |
|  9 | Empleado0.1907516077074703           | 5508.00 |
| 10 | Empleado0.6205881420714671           | 8298.00 |
| 11 | Empleado0.0744105065934458           | 2082.00 |
| 12 | Empleado0.8285066232350716           | 2892.00 |
| 13 | Empleado0.07193155872815434          | 2201.00 |
| 14 | Empleado0.9101402833220924           | 5801.00 |
| 15 | Empleado0.6452816311691717           | 8408.00 |
| 16 | d3355362-1204-11ef-af87-080027077231 | 2552.00 |
| 17 | d3370cb1-1204-11ef-af87-080027077231 | 9540.00 |
| 18 | d3385813-1204-11ef-af87-080027077231 | 6041.00 |
| 19 | Empleado0.37639547081328506          | 3340.00 |
| 20 | Empleado0.15085033434522369          | 9506.00 |
| 22 | 080027077231                         | 7666.00 |
| 23 | 080027077231                         | 2309.00 |
| 24 | 080027077231                         | 2549.00 |
| 25 | 080027077231                         | 3820.00 |
| 26 | Empleado0.40540353712197724          | 5243.00 |
| 27 | Empleado0.6555866465490187           | 7245.00 |
| 28 | Empleado0.9057697559760601           | 9247.00 |
| 29 | Empleado0.15595286540310166          | 3247.00 |
| 30 | Empleado0.40613597483014313          | 5249.00 |
| 31 | Empleado0.6563190842571847           | 7251.00 |
+----+--------------------------------------+---------+
**/
```

</div>