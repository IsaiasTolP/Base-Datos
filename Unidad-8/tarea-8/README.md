<div align="justify">

# <div align="center">Tarea 4 UT 8 MySQL</div>
![logo](../../Unidad-6/Tarea-3/images/Mysql.png)

## Crear la base de datos
```sql
CREATE DATABASE test;

USE test;

CREATE TABLE alumnos (
    id INT AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    nota FLOAT(4,2),
    PRIMARY KEY(id)
);

/**
Vamos a crear un procedimiento básico de inserción para probar nuestros Triggers.
**/
DELIMITER //

CREATE PROCEDURE student_gen(IN iterations INT, IN mark FLOAT(4,2))
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        INSERT INTO alumnos(nombre, apellido1, apellido2, nota) VALUES (
            UUID(), 'a', 'b', mark);
        SET counter = counter + 1;
    END WHILE;
END //

CREATE TRIGGER trigger_check_nota_before_insert BEFORE INSERT ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.nota > 10 THEN
        SET NEW.nota = 10;
    ELSEIF NEW.nota < 0 THEN
        SET NEW.nota = 0;
    END IF;
END//

DELIMITER ;

/**
Vamos a poner 5 alumnos con catorce y menos tres de nota para ver si funciona el trigger correctamente para cada uno de ellos.
**/
CALL student_gen(5, 14);
CALL student_gen(5, -3);
SELECT * FROM alumnos;
/**
Como se puede observar todos los alumnos tienen las notas máximas o mínimas porque el trigger funciona correctamente.
+----+--------------------------------------+-----------+-----------+-------+
| id | nombre                               | apellido1 | apellido2 | nota  |
+----+--------------------------------------+-----------+-----------+-------+
|  1 | b2054ea1-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  2 | b206607c-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  3 | b207561e-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  4 | b2085dd2-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  5 | b20922dd-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  6 | f5dc9833-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
|  7 | f5de75f5-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
|  8 | f5e06d98-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
|  9 | f5e217c7-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
| 10 | f5e2cc36-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
+----+--------------------------------------+-----------+-----------+-------+
**/

DELIMITER //

CREATE TRIGGER trigger_check_nota_before_update BEFORE UPDATE ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.nota > 10 THEN
        SET NEW.nota = 10;
    ELSEIF NEW.nota < 0 THEN
        SET NEW.nota = 0;
    END IF;
END //

DELIMITER ;

/**
Ahora probamos a hacer varios updates
**/
UPDATE alumnos SET nota = 13.34;
SELECT * FROM alumnos;
/**
Como se puede ver la nueva nota no es 13.34 sino 10.
+----+--------------------------------------+-----------+-----------+-------+
| id | nombre                               | apellido1 | apellido2 | nota  |
+----+--------------------------------------+-----------+-----------+-------+
|  1 | b2054ea1-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  2 | b206607c-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  3 | b207561e-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  4 | b2085dd2-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  5 | b20922dd-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  6 | f5dc9833-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  7 | f5de75f5-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  8 | f5e06d98-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
|  9 | f5e217c7-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
| 10 | f5e2cc36-1782-11ef-9d6b-080027077231 | a         | b         | 10.00 |
+----+--------------------------------------+-----------+-----------+-------+
**/

UPDATE alumnos SET nota = -5;
SELECT * FROM alumnos;
/**
Ahora la nota de todos será de cero porque no es posible el menos cinco.
+----+--------------------------------------+-----------+-----------+------+
| id | nombre                               | apellido1 | apellido2 | nota |
+----+--------------------------------------+-----------+-----------+------+
|  1 | b2054ea1-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  2 | b206607c-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  3 | b207561e-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  4 | b2085dd2-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  5 | b20922dd-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  6 | f5dc9833-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  7 | f5de75f5-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  8 | f5e06d98-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  9 | f5e217c7-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
| 10 | f5e2cc36-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
+----+--------------------------------------+-----------+-----------+------+
**/
```

