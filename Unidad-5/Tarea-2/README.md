<div align="justify">

# <div align="center">Tarea 2 de SQLite</div>

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
id_propietario integer, references Propietarios(id));
```

Hay que fijarse que la segunda tabla de Vehículos contiene una _foreign key_ por lo que sería ideal, hacer primero la tabla a la que esta referencia para no complicar la creación de la base de datos.

## Insertar 20 entradas en las tablas

### Algunos ejemplos de inserción en la 1ª Tabla:
```sql
INSERT INTO Propietarios VALUES('Pepe','Perez','12345678A');
```
```sql
INSERT INTO Propietarios VALUES('Maria','Lopez','87654321B');
```
```sql
INSERT INTO Propietarios VALUES('Victor','Vargas','11111112M');
```
### Algunos ejemplos de inserción en la 2ª tabla:
```sql
INSERT INTO Vehiculos VALUES('Ford','Fiesta',2019,1);
```
```sql
INSERT INTO Vehiculos VALUES('Honda','CR-V',2018,9);
```
```sql
INSERT INTO Vehiculos VALUES(18,'Toyota','Highlander',2020,18);
```
## Realizar 10 consultas de datos

Todos los propietarios:
```sql
select * from Propietarios;
```
Todos los vehículos:
```sql
select * from Vehiculos;
```
Nombres y apellidos de propietarios:
```sql
select nombre, apellido from Propietarios;
```

Todas las marcas y modelos de vehiculos:
```sql
select marca, modelo from Vehiculos
```

Propietarios con apellido "Perez":
```sql
select * from Propietarios
where apellido="Perez";
```

Vehículos con año 2019:
```sql
select * from Vehiculos
where anio="2019"
```

Propietarios de un "Toyota"
```sql
select P.* from Propietarios as P, Vehiculos as V
where V.marca="Toyota" and
P.id=V.id_propietario;
```

Vehículos de marca "Ford" y modelo "Fiesta":
```sql
select * from Vehiculos
where marca="Ford" and modelo="Fiesta;"
```

Propietarios con DNI "12345678A"
```sql
select * from Propietarios
where dni="12345678A";
```

Propietario con ID 5:

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