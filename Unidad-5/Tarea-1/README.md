<div align="justify">

# <div align="center">Tarea 1 de SQLite3</div>

## Creando una base de datos
Se usa el comando ```sqlite3 tarea1.db```
A continuación usamos el comando: 

```sql
create table Ejemplo 
(id integer not null primary key autoincrement, 
texto text not null, 
entero integer not null, 
decimal real not null, 
fecha date not null, 
booleano boolean not null);
```

## Añadiendo datos a la tabla
Para añadir datos a una tabla lo que tenemos que hacer es seguir un orden de comandos:

```sql
insert into Ejemplo ( texto, entero, decimal, fecha, booleano )
values ( 'Ejemplo9', '31', '55.0', '2023-01-20', '0');
```

```sql
insert into Ejemplo ( texto, entero, decimal, fecha, booleano )
values ( 'Ejemplo5', '42', '18.9', '2022-09-12', '0');
```
Ahí se ven 2 ejemplos de una inserción de datos en tablas, exponemos primero la tabla donde queremos insertar los datos y las columnas concretas, acto seguido vamos poniendo los valores, cada uno se insertará en una columna siguiendo el orden puesto en la primera línea.

</div>
