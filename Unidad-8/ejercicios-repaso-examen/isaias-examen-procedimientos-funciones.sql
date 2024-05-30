/**¿Sabías que la mayoría de los adultos sanos pueden ser donantes? Aunque existen ciertas condiciones que debes cumplir para realizar con éxito una donación. Descubre los requisitos básicos para donar sangre.

Para la poder donar sangre se deben cumplir varias condiciones:

    Tener un peso superior a 50Kg.
    No haber donado en un periodo anterior a 90 días en caso de ser hombre y 120 días en caso de mujer.

Teniendo en cuenta esta información se pide:
**/

-- Crea una base datos llamada donación.
CREATE DATABASE donacion;
USE donacion;

/**
Crea una tabla llamada persona con los siguientes campos:

    Identificador Auto Incremental (Integer) PK
    Identificador (Texto) 
    Peso. (Entero)
    Admitido. Texto(Si/No).(Valores de dominio:Si/No)
    Sexo. Texto (H/M).(Valores de dominio:H/M)
    Fecha Última Donación.
**/
CREATE TABLE persona (
    id INT AUTO_INCREMENT,
    identificador VARCHAR(9),
    peso INT,
    admitido VARCHAR(2),
    sexo VARCHAR(1),
    fecha_ultima_donacion DATE,
    PRIMARY KEY (id)
);


/**
Se pide:

- Realiza los siguientes procedimientos:

	- (1) Realizar un procedimiento que realice la inserción de datos aleatorios en la tabla. El procedimiento debe de recibir como parámetro de entrada,
 al menos, el número de registros que se desea insertar y se debe de lanzar, al menos, en dos ocasiones, para verificar su correcto funcionamiento. 
 Los datos deben de ser aleatorios, es decir, en cada inserción de debe de auto generar o seleccionar uno al azar, de los campos requeridos.
**/
DELIMITER //
CREATE PROCEDURE insertar_random(IN iterations INT, IN DNI VARCHAR(9), IN peso_max INT, IN peso_min INT, IN sexo VARCHAR(1), IN old_fecha DATE)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE rand_peso INT;

    WHILE counter < iterations DO
        SET rand_peso = FLOOR(RAND(counter) * (peso_max - peso_min + 1) + peso_min);
        INSERT INTO persona (identificador, peso, admitido, sexo, fecha_ultima_donacion) VALUES (
            DNI, rand_peso, 'NO', sexo, old_fecha 
        );
        SELECT is_valid(DNI, rand_peso, NOW()) as "¿Ha podido donar?";
        SET counter = counter + 1;
    END WHILE;
END //

DELIMITER ;

CALL insertar_random(5, '44444444A', 100, 60, 'M', '2020-10-28');
CALL insertar_random(5, '33333333A', 100, 60, 'H', '2020-10-28');
CALL insertar_random(5, '22222222A', 100, 30, 'M', '2020-10-28');
CALL insertar_random(5, '11111111A', 100, 30, 'H', '2020-10-28');

/**
Fakin funciona
+----+---------------+------+----------+------+-----------------------+
| id | identificador | peso | admitido | sexo | fecha_ultima_donacion |
+----+---------------+------+----------+------+-----------------------+
|  1 | 44444444A     |   66 | SI       | M    | 2024-05-30            |
|  2 | 44444444A     |   76 | NO       | M    | 2020-10-28            |
|  3 | 44444444A     |   86 | NO       | M    | 2020-10-28            |
|  4 | 44444444A     |   97 | NO       | M    | 2020-10-28            |
|  5 | 44444444A     |   66 | NO       | M    | 2020-10-28            |
|  6 | 33333333A     |   66 | SI       | H    | 2024-05-30            |
|  7 | 33333333A     |   76 | NO       | H    | 2020-10-28            |
|  8 | 33333333A     |   86 | NO       | H    | 2020-10-28            |
|  9 | 33333333A     |   97 | NO       | H    | 2020-10-28            |
| 10 | 33333333A     |   66 | NO       | H    | 2020-10-28            |
| 11 | 22222222A     |   41 | NO       | M    | 2020-10-28            |
| 12 | 22222222A     |   58 | SI       | M    | 2024-05-30            |
| 13 | 22222222A     |   76 | NO       | M    | 2020-10-28            |
| 14 | 22222222A     |   94 | NO       | M    | 2020-10-28            |
| 15 | 22222222A     |   41 | NO       | M    | 2020-10-28            |
| 16 | 11111111A     |   41 | NO       | H    | 2020-10-28            |
| 17 | 11111111A     |   58 | SI       | H    | 2024-05-30            |
| 18 | 11111111A     |   76 | NO       | H    | 2020-10-28            |
| 19 | 11111111A     |   94 | NO       | H    | 2020-10-28            |
| 20 | 11111111A     |   41 | NO       | H    | 2020-10-28            |
+----+---------------+------+----------+------+-----------------------+
**/

