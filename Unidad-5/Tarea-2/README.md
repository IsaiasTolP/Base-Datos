<div align="justify">

# <div align="center">Tarea 2 de SQLite</div>

## I

## Crear la base de datos
Entramos a la base de datos (si ya está creada, sinó la crea) mediante el comando de terminal ```sqlite3 tarea2.db```

Entonces creamos las tablas necesarias, 2 en este caso.
### Primera tabla

```sql
create table Propietarios
(id integer primary key autoincrement,
nombre text not null,
apellido text not null,
dni text unique);
```

### Segunda tabla
```sql
create table Vehiculos
(id integer primary key autoincrement,
marca text not null,
modelo text not null,
anio integer not null,
id_propietario integer references Propietarios(id));
```

Hay que fijarse que la segunda tabla de Vehículos contiene una _foreign key_ por lo que sería ideal, hacer primero la tabla a la que esta referencia para no complicar la creación de la base de datos.

## Insertar 20 entradas en las tablas

### Algunos ejemplos de inserción en la 1ª Tabla:
```sql
INSERT INTO Propietarios ( nombre, apellido, dni )
VALUES('Pepe','Perez','12345678A');
```
```sql
INSERT INTO Propietarios ( nombre, apellido, dni )
VALUES('Maria','Lopez','87654321B');
```
```sql
INSERT INTO Propietarios ( nombre, apellido, dni )
VALUES('Victor','Vargas','11111112M');
```
### Algunos ejemplos de inserción en la 2ª tabla:
```sql
INSERT INTO Vehiculos ( marca, modelo, anio, id_propietario )
VALUES('Ford','Fiesta',2019,1);
```
```sql
INSERT INTO Vehiculos ( marca, modelo, anio, id_propietario )
VALUES('Honda','CR-V',2018,9);
```
```sql
INSERT INTO Vehiculos ( marca, modelo, anio, id_propietario )
VALUES(18,'Toyota','Highlander',2020,18);
```
## Realizar 10 consultas de datos

Todos los propietarios:
```sql
select * from Propietarios;
```
+----+----------+-----------+-----------+
| id |  nombre  | apellido  |    dni    |
+----+----------+-----------+-----------+
| 1  | Pepe     | Perez     | 12345678A |
| 2  | Maria    | Lopez     | 87654321B |
| 3  | Carlos   | Ruiz      | 11111111C |
| 4  | Laura    | Gomez     | 22222222D |
| 5  | Pedro    | Martinez  | 33333333E |
| 6  | Ana      | Fernandez | 44444444F |
| 7  | Diego    | Gomez     | 55555555G |
| 8  | Sofia    | Torres    | 66666666H |
| 9  | Javier   | Leon      | 77777777I |
| 10 | Lucia    | Castillo  | 88888888J |
| 11 | Luis     | Gonzalez  | 99999999K |
| 12 | Marta    | Diaz      | 10101010L |
| 13 | Victor   | Vargas    | 11111112M |
| 14 | Elena    | Castro    | 12121212N |
| 15 | Roberto  | Blanco    | 13131313O |
| 16 | Natalia  | Paredes   | 14141414P |
| 17 | Fernando | Herrera   | 15151515Q |
| 18 | Clara    | Soto      | 16161616R |
| 19 | Sergio   | Mendoza   | 17171717S |
| 20 | Patricia | Navarro   | 18181818T |
+----+----------+-----------+-----------+
Todos los vehículos:
```sql
select * from Vehiculos;
```
+----+------------+------------+------+----------------+
| id |   marca    |   modelo   | anio | id_propietario |
+----+------------+------------+------+----------------+
| 1  | Renault    | Fiesta     | 2019 | 1              |
| 2  | Toyota     | Corolla    | 2018 | 2              |
| 3  | Nissan     | Micra      | 2018 | 3              |
| 4  | Chevrolet  | Spark      | 2017 | 4              |
| 5  | Honda      | Civic      | 2016 | 5              |
| 6  | Ford       | Mustang    | 2021 | 6              |
| 7  | Toyota     | RAV4       | 2019 | 7              |
| 8  | Volkswagen | Golf       | 2020 | 8              |
| 9  | Honda      | CR-V       | 2018 | 9              |
| 10 | Nissan     | Micra      | 2017 | 10             |
| 11 | Chevrolet  | Malibu     | 2019 | 11             |
| 12 | Toyota     | Camry      | 2020 | 12             |
| 13 | Honda      | Accord     | 2018 | 13             |
| 14 | Ford       | Explorer   | 2021 | 14             |
| 15 | Nissan     | Micra      | 2017 | 15             |
| 16 | Volkswagen | Jetta      | 2019 | 16             |
| 17 | Chevrolet  | Equinox    | 2018 | 17             |
| 18 | Toyota     | Highlander | 2020 | 18             |
| 19 | Honda      | Odyssey    | 2016 | 19             |
| 20 | Nissan     | Micra      | 2019 | 20             |
+----+------------+------------+------+----------------+

