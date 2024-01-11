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

## Insertar 20 entradas en las tablas.
</div>