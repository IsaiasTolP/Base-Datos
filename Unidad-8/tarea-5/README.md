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

## Escribe un procedimiento almacenado que copie los nombres de todos los empleados cuyo salario sea superior a 3000 en una nueva tabla llamada 'empleados_destino'. Es necesario crear la tabla empleados_destiono.
```sql
-- Creamos la tabla
CREATE TABLE empleados_destino (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

DELIMITER //
CREATE PROCEDURE copy_names(IN salary_limit DECIMAL(10,2))
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE emp_nombre VARCHAR(100);
      DECLARE cur CURSOR FOR SELECT nombre FROM empleados WHERE salario>salary_limit;
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

      OPEN cur;
      read_loop: LOOP
          FETCH cur INTO emp_nombre;
          IF done THEN
              LEAVE read_loop;
          END IF;
          INSERT INTO empleados_destino (nombre) VALUES (emp_nombre);
      END LOOP;
      CLOSE cur;
  END //
DELIMITER ;

CALL copy_names(3000);

SELECT * from empleados_destino;
/**
+----+--------+
| id | nombre |
+----+--------+
|  1 | María  |
|  2 | Pedro  |
+----+--------+
**/
```

## Escribe un procedimiento almacenado que seleccione los empleados cuyos nombres contienen la letra 'a' y aumente sus salarios en un 10%

```sql
DELIMITER //
  CREATE PROCEDURE aumento_selectivo(IN porcentaje DECIMAL(5,2))
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE emp_id INT;
      DECLARE cur CURSOR FOR SELECT id FROM empleados WHERE nombre regexp 'a';
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

      OPEN cur;
      read_loop: LOOP
          FETCH cur INTO emp_id;
          IF done THEN
              LEAVE read_loop;
          END IF;
          UPDATE empleados SET salario = salario * (1 + porcentaje / 100) WHERE id = emp_id;
      END LOOP;
      CLOSE cur;
  END //
DELIMITER ;

/**
Antes:
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3000.00 |
|  2 | María  | 3500.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+
**/

CALL aumento_selectivo(10);

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

## Escribe un procedimiento almacenado que seleccione empleados cuyos IDs estén en un rango específico, por ejemplo, entre 2 y 3.
```sql
DELIMITER //
  CREATE PROCEDURE workers_in_range(IN low_bar INT, IN high_bar INT)
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE pointer INT;
      DECLARE cur CURSOR FOR SELECT 1;
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

      OPEN cur;
      read_loop: LOOP
          FETCH cur INTO pointer;
          IF done THEN
              LEAVE read_loop;
          END IF;
          SELECT * FROM empleados WHERE id BETWEEN low_bar AND high_bar;
      END LOOP;
      CLOSE cur;
  END //
DELIMITER ;

CALL workers_in_range(2, 3);
/**
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+
**/
```

## Escribe un procedimiento almacenado que elimine todos los empleados cuyo salario esté entre 2000 y 2500.
```sql
DELIMITER //
  CREATE PROCEDURE fire_by_range(IN low_bar DECIMAL(10, 2), IN high_bar DECIMAL(10, 2))
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE emp_id INT;
      DECLARE cur CURSOR FOR SELECT id FROM empleados where salario BETWEEN low_bar AND high_bar;
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

      OPEN cur;
      read_loop: LOOP
          FETCH cur INTO emp_id;
          IF done THEN
              LEAVE read_loop;
          END IF;
          DELETE FROM empleados WHERE id=emp_id;
      END LOOP;
      CLOSE cur;
  END //
DELIMITER ;

CALL fire_by_range(2000, 2500);
-- No se borra nada porque no hay empleado con salario en ese rango.
/**
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+
**/
```

## Escribe un procedimiento almacenado que aumente el salario de un empleado específico cuyo nombre se pasa como parámetro en un 20%.
```sql
DELIMITER //
  CREATE PROCEDURE rise_by_name(IN first_name VARCHAR(100))
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE emp_id INT;
      DECLARE cur CURSOR FOR SELECT id FROM empleados WHERE nombre=first_name;
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

      OPEN cur;
      read_loop: LOOP
          FETCH cur INTO emp_id;
          IF done THEN
              LEAVE read_loop;
          END IF;
          UPDATE empleados SET salario = salario * (1 + 20 / 100) WHERE id = emp_id;
      END LOOP;
      CLOSE cur;
  END //
DELIMITER ;

CALL rise_by_name('Juan');
-- A Juan se le subirá el salario un 20%
/**
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3960.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+
**/
```


</div>