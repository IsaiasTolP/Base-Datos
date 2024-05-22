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
    RETURN eliminar_acentos((CONCAT(SUBSTRING(nombre, 1, 1), SUBSTRING(apellido1, 1, 3), SUBSTRING(apellido2, 1, 3), '@', dominio)));
END //

DELIMITER ;

/**
Creamos una función que devuelva una cadena con los acentos elimininados
**/
DELIMITER //

CREATE FUNCTION eliminar_acentos(string VARCHAR(100)) RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
    DECLARE new_string VARCHAR(100);
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
BEGIN

END //

DELIMITER ;
```

## Verificaciones

</div>