<div align="justify">

# <div align="center">Tarea 1 de SQLite3</div>

## En esta carpeta del repositorio hay una BD modificada con todas las sentencias de la tarea y otra sin modificar

## Creando una base de datos
Se usa el comando ```sqlite3 tarea1.db``` para entrar a la base de datos.

Se han usado los siguientes apuntes:
* [Apuntes crear y borrar tablas](https://github.com/jpexposito/docencia/blob/master/Primero/BAE/UNIDAD-5/sqlite/01_crear_borrar_tabla.md)

A continuación usamos el comando siguiente para crear la tabla: 

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
Para añadir datos a una tabla lo que tenemos que hacer es seguir un orden de comandos, podemos seguir los pasos de estos apuntes:
* [Apuntes insertar datos](https://github.com/jpexposito/docencia/blob/master/Primero/BAE/UNIDAD-5/sqlite/02_insert_select.md)

```sql
insert into Ejemplo ( texto, entero, decimal, fecha, booleano )
values ( 'Ejemplo9', '31', '55.0', '2023-01-20', '0');
```

```sql
insert into Ejemplo ( texto, entero, decimal, fecha, booleano )
values ( 'Ejemplo5', '42', '18.9', '2022-09-12', '0');
```
Ahí se ven 2 ejemplos de una inserción de datos en tablas, exponemos primero la tabla donde queremos insertar los datos y las columnas concretas, acto seguido vamos poniendo los valores, cada uno se insertará en una columna siguiendo el orden puesto en la primera línea.

## Consultando en una tabla
Los apuntes de donde he sacado información para hacer consultas son:
* [Apuntes modificaciones](https://github.com/jpexposito/docencia/blob/master/Primero/BAE/UNIDAD-5/sqlite/02_insert_select.md)

### Consultas de la tarea 1
1. Todas las entradas de la tabla ```Ejemplo```
```sql
select * from Ejemplo;
```
2. Las entradas del campo ```entero``` mayor que 50
```sql
select * from Ejemplo
where entero > 50;
```

## Eliminando y modificando la clase
De donde he sacado la información para hacer estas sentencias SQL:
* [Apuntes eliminaciones](https://github.com/jpexposito/docencia/blob/master/Primero/BAE/UNIDAD-5/sqlite/05_delete.md)
* [Apuntes modificaciones](https://github.com/jpexposito/docencia/blob/master/Primero/BAE/UNIDAD-5/sqlite/06_update.md)

### Eliminaciones tarea 1
1. Elimina las entradas donde el campo ```booleano``` es igual a ```True```.
```sql
delete from Ejemplo
where booleano = True;
```

2. Elimina las entradas donde el campo ```entero``` es igual a 50.
```sql
delete from Ejemplo
where entero = 50;
```

3. Elimina las entradas donde el campo ```decimal``` es menor a 50.
```sql
delete from Ejemplo
where decimal < 50;
```

### Modificaciones tarea 1
1. Modifica el campo ```texto``` de las entradas donde el campo ```entero``` es menor a 30 y establece el texto como "Modificado".
```sql
update Ejemplo set texto = 'Modificado'
where entero < 30;
```

2. Incrementa en 10 el valor del campo ```entero``` para las entradas donde el campo ```booleano``` es igual ```False```.
```sql
update Ejemplo set entero = entero + 10
where booleano = False;
```

3. Actualiza el campo ```fecha``` de todas las entradas a la fecha actual.
```sql
update Ejemplo set fecha = '2023-12-14';
```

</div>
