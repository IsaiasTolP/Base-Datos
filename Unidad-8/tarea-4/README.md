<div align="justify">

# <div align="center">Tarea 4 UT 8 MySQL</div>
![logo](../../Unidad-6/Tarea-3/images/Mysql.png)

## Crear la base de datos
```sql
-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS empresa;
USE empresa;

-- Crear la tabla empleados
CREATE TABLE empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    salario DECIMAL(10, 2)
);

-- Insertar algunos datos de ejemplo
INSERT INTO empleados (nombre, salario) VALUES
('Juan', 3000.00),
('María', 3500.00),
('Pedro', 3200.00);
```

## Ejemplo para aumentar el salario por un porcentaje dado
```sql
  DELIMITER //
  CREATE PROCEDURE aumentar_salarios(IN porcentaje DECIMAL(5,2))
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE emp_id INT;
      DECLARE emp_nombre VARCHAR(100);
      DECLARE emp_salario DECIMAL(10, 2);
      DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados;
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

      OPEN cur;
      read_loop: LOOP
          FETCH cur INTO emp_id, emp_nombre, emp_salario;
          IF done THEN
              LEAVE read_loop;
          END IF;
          UPDATE empleados SET salario = salario * (1 + porcentaje / 100) WHERE id = emp_id;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;

-- Llamar al procedimiento
CALL aumentar_salarios(10);

select * from empleados;
/**
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3520.00 |
+----+--------+---------+
**/
```

## Crear 3 procedimientos segun los siguientes enunciados

1. Escribe un procedimiento almacenado que aumente los salarios de todos los empleados en un 5%, pero excluya a aquellos cuyo salario sea superior a 3200. El procedimiento debe tener parámetros de entrada.
```sql
DELIMITER //
CREATE PROCEDURE selective_salary_rise(IN salary_limit DECIMAL(10, 2),IN percent DECIMAL(5,2))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados WHERE salario<salary_limit;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        UPDATE empleados SET salario = salario * (1 + percent / 100) WHERE id = emp_id;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

CALL selective_salary_rise(3200.0);

-- Teniendo en cuenta que no hay salario por debajo de 3200, no debería aumentar ninguno si el cursor está bien hecho.
select * from empleados;
/**
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3520.00 |
+----+--------+---------+
**/
```

2. Escribe un procedimiento almacenado que calcule el salario anual de cada empleado (asumiendo que trabajan todo el año) y lo imprima.
```sql
DELIMITER //
CREATE PROCEDURE annual_salaries()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE annual_salary DECIMAL (10, 2);
    DECLARE emp_id INT;
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE emp_nombre VARCHAR(100);
    DECLARE cur CURSOR FOR SELECT id, nombre, salario from empleados;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SET annual_salary = emp_salario * 14;
        SELECT emp_id, emp_nombre, annual_salary as "Salario anual";
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

CALL annual_salaries();
/**
+--------+------------+---------------+
| emp_id | emp_nombre | Salario anual |
+--------+------------+---------------+
|      1 | Juan       |      46200.00 |
+--------+------------+---------------+
1 row in set (0,00 sec)

+--------+------------+---------------+
| emp_id | emp_nombre | Salario anual |
+--------+------------+---------------+
|      2 | María      |      53900.00 |
+--------+------------+---------------+
1 row in set (0,00 sec)

+--------+------------+---------------+
| emp_id | emp_nombre | Salario anual |
+--------+------------+---------------+
|      3 | Pedro      |      49280.00 |
+--------+------------+---------------+
1 row in set (0,00 sec)
**/
```

3. Escribe un procedimiento almacenado que cuente y muestre el número de empleados en cada rango de salario (por ejemplo, menos de 3000, entre 3000 y 5000, más de 5000). El procedimiento debe tener parámetros de entrada.
```sql
DELIMITER //
CREATE PROCEDURE emp_by_salary_range(IN lower_bar DECIMAL(10, 2), IN higher_bar DECIMAL(10, 2))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE num_lower_range INT DEFAULT 0;
    DECLARE num_mid_range INT DEFAULT 0;
    DECLARE num_higher_range INT DEFAULT 0;
    DECLARE cur CURSOR FOR SELECT salario FROM empleados;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        IF emp_salario < lower_bar THEN
            SET num_lower_range = num_lower_range + 1;
        ELSEIF emp_salario < higher_bar THEN
            SET num_mid_range = num_mid_range + 1;
        ELSE
            SET num_higher_range = num_higher_range + 1;
        END IF;
    END LOOP;
    CLOSE cur;

    SELECT num_lower_range as "Salario bajo", num_mid_range as "Salario intermedio", num_higher_range as "Salario alto";
END //
DELIMITER ;

-- Deberían ser todos intermedio
CALL emp_by_salary_range(3000, 5000);
/**
+--------------+--------------------+--------------+
| Salario bajo | Salario intermedio | Salario alto |
+--------------+--------------------+--------------+
|            0 |                  3 |            0 |
+--------------+--------------------+--------------+
**/

-- Debería haber un empleado de cada
CALL emp_by_salary_range(3400, 3700);
/**
+--------------+--------------------+--------------+
| Salario bajo | Salario intermedio | Salario alto |
+--------------+--------------------+--------------+
|            1 |                  1 |            1 |
+--------------+--------------------+--------------+
**/
```

</div>