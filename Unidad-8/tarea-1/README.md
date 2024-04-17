<div align="justify">

# <div align="center">Tarea 1 MySQL Unidad 8</div>

## Crea la bbdd: Utilizaremos comandos SQL para crear una base de datos llamada "SimpleDB" que contendrá dos tablas: "Users" para almacenar información de usuarios y "Products" para almacenar información de productos.

```sql
CREATE DATABASE IF NOT EXISTS SimpleDB;

USE SimpleDB;

CREATE TABLE IF NOT EXISTS Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);
```

## Realiza la inserción de algunos datos de prueba. Inserta 3 más a cada tabla.

```sql
INSERT INTO Users (UserName, Email) VALUES ('Juan', 'juan@example.com');
INSERT INTO Users (UserName, Email) VALUES ('María', 'maria@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Pedro', 'pedro@example.com');

INSERT INTO Products (ProductName, Price) VALUES ('Producto 1', 10.99);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 2', 20.50);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 3', 15.75);

INSERT INTO Users (UserName, Email) VALUES ('Miguel', 'Miguel@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Diego', 'Diego@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Pablo', 'Pablo@example.com');

INSERT INTO Products (ProductName, Price) VALUES ('Producto 4', 75.95);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 5', 54.99);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 6', 100.44);
```

## Crea procedimientos almacenados para realizar operaciones como insertar un nuevo usuario, actualizar el nombre de un usuario, etc.
    
### Procedimiento para insertar un nuevo usuario.
```sql
DELIMITER $$
CREATE PROCEDURE create_user(IN first_name VARCHAR(50), IN email VARCHAR(100))
BEGIN
INSERT INTO Users (UserName, Email) VALUES (first_name, email);
END $$
```

### Nota: Realiza la invocación y la verificación de que ha funcionado correctamente.
```sql
CALL create_user('Jesus', 'jesus@example.com')$$
Query OK, 1 row affected (0,01 sec)

DELIMITER ;
select * from Users;
/**
+--------+----------+--------------------+
| UserID | UserName | Email              |
+--------+----------+--------------------+
|      1 | Juan     | juan@example.com   |
|      2 | María    | maria@example.com  |
|      3 | Pedro    | pedro@example.com  |
|      4 | Miguel   | Miguel@example.com |
|      5 | Diego    | Diego@example.com  |
|      6 | Pablo    | Pablo@example.com  |
|      7 | Jesus    | jesus@example.com  |
+--------+----------+--------------------+
**/
```
### Procedimiento para actualizar el nombre de un usuario.
```sql
DELIMITER $$
CREATE PROCEDURE update_user(IN new_name VARCHAR(50), IN old_name VARCHAR(50))
BEGIN
UPDATE Users SET UserName = new_name where UserName=old_name;
END $$
```

### Nota: Realiza la invocación y la verificación de que ha funcionado correctamente.

```sql
DELIMITER ;
CALL update_user('Yugan', 'Juan');
Query OK, 1 row affected (0,01 sec)

select * from Users;
/**
+--------+----------+--------------------+
| UserID | UserName | Email              |
+--------+----------+--------------------+
|      1 | Yugan    | juan@example.com   |
|      2 | María    | maria@example.com  |
|      3 | Pedro    | pedro@example.com  |
|      4 | Miguel   | Miguel@example.com |
|      5 | Diego    | Diego@example.com  |
|      6 | Pablo    | Pablo@example.com  |
|      7 | Jesus    | jesus@example.com  |
+--------+----------+--------------------+
**/
```

### Implementa funciones para realizar cálculos o consultas:
```sql
DELIMITER $$
CREATE FUNCTION say_hi(Username VARCHAR(50)) RETURNS VARCHAR(100)
BEGIN
DECLARE salida VARCHAR(100);
SET salida = CONCAT('Hola soy ', Username);
RETURN salida;
END $$

DELIMITER ;
select say_hi('Yugan');
/**
+-----------------+
| say_hi('Yugan') |
+-----------------+
| Hola soy Yugan  |
+-----------------+
**/
```

### Función para calcular el precio total de un conjunto de productos.
```sql
DELIMITER $$
CREATE FUNCTION total(limite INT) RETURNS DECIMAL(10,2)
BEGIN
    DECLARE total_price DECIMAL(10,2);
    select SUM(price) INTO total_price FROM Products LIMIT limite;
    RETURN total_price;
END $$

DELIMITER ;

select total(4);
/**
+----------+
| total(4) |
+----------+
|   278.62 |
+----------+
**/
```

### Función para contar el número de usuarios.
```sql
DELIMITER $$
CREATE FUNCTION num_users() RETURNS INT
BEGIN
    DECLARE numero_total INT;
    SELECT COUNT(*) INTO numero_total FROM Users;
    RETURN numero_total;
END $$

DELIMITER ;

select num_users();
/**
+-------------+
| num_users() |
+-------------+
|           7 |
+-------------+
**/
```


</div>