Nombres y apellidos de propietarios:
```sql
select nombre, apellido from Propietarios;
```
+----------+-----------+
|  nombre  | apellido  |
+----------+-----------+
| Pepe     | Perez     |
| Maria    | Lopez     |
| Carlos   | Ruiz      |
| Laura    | Gomez     |
| Pedro    | Martinez  |
| Ana      | Fernandez |
| Diego    | Gomez     |
| Sofia    | Torres    |
| Javier   | Leon      |
| Lucia    | Castillo  |
| Luis     | Gonzalez  |
| Marta    | Diaz      |
| Victor   | Vargas    |
| Elena    | Castro    |
| Roberto  | Blanco    |
| Natalia  | Paredes   |
| Fernando | Herrera   |
| Clara    | Soto      |
| Sergio   | Mendoza   |
| Patricia | Navarro   |
+----------+-----------+

Todas las marcas y modelos de vehiculos:
```sql
select marca, modelo from Vehiculos
```
+------------+------------+
|   marca    |   modelo   |
+------------+------------+
| Renault    | Fiesta     |
| Toyota     | Corolla    |
| Nissan     | Micra      |
| Chevrolet  | Spark      |
| Honda      | Civic      |
| Ford       | Mustang    |
| Toyota     | RAV4       |
| Volkswagen | Golf       |
| Honda      | CR-V       |
| Nissan     | Micra      |
| Chevrolet  | Malibu     |
| Toyota     | Camry      |
| Honda      | Accord     |
| Ford       | Explorer   |
| Nissan     | Micra      |
| Volkswagen | Jetta      |
| Chevrolet  | Equinox    |
| Toyota     | Highlander |
| Honda      | Odyssey    |
| Nissan     | Micra      |
+------------+------------+
Propietarios con apellido "Perez":
```sql
select * from Propietarios
where apellido="Perez";
```
+----+--------+----------+-----------+
| id | nombre | apellido |    dni    |
+----+--------+----------+-----------+
| 1  | Pepe   | Perez    | 12345678A |
+----+--------+----------+-----------+
Vehículos con año 2019:
```sql
select * from Vehiculos
where anio="2019"
```
+----+------------+--------+------+----------------+
| id |   marca    | modelo | anio | id_propietario |
+----+------------+--------+------+----------------+
| 1  | Renault    | Fiesta | 2019 | 1              |
| 7  | Toyota     | RAV4   | 2019 | 7              |
| 11 | Chevrolet  | Malibu | 2019 | 11             |
| 16 | Volkswagen | Jetta  | 2019 | 16             |
| 20 | Nissan     | Micra  | 2019 | 20             |
+----+------------+--------+------+----------------+

Propietarios de un "Toyota"
```sql
select P.* from Propietarios as P, Vehiculos as V
where V.marca="Toyota" and
P.id=V.id_propietario;
```
+----+--------+----------+-----------+
| id | nombre | apellido |    dni    |
+----+--------+----------+-----------+
| 2  | Maria  | Lopez    | 87654321B |
| 7  | Diego  | Gomez    | 55555555G |
| 12 | Marta  | Diaz     | 10101010L |
| 18 | Clara  | Soto     | 16161616R |
+----+--------+----------+-----------+
Vehículos de marca "Ford" y modelo "Fiesta":
```sql
select * from Vehiculos
where marca="Ford" and modelo="Fiesta";
```
+----+-------+--------+------+----------------+
| id | marca | modelo | anio | id_propietario |
+----+-------+--------+------+----------------+
| 1  | Ford  | Fiesta | 2019 | 1              |
+----+-------+--------+------+----------------+

Propietarios con DNI "12345678A"
```sql
select * from Propietarios
where dni="12345678A";
```
+----+--------+----------+-----------+
| id | nombre | apellido |    dni    |
+----+--------+----------+-----------+
| 1  | Pepe   | Perez    | 12345678A |
+----+--------+----------+-----------+
Propietario con ID 5:
```sql
select * from Propietarios
where id="5"
```
+----+--------+----------+-----------+
| id | nombre | apellido |    dni    |
+----+--------+----------+-----------+
| 5  | Pedro  | Martinez | 33333333E |
+----+--------+----------+-----------+

## Realizar 5 cambios(Updates)

Actualizar nombre de propietario con DNI "12345678A":
```sql
update Propietarios set nombre="Pepe"
where dni="12345678A";
```

Modificar año de vehículo con ID "3" a "2022":
```sql
update Vehiculos set anio="2018"
where id="3";
```

Cambiar modelo de todos los vehículos Nissan a "Micra":
```sql
update Vehiculos set modelo="Micra"
where marca="Nissan";
```

Actualizar el apellido de un propietario con ID "7" a "Gomez":
```sql
update Propietarios set apellido="Gomez"
where id="7";
```

Modificar la marca de un vehículo con modelo "Fiesta" a "Renault":
```sql
update Vehiculos set marca="Renault"
where modelo="Fiesta"
```

</div>