## Procedimiento 1 de Inserción
```sql
/**
Ahora creamos un procedimiento que permita hacer inserciones oscilando las notas entre diferentes valores
**/
DELIMITER //

CREATE PROCEDURE gen_students_with_mark_limits(IN iterations INT,IN nombre VARCHAR(50),IN apellido1 VARCHAR(50),IN apellido2 VARCHAR(50),IN max_limit FLOAT(4,2),IN min_limit FLOAT(4,2))
BEGIN
    DECLARE counter INT DEFAULT 0;
    
    WHILE counter < iterations DO
        INSERT INTO alumnos(nombre, apellido1, apellido2, nota) VALUES (
            nombre, apellido1, apellido2, FLOOR(RAND() * (max_limit - min_limit) + min_limit)
        );
        SET counter = counter + 1;
    END WHILE;
END //

DELIMITER ;

/**
Llamamos a la función para que inserte alumnos primero con rango 3 y 10, y luego con rango -10 y 12
**/
CALL gen_students_with_mark_limits(10, 'Pepe', 'Pepitez', 'Palomares', 10, 3);
/**
+----+--------------------------------------+-----------+-----------+------+
| id | nombre                               | apellido1 | apellido2 | nota |
+----+--------------------------------------+-----------+-----------+------+
|  1 | b2054ea1-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  2 | b206607c-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  3 | b207561e-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  4 | b2085dd2-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  5 | b20922dd-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  6 | f5dc9833-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  7 | f5de75f5-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  8 | f5e06d98-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
|  9 | f5e217c7-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
| 10 | f5e2cc36-1782-11ef-9d6b-080027077231 | a         | b         | 0.00 |
| 11 | Pepe                                 | Pepitez   | Palomares | 9.00 |
| 12 | Pepe                                 | Pepitez   | Palomares | 4.00 |
| 13 | Pepe                                 | Pepitez   | Palomares | 6.00 |
| 14 | Pepe                                 | Pepitez   | Palomares | 6.00 |
| 15 | Pepe                                 | Pepitez   | Palomares | 5.00 |
| 16 | Pepe                                 | Pepitez   | Palomares | 5.00 |
| 17 | Pepe                                 | Pepitez   | Palomares | 6.00 |
| 18 | Pepe                                 | Pepitez   | Palomares | 4.00 |
| 19 | Pepe                                 | Pepitez   | Palomares | 9.00 |
| 20 | Pepe                                 | Pepitez   | Palomares | 3.00 |
+----+--------------------------------------+-----------+-----------+------+
**/
CALL gen_students_with_mark_limits(10, 'Carlos', 'Carlitos', 'Albertina', -10, 12);
/**
Por lo que se puede ver los triggers se han activado correctamente en algunos casos por lo que no se puede pasar de 10 ni por debajo de 0.
+----+--------------------------------------+-----------+-----------+-------+
| id | nombre                               | apellido1 | apellido2 | nota  |
+----+--------------------------------------+-----------+-----------+-------+
|  1 | b2054ea1-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
|  2 | b206607c-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
|  3 | b207561e-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
|  4 | b2085dd2-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
|  5 | b20922dd-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
|  6 | f5dc9833-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
|  7 | f5de75f5-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
|  8 | f5e06d98-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
|  9 | f5e217c7-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
| 10 | f5e2cc36-1782-11ef-9d6b-080027077231 | a         | b         |  0.00 |
| 11 | Pepe                                 | Pepitez   | Palomares |  9.00 |
| 12 | Pepe                                 | Pepitez   | Palomares |  4.00 |
| 13 | Pepe                                 | Pepitez   | Palomares |  6.00 |
| 14 | Pepe                                 | Pepitez   | Palomares |  6.00 |
| 15 | Pepe                                 | Pepitez   | Palomares |  5.00 |
| 16 | Pepe                                 | Pepitez   | Palomares |  5.00 |
| 17 | Pepe                                 | Pepitez   | Palomares |  6.00 |
| 18 | Pepe                                 | Pepitez   | Palomares |  4.00 |
| 19 | Pepe                                 | Pepitez   | Palomares |  9.00 |
| 20 | Pepe                                 | Pepitez   | Palomares |  3.00 |
| 21 | Carlos                               | Carlitos  | Albertina |  0.00 |
| 22 | Carlos                               | Carlitos  | Albertina |  6.00 |
| 23 | Carlos                               | Carlitos  | Albertina | 10.00 |
| 24 | Carlos                               | Carlitos  | Albertina |  4.00 |
| 25 | Carlos                               | Carlitos  | Albertina |  0.00 |
| 26 | Carlos                               | Carlitos  | Albertina |  4.00 |
| 27 | Carlos                               | Carlitos  | Albertina |  0.00 |
| 28 | Carlos                               | Carlitos  | Albertina | 10.00 |
| 29 | Carlos                               | Carlitos  | Albertina |  1.00 |
| 30 | Carlos                               | Carlitos  | Albertina |  7.00 |
+----+--------------------------------------+-----------+-----------+-------+
**/
```

</div>