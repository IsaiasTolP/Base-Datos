<div align="justify">

# <div align="center">Tarea 4 UT 8 MySQL</div>
![logo](../../Unidad-6/Tarea-3/images/Mysql.png)

## Crear la base de datos
```sql
CREATE DATABASE salario;

USE salario;

CREATE TABLE persona (
    Identificador VARCHAR(100),
    Nombre VARCHAR(100),
    Salario_base FLOAT(10,2),
    Subsidio FLOAT(8,2) NULL,
    Salud FLOAT (8,2) NULL,
    Pension FLOAT (8,2) NULL,
    Bono FLOAT(8,2) NULL,
    Integral FLOAT(10,2) NULL,
    PRIMARY KEY (Identificador)
);

DELIMITER //

CREATE PROCEDURE person_generator(IN iterations INT, IN nombre VARCHAR(100), IN salario FLOAT(10,2))
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        INSERT INTO persona (Identificador, Nombre, Salario_base) VALUES(
            UUID(), CONCAT(nombre, RAND(counter)), FLOOR(RAND(counter) * (salario - 1000 + 3) + salario));
        SET counter = counter + 1;
    END WHILE;
END //


CREATE TRIGGER subsidio BEFORE INSERT ON persona
FOR EACH ROW
BEGIN
    SET NEW.Subsidio = NEW.Salario_base * 0.07;
END //

DELIMITER ;
/**
Llamamos al procedimiento para ver si todo a funcionado correctamente antes de continuar.

CALL person_generator(2, 'Miguel', 1200);

+--------------------------------------+---------------------------+--------------+----------+-------+---------+------+----------+
| Identificador                        | Nombre                    | Salario_base | Subsidio | Salud | Pension | Bono | Integral |
+--------------------------------------+---------------------------+--------------+----------+-------+---------+------+----------+
| 1607577b-15d5-11ef-a5cd-080027077231 | Miguel0.15522042769493574 |      1231.00 |    86.17 |  NULL |    NULL | NULL |     NULL |
| 16080fff-15d5-11ef-a5cd-080027077231 | Miguel0.40540353712197724 |      1282.00 |    89.74 |  NULL |    NULL | NULL |     NULL |
+--------------------------------------+---------------------------+--------------+----------+-------+---------+------+----------+
**/

DELIMITER //

CREATE TRIGGER salud BEFORE INSERT ON persona
FOR EACH ROW
BEGIN
    SET NEW.Salud = NEW.Salario_base * 0.04;
END //

CREATE TRIGGER pension BEFORE INSERT ON persona
FOR EACH ROW
BEGIN
    SET NEW.Pension = NEW.Salario_base * 0.04;
END //

CREATE TRIGGER bono BEFORE INSERT ON persona
FOR EACH ROW
BEGIN
    SET NEW.Bono = NEW.Salario_base * 0.08;
END //

CREATE TRIGGER integral BEFORE INSERT ON persona
FOR EACH ROW
BEGIN
    SET NEW.Integral = NEW.Salario_base - NEW.Salud - NEW.Pension + NEW.Bono + NEW.Subsidio;
END //

DELIMITER ;

CALL person_generator(10, 'Pedro', 2500);
/**
Cabe recalcar un apunte y es que el salario gracias a como está programado el procedimiento no debería de ser menor a 1000, ya que a partir de ahí el calculo daría números bajos y con menor aleatoriedad. Por lo tanto, todavía cabrían mejoras en el procedimiento que mejorasen esa aleatoriedad.
+--------------------------------------+---------------------------+--------------+----------+--------+---------+--------+----------+
| Identificador                        | Nombre                    | Salario_base | Subsidio | Salud  | Pension | Bono   | Integral |
+--------------------------------------+---------------------------+--------------+----------+--------+---------+--------+----------+
| 1607577b-15d5-11ef-a5cd-080027077231 | Miguel0.15522042769493574 |      1231.00 |    86.17 |   NULL |    NULL |   NULL |     NULL |
| 16080fff-15d5-11ef-a5cd-080027077231 | Miguel0.40540353712197724 |      1282.00 |    89.74 |   NULL |    NULL |   NULL |     NULL |
| 74f0ae89-15d6-11ef-a5cd-080027077231 | Pedro0.15522042769493574  |      2733.00 |   191.31 | 109.32 |  109.32 | 218.64 |  2924.31 |
| 74f16e5a-15d6-11ef-a5cd-080027077231 | Pedro0.40540353712197724  |      3109.00 |   217.63 | 124.36 |  124.36 | 248.72 |  3326.63 |
| 74f1bfc7-15d6-11ef-a5cd-080027077231 | Pedro0.6555866465490187   |      3485.00 |   243.95 | 139.40 |  139.40 | 278.80 |  3728.95 |
| 74f24351-15d6-11ef-a5cd-080027077231 | Pedro0.9057697559760601   |      3861.00 |   270.27 | 154.44 |  154.44 | 308.88 |  4131.27 |
| 74f2c276-15d6-11ef-a5cd-080027077231 | Pedro0.15595286540310166  |      2734.00 |   191.38 | 109.36 |  109.36 | 218.72 |  2925.38 |
| 74f32934-15d6-11ef-a5cd-080027077231 | Pedro0.40613597483014313  |      3110.00 |   217.70 | 124.40 |  124.40 | 248.80 |  3327.70 |
| 74f37c16-15d6-11ef-a5cd-080027077231 | Pedro0.6563190842571847   |      3486.00 |   244.02 | 139.44 |  139.44 | 278.88 |  3730.02 |
| 74f3ded2-15d6-11ef-a5cd-080027077231 | Pedro0.9065021936842261   |      3862.00 |   270.34 | 154.48 |  154.48 | 308.96 |  4132.34 |
| 74f43079-15d6-11ef-a5cd-080027077231 | Pedro0.15668530311126755  |      2735.00 |   191.45 | 109.40 |  109.40 | 218.80 |  2926.45 |
| 74f4af9c-15d6-11ef-a5cd-080027077231 | Pedro0.406868412538309    |      3111.00 |   217.77 | 124.44 |  124.44 | 248.88 |  3328.77 |
+--------------------------------------+---------------------------+--------------+----------+--------+---------+--------+----------+
**/
```

</div>