/**
	- (2) Realiza un procedimiento que permita actualizar el la fecha de última donación, teniendo como parámetro de entrada el identificador de la persona, 
    y una fecha.
**/
DELIMITER //
CREATE PROCEDURE update_date(IN DNI VARCHAR(9), IN new_date DATE)
BEGIN
    UPDATE persona SET fecha_ultima_donacion = new_date WHERE identificador = DNI;
END //
DELIMITER ;


/**
- (3) Crea un procedimiento llamado CalcularTotalDonaciones que calcule la cantidad total de donaciones realizadas por cada persona y
la almacene en una tabla llamada total_donaciones. La tabla total_donaciones debe tener dos columnas: id_persona (texto) y cantidad_total (integer).
**/
CREATE TABLE total_donaciones (
    id_persona VARCHAR(9),
    cantidad_total INT
);

DELIMITER //
CREATE PROCEDURE CalcularTotalDonaciones()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE DNI VARCHAR(9);
    DECLARE person_cur CURSOR FOR SELECT DISTINCT(identificador) FROM persona;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN person_cur;
    insert_loop: LOOP
        FETCH person_cur INTO DNI;
        IF done THEN
            LEAVE insert_loop;
        END IF;
        INSERT INTO total_donaciones (id_persona, cantidad_total) VALUES (
            DNI, (SELECT COUNT(*) FROM persona WHERE identificador = DNI GROUP BY identificador)
        );
    END LOOP;
END //
DELIMITER ;

-- (4) Crea un procedimiento que me permita eliminar una persona de la tabla total_donaciones.
DELIMITER //
CREATE PROCEDURE EliminarPersona(IN DNI VARCHAR(9))
BEGIN
    DELETE FROM total_donaciones WHERE id_persona = DNI;
END //
DELIMITER ;


-- Realizar cada una de las siguientes funciones:

-- (1) Realiza una función que determine si una persona almacenada en la tabla persona puede realizar una donación. 
-- Para ello la función recibe como parámetro de entrada el identificador de esta persona, y una fecha de donación. 
-- Revisa las condiciones para que una persona pueda o no donar. 
-- Posteriormente actualice el valor de la última donación de la persona indicada con el parámetro de entrada.
DELIMITER //
CREATE FUNCTION is_valid(DNI VARCHAR(9), peso INT, new_fecha DATE) RETURNS VARCHAR(2) DETERMINISTIC
BEGIN
    DECLARE last_donation DATE;
    DECLARE curr_sex VARCHAR(1);
    DECLARE curr_id INT;
    DECLARE min_weight INT;
    DECLARE man_limit_days INT DEFAULT 90;
    DECLARE woman_limit_days INT DEFAULT 120;
    SET min_weight = 50;
    SELECT fecha_ultima_donacion, sexo INTO last_donation, curr_sex FROM persona WHERE identificador = DNI ORDER BY fecha_ultima_donacion DESC LIMIT 1;
    SELECT id INTO curr_id FROM persona ORDER BY id DESC LIMIT 1;
    IF curr_sex = 'H' AND peso > min_weight THEN
        IF DATE_ADD(last_donation, INTERVAL man_limit_days DAY) < new_fecha THEN
            UPDATE persona SET fecha_ultima_donacion = new_fecha, admitido = 'SI' WHERE id = curr_id;
            RETURN 'SI';
        ELSE
            RETURN 'NO';
        END IF;
    ELSEIF curr_sex = 'M' and peso > min_weight THEN
        IF DATE_ADD(last_donation, INTERVAL woman_limit_days DAY) < new_fecha THEN
            UPDATE persona SET fecha_ultima_donacion = new_fecha, admitido = 'SI' WHERE id = curr_id;
            RETURN 'SI';
        ELSE
            RETURN 'NO';
        END IF;
    ELSE
        RETURN 'NO';
    END IF;
END //
DELIMITER ;

-- (2) Realiza una función que determine que persona es la que más donaciones ha realizado.
DELIMITER //
CREATE FUNCTION MaximoDonante() RETURNS VARCHAR(9) DETERMINISTIC
BEGIN
    RETURN (SELECT id_persona FROM total_donaciones ORDER BY cantidad_total DESC LIMIT 1);
END //
DELIMITER ;

-- Triggers

-- (1) Realiza un trigger que actualiza total_donaciones con cada una de las inserciones que se realicen en la tabla Persona.
DELIMITER //
CREATE TRIGGER update_donations AFTER INSERT ON persona
FOR EACH ROW
BEGIN
    INSERT INTO total_donaciones VALUES (NEW.identificador, (SELECT COUNT(*) FROM persona WHERE identificador = NEW.identificador));
END //
DELIMITER ;

-- (2) Realiza un trigger que elimine todos los registros en la tabla persona cuando se elimine un registro de la tabla total_donaciones.
DELIMITER //
CREATE TRIGGER eliminate_donant AFTER DELETE ON total_donaciones
FOR EACH ROW
BEGIN
    DELETE FROM persona WHERE OLD.id_persona = identificador;
END //
DELIMITER ;

