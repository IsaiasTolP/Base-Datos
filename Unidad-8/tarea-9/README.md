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
    email VARCHAR(100),
    PRIMARY KEY(id)
);
```
## Crear las Funciones
```sql
/**
Creamos una función que cree emails a partir de varios parámetros
**/
DELIMITER //

CREATE FUNCTION crear_email(nombre VARCHAR(50), apellido1 VARCHAR(50), apellido2 VARCHAR(50), dominio VARCHAR(30)) RETURNS VARCHAR(50)DETERMINISTIC
BEGIN
    RETURN (eliminar_acentos(CONCAT(SUBSTRING(nombre, 1, 1), SUBSTRING(apellido1, 1, 3), SUBSTRING(apellido2, 1, 3), '@', dominio)));
END //

DELIMITER ;

/**
Creamos una función que devuelva una cadena con los acentos elimininados
**/
DELIMITER //

CREATE FUNCTION eliminar_acentos(string VARCHAR(100)) RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
    DECLARE new_string VARCHAR(100);
    SET new_string = string;
    SET new_string = LOWER(new_string);
    SET new_string = REPLACE(new_string, 'á', 'a');
    SET new_string = REPLACE(new_string, 'é', 'e');
    SET new_string = REPLACE(new_string, 'í', 'i');
    SET new_string = REPLACE(new_string, 'ó', 'o');
    SET new_string = REPLACE(new_string, 'ú', 'u');
    RETURN new_string;
END //

DELIMITER ;
```

## Crear el Triggers
```sql
/**
Creamos un trigger que tendrá en cuenta si el nuevo email es NULO para crear uno automáticamente con las funciones que definimos arriba e insertarlo en la fila correspondiente
**/
DELIMITER //

CREATE TRIGGER trigger_crear_email_before_insert BEFORE INSERT ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.email is NULL THEN
        SET NEW.email = crear_email(NEW.nombre, NEW.apellido1, NEW.apellido2, 'notfilled.com');
    END IF;
END //

DELIMITER ;
```

## Verificaciones
```sql
/**
Procedimiento de insercion
**/
DELIMITER //

CREATE PROCEDURE insertar_alumnos_sin_email(IN iterations INT,IN nombre VARCHAR(50),IN apellido1 VARCHAR(50),IN apellido2 VARCHAR(50))
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        INSERT INTO alumnos(nombre, apellido1, apellido2) VALUES (
            CONCAT(nombre, RAND(counter)), CONCAT(apellido1, RAND(counter)), CONCAT(apellido2, RAND(counter))
        );
        SET counter = counter + 1;
    END WHILE;
END //

DELIMITER ;
-- Lo llamamos para ver si se crean los emails predefinidos
CALL insertar_alumnos_sin_email(2, 'Pedro', 'Rodriguez', 'Mendez');
CALL insertar_alumnos_sin_email(2, 'Miguel', 'Sanchez', 'Bencomo');
SELECT * FROM alumnos;
/**
+----+---------------------------+------------------------------+----------------------------+-----------------------+
| id | nombre                    | apellido1                    | apellido2                  | email                 |
+----+---------------------------+------------------------------+----------------------------+-----------------------+
|  1 | Pedro0.15522042769493574  | Rodriguez0.15522042769493574 | Mendez0.15522042769493574  | prodmen@notfilled.com |
|  2 | Pedro0.40540353712197724  | Rodriguez0.40540353712197724 | Mendez0.40540353712197724  | prodmen@notfilled.com |
|  3 | Miguel0.15522042769493574 | Sanchez0.15522042769493574   | Bencomo0.15522042769493574 | msanben@notfilled.com |
|  4 | Miguel0.40540353712197724 | Sanchez0.40540353712197724   | Bencomo0.40540353712197724 | msanben@notfilled.com |
+----+---------------------------+------------------------------+----------------------------+-----------------------+
Ambos tienen el mismo email predeterminado
**/

INSERT INTO alumnos (nombre, apellido1, apellido2, email) VALUES ('Javier', 'Gomez', 'Muñoz', 'Javi@example.com');
INSERT INTO alumnos (nombre, apellido1, apellido2, email) VALUES ('Diego', 'Nuñez', 'Fernández', 'Dieguito@example.com');
/**
Todo funciona correctamente
+----+---------------------------+------------------------------+----------------------------+-----------------------+
| id | nombre                    | apellido1                    | apellido2                  | email                 |
+----+---------------------------+------------------------------+----------------------------+-----------------------+
|  1 | Pedro0.15522042769493574  | Rodriguez0.15522042769493574 | Mendez0.15522042769493574  | prodmen@notfilled.com |
|  2 | Pedro0.40540353712197724  | Rodriguez0.40540353712197724 | Mendez0.40540353712197724  | prodmen@notfilled.com |
|  3 | Miguel0.15522042769493574 | Sanchez0.15522042769493574   | Bencomo0.15522042769493574 | msanben@notfilled.com |
|  4 | Miguel0.40540353712197724 | Sanchez0.40540353712197724   | Bencomo0.40540353712197724 | msanben@notfilled.com |
|  5 | Javier                    | Gomez                        | Muñoz                      | Javi@example.com      |
|  6 | Diego                     | Nuñez                        | Fernández                  | Dieguito@example.com  |
+----+---------------------------+------------------------------+----------------------------+-----------------------+
**/
```

</div>