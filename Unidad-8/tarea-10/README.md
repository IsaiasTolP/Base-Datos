<div align="justify">

# <div align="center">Tarea 4 UT 8 MySQL</div>
![logo](../../Unidad-6/Tarea-3/images/Mysql.png)

## Crear la tabla log_cambios_email
```sql
CREATE TABLE log_cambios_email (
    id INT AUTO_INCREMENT,
    id_alumno INT,
    fecha_hora DATETIME,
    old_email VARCHAR(100),
    new_email VARCHAR(100),
    PRIMARY KEY (id)
);
```

## Guardar email tras un update mediante trigger
```sql
DELIMITER //

CREATE TRIGGER trigger_guardar_email_after_update AFTER UPDATE ON alumnos
FOR EACH ROW
BEGIN
    INSERT INTO log_cambios_email (id_alumno, fecha_hora, old_email, new_email) VALUES (
        NEW.id, NOW(), OLD.email, NEW.email);
END //

DELIMITER ;
/**
Vamos a probarlo haciendo algunos updates
**/
UPDATE alumnos SET email = 'PedritoTeQuiere@example.com' WHERE id = 2;
UPDATE alumnos SET email = 'MiguelitoSalvaje@example.com' WHERE id = 4;
SELECT * FROM log_cambios_email;
/**
+----+-----------+---------------------+-----------------------+------------------------------+
| id | id_alumno | fecha_hora          | old_email             | new_email                    |
+----+-----------+---------------------+-----------------------+------------------------------+
|  1 |         2 | 2024-05-23 10:14:25 | prodmen@notfilled.com | PedritoTeQuiere@example.com  |
|  2 |         4 | 2024-05-23 10:14:26 | msanben@notfilled.com | MiguelitoSalvaje@example.com |
+----+-----------+---------------------+-----------------------+------------------------------+
Se han realizado las inserciones con éxito.
**/
```

## Crear un Trigger para guardar alumnos eliminados
```sql
CREATE TABLE log_alumnos_eliminados (
    id INT AUTO_INCREMENT,
    id_alumno INT,
    fecha_hora DATETIME,
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    email VARCHAR(100),
    PRIMARY KEY (id)
);

DELIMITER //

CREATE TRIGGER trigger_guardar_elementos_eliminados AFTER DELETE ON alumnos
FOR EACH ROW
BEGIN
    INSERT INTO log_alumnos_eliminados (id_alumno, fecha_hora, nombre, apellido1, apellido2, email) VALUES (
        OLD.id, NOW(), OLD.nombre, OLD.apellido1, OLD.apellido2, OLD.email);
END //

DELIMITER ;

-- Lo probamos
DELETE FROM alumnos WHERE id = 1;
DELETE FROM alumnos WHERE id = 5;
select * from log_alumnos_eliminados;
/**
+----+-----------+---------------------+--------------------------+------------------------------+---------------------------+-----------------------------+
| id | id_alumno | fecha_hora          | nombre                   | apellido1                    | apellido2                 | email                       |
+----+-----------+---------------------+--------------------------+------------------------------+---------------------------+-----------------------------+
|  1 |         1 | 2024-05-23 10:47:22 | Pedro0.15522042769493574 | Rodriguez0.15522042769493574 | Mendez0.15522042769493574 | PedritoTeQuiere@example.com |
|  2 |         5 | 2024-05-23 10:49:24 | Javier                   | Gomez                        | Muñoz                     | Javi@example.com            |
+----+-----------+---------------------+--------------------------+------------------------------+---------------------------+-----------------------------+
**/
```
</div>