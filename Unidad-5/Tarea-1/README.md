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
* Si quisieramos también podríamos introducir varios datos en una sola sentencia SQL:
```sql
insert into Ejemplo ( texto, entero, decimal, fecha, booleano )
values ( 'Ejemplo48', '96', '25.6', '2026-04-08', '1' ),
values ( 'Ejemplo49', '28', '50.0', '2026-05-25', '0' ),
values ( 'Ejemplo50', '75', '85.3', '2026-06-11', '1' );
```

## Consultando en una tabla
Los apuntes de donde he sacado información para hacer consultas son:
* [Apuntes modificaciones](https://github.com/jpexposito/docencia/blob/master/Primero/BAE/UNIDAD-5/sqlite/02_insert_select.md)

### Consultas de la tarea 1
1. Sentencia SQL para ver todas las entradas de la tabla ```Ejemplo```
```sql
select * from Ejemplo;
```
* Esta sentencia nos dará la siguiente salida:
```code
+----+-----------+--------+---------+------------+----------+
| id |   texto   | entero | decimal |   fecha    | booleano |
+----+-----------+--------+---------+------------+----------+
| 1  | Ejemplo1  | 25     | 10.5    | 2022-05-15 | 0        |
| 2  | Ejemplo2  | 63     | 45.7    | 2022-06-22 | 1        |
| 3  | Ejemplo3  | 12     | 30.0    | 2022-07-10 | 0        |
| 4  | Ejemplo4  | 78     | 75.2    | 2022-08-05 | 1        |
| 5  | Ejemplo5  | 42     | 18.9    | 2022-09-12 | 0        |
| 6  | Ejemplo6  | 55     | 60.3    | 2022-10-08 | 1        |
| 7  | Ejemplo7  | 10     | 40.1    | 2022-11-17 | 0        |
| 8  | Ejemplo8  | 87     | 22.6    | 2022-12-03 | 1        |
| 9  | Ejemplo9  | 31     | 55.0    | 2023-01-20 | 0        |
| 10 | Ejemplo10 | 68     | 90.4    | 2023-02-14 | 1        |
| 11 | Ejemplo11 | 15     | 12.8    | 2023-03-22 | 0        |
| 12 | Ejemplo12 | 72     | 48.6    | 2023-04-09 | 1        |
| 13 | Ejemplo13 | 22     | 33.7    | 2023-05-01 | 0        |
| 14 | Ejemplo14 | 93     | 70.2    | 2023-06-18 | 1        |
| 15 | Ejemplo15 | 37     | 15.4    | 2023-07-05 | 0        |
| 16 | Ejemplo16 | 81     | 82.9    | 2023-08-11 | 1        |
| 17 | Ejemplo17 | 45     | 28.3    | 2023-09-27 | 0        |
| 18 | Ejemplo18 | 60     | 50.6    | 2023-10-15 | 1        |
| 19 | Ejemplo19 | 5      | 8.7     | 2023-11-22 | 0        |
| 20 | Ejemplo20 | 76     | 65.1    | 2023-12-08 | 1        |
| 21 | Ejemplo21 | 33     | 20.3    | 2024-01-14 | 0        |
| 22 | Ejemplo22 | 70     | 55.8    | 2024-02-29 | 1        |
| 23 | Ejemplo23 | 13     | 42.7    | 2024-03-18 | 0        |
| 24 | Ejemplo24 | 89     | 78.4    | 2024-04-25 | 1        |
| 25 | Ejemplo25 | 49     | 15.9    | 2024-05-12 | 0        |
| 26 | Ejemplo26 | 62     | 60.7    | 2024-06-20 | 1        |
| 27 | Ejemplo27 | 8      | 35.2    | 2024-07-07 | 0        |
| 28 | Ejemplo28 | 95     | 25.6    | 2024-08-23 | 1        |
| 29 | Ejemplo29 | 27     | 50.0    | 2024-09-10 | 0        |
| 30 | Ejemplo30 | 74     | 85.3    | 2024-10-05 | 1        |
| 31 | Ejemplo31 | 18     | 11.8    | 2024-11-12 | 0        |
| 32 | Ejemplo32 | 83     | 47.6    | 2024-12-28 | 1        |
| 33 | Ejemplo33 | 38     | 32.7    | 2025-01-15 | 0        |
| 34 | Ejemplo34 | 101    | 70.2    | 2025-02-01 | 1        |
| 35 | Ejemplo35 | 52     | 18.4    | 2025-03-20 | 0        |
| 36 | Ejemplo36 | 67     | 83.9    | 2025-04-06 | 1        |
| 37 | Ejemplo37 | 43     | 28.3    | 2025-05-13 | 0        |
| 38 | Ejemplo38 | 58     | 50.6    | 2025-06-30 | 1        |
| 39 | Ejemplo39 | 9      | 8.7     | 2025-07-17 | 0        |
| 40 | Ejemplo40 | 82     | 65.1    | 2025-08-23 | 1        |
| 41 | Ejemplo41 | 26     | 20.3    | 2025-09-09 | 0        |
| 42 | Ejemplo42 | 73     | 55.8    | 2025-10-26 | 1        |
| 43 | Ejemplo43 | 14     | 42.7    | 2025-11-13 | 0        |
| 44 | Ejemplo44 | 90     | 78.4    | 2025-12-30 | 1        |
| 45 | Ejemplo45 | 50     | 15.9    | 2026-01-16 | 0        |
| 46 | Ejemplo46 | 63     | 60.7    | 2026-02-03 | 1        |
| 47 | Ejemplo47 | 7      | 35.2    | 2026-03-22 | 0        |
| 48 | Ejemplo48 | 96     | 25.6    | 2026-04-08 | 1        |
| 49 | Ejemplo49 | 28     | 50.0    | 2026-05-25 | 0        |
| 50 | Ejemplo50 | 75     | 85.3    | 2026-06-11 | 1        |
+----+-----------+--------+---------+------------+----------+
```
2. La sentencia para ver las entradas del campo ```entero``` mayor que 50 sería:
```sql
select * from Ejemplo
where entero > 50;
```
* Obtendríamos esta salida:
```code
+----+-----------+--------+---------+------------+----------+
| id |   texto   | entero | decimal |   fecha    | booleano |
+----+-----------+--------+---------+------------+----------+
| 2  | Ejemplo2  | 63     | 45.7    | 2022-06-22 | 1        |
| 4  | Ejemplo4  | 78     | 75.2    | 2022-08-05 | 1        |
| 6  | Ejemplo6  | 55     | 60.3    | 2022-10-08 | 1        |
| 8  | Ejemplo8  | 87     | 22.6    | 2022-12-03 | 1        |
| 10 | Ejemplo10 | 68     | 90.4    | 2023-02-14 | 1        |
| 12 | Ejemplo12 | 72     | 48.6    | 2023-04-09 | 1        |
| 14 | Ejemplo14 | 93     | 70.2    | 2023-06-18 | 1        |
| 16 | Ejemplo16 | 81     | 82.9    | 2023-08-11 | 1        |
| 18 | Ejemplo18 | 60     | 50.6    | 2023-10-15 | 1        |
| 20 | Ejemplo20 | 76     | 65.1    | 2023-12-08 | 1        |
| 22 | Ejemplo22 | 70     | 55.8    | 2024-02-29 | 1        |
| 24 | Ejemplo24 | 89     | 78.4    | 2024-04-25 | 1        |
| 26 | Ejemplo26 | 62     | 60.7    | 2024-06-20 | 1        |
| 28 | Ejemplo28 | 95     | 25.6    | 2024-08-23 | 1        |
| 30 | Ejemplo30 | 74     | 85.3    | 2024-10-05 | 1        |
| 32 | Ejemplo32 | 83     | 47.6    | 2024-12-28 | 1        |
| 34 | Ejemplo34 | 101    | 70.2    | 2025-02-01 | 1        |
| 35 | Ejemplo35 | 52     | 18.4    | 2025-03-20 | 0        |
| 36 | Ejemplo36 | 67     | 83.9    | 2025-04-06 | 1        |
| 38 | Ejemplo38 | 58     | 50.6    | 2025-06-30 | 1        |
| 40 | Ejemplo40 | 82     | 65.1    | 2025-08-23 | 1        |
| 42 | Ejemplo42 | 73     | 55.8    | 2025-10-26 | 1        |
| 44 | Ejemplo44 | 90     | 78.4    | 2025-12-30 | 1        |
| 46 | Ejemplo46 | 63     | 60.7    | 2026-02-03 | 1        |
| 48 | Ejemplo48 | 96     | 25.6    | 2026-04-08 | 1        |
| 50 | Ejemplo50 | 75     | 85.3    | 2026-06-11 | 1        |
+----+-----------+--------+---------+------------+----------+
```
## Eliminando y modificando la clase
De donde he sacado la información para hacer estas sentencias SQL:
* [Apuntes eliminaciones](https://github.com/jpexposito/docencia/blob/master/Primero/BAE/UNIDAD-5/sqlite/05_delete.md)
* [Apuntes modificaciones](https://github.com/jpexposito/docencia/blob/master/Primero/BAE/UNIDAD-5/sqlite/06_update.md)

**Todas las sentencias están realizadas una trás otra sobre la misma tabla.**
### Eliminaciones y modificaciones tarea 1
1. La sentencia SQL que elimina las entradas donde el campo ```booleano``` es igual a ```True```.
```sql
delete from Ejemplo
where booleano = True;
```
* Obtendríamos la siguiente salida de la tabla Ejemplo tras esta sentencia SQL:
```code
+----+-----------+--------+---------+------------+----------+
| id |   texto   | entero | decimal |   fecha    | booleano |
+----+-----------+--------+---------+------------+----------+
| 1  | Ejemplo1  | 25     | 10.5    | 2022-05-15 | 0        |
| 3  | Ejemplo3  | 12     | 30.0    | 2022-07-10 | 0        |
| 5  | Ejemplo5  | 42     | 18.9    | 2022-09-12 | 0        |
| 7  | Ejemplo7  | 10     | 40.1    | 2022-11-17 | 0        |
| 9  | Ejemplo9  | 31     | 55.0    | 2023-01-20 | 0        |
| 11 | Ejemplo11 | 15     | 12.8    | 2023-03-22 | 0        |
| 13 | Ejemplo13 | 22     | 33.7    | 2023-05-01 | 0        |
| 15 | Ejemplo15 | 37     | 15.4    | 2023-07-05 | 0        |
| 17 | Ejemplo17 | 45     | 28.3    | 2023-09-27 | 0        |
| 19 | Ejemplo19 | 5      | 8.7     | 2023-11-22 | 0        |
| 21 | Ejemplo21 | 33     | 20.3    | 2024-01-14 | 0        |
| 23 | Ejemplo23 | 13     | 42.7    | 2024-03-18 | 0        |
| 25 | Ejemplo25 | 49     | 15.9    | 2024-05-12 | 0        |
| 27 | Ejemplo27 | 8      | 35.2    | 2024-07-07 | 0        |
| 29 | Ejemplo29 | 27     | 50.0    | 2024-09-10 | 0        |
| 31 | Ejemplo31 | 18     | 11.8    | 2024-11-12 | 0        |
| 33 | Ejemplo33 | 38     | 32.7    | 2025-01-15 | 0        |
| 35 | Ejemplo35 | 52     | 18.4    | 2025-03-20 | 0        |
| 37 | Ejemplo37 | 43     | 28.3    | 2025-05-13 | 0        |
| 39 | Ejemplo39 | 9      | 8.7     | 2025-07-17 | 0        |
| 41 | Ejemplo41 | 26     | 20.3    | 2025-09-09 | 0        |
| 43 | Ejemplo43 | 14     | 42.7    | 2025-11-13 | 0        |
| 45 | Ejemplo45 | 50     | 15.9    | 2026-01-16 | 0        |
| 47 | Ejemplo47 | 7      | 35.2    | 2026-03-22 | 0        |
| 49 | Ejemplo49 | 28     | 50.0    | 2026-05-25 | 0        |
+----+-----------+--------+---------+------------+----------+
```

2. La sentencia SQL que modifica el campo ```texto``` de las entradas donde el campo ```entero``` es menor a 30 y establece el texto como "Modificado" sería:
```sql
update Ejemplo set texto = 'Modificado'
where entero < 30;
```
* La salida obtenida sería la siguiente:
```code
+----+------------+--------+---------+------------+----------+
| id |   texto    | entero | decimal |   fecha    | booleano |
+----+------------+--------+---------+------------+----------+
| 1  | Modificado | 25     | 10.5    | 2022-05-15 | 0        |
| 3  | Modificado | 12     | 30.0    | 2022-07-10 | 0        |
| 5  | Ejemplo5   | 42     | 18.9    | 2022-09-12 | 0        |
| 7  | Modificado | 10     | 40.1    | 2022-11-17 | 0        |
| 9  | Ejemplo9   | 31     | 55.0    | 2023-01-20 | 0        |
| 11 | Modificado | 15     | 12.8    | 2023-03-22 | 0        |
| 13 | Modificado | 22     | 33.7    | 2023-05-01 | 0        |
| 15 | Ejemplo15  | 37     | 15.4    | 2023-07-05 | 0        |
| 17 | Ejemplo17  | 45     | 28.3    | 2023-09-27 | 0        |
| 19 | Modificado | 5      | 8.7     | 2023-11-22 | 0        |
| 21 | Ejemplo21  | 33     | 20.3    | 2024-01-14 | 0        |
| 23 | Modificado | 13     | 42.7    | 2024-03-18 | 0        |
| 25 | Ejemplo25  | 49     | 15.9    | 2024-05-12 | 0        |
| 27 | Modificado | 8      | 35.2    | 2024-07-07 | 0        |
| 29 | Modificado | 27     | 50.0    | 2024-09-10 | 0        |
| 31 | Modificado | 18     | 11.8    | 2024-11-12 | 0        |
| 33 | Ejemplo33  | 38     | 32.7    | 2025-01-15 | 0        |
| 35 | Ejemplo35  | 52     | 18.4    | 2025-03-20 | 0        |
| 37 | Ejemplo37  | 43     | 28.3    | 2025-05-13 | 0        |
| 39 | Modificado | 9      | 8.7     | 2025-07-17 | 0        |
| 41 | Modificado | 26     | 20.3    | 2025-09-09 | 0        |
| 43 | Modificado | 14     | 42.7    | 2025-11-13 | 0        |
| 45 | Ejemplo45  | 50     | 15.9    | 2026-01-16 | 0        |
| 47 | Modificado | 7      | 35.2    | 2026-03-22 | 0        |
| 49 | Modificado | 28     | 50.0    | 2026-05-25 | 0        |
+----+------------+--------+---------+------------+----------+
```

3. La sentencia SQL elimina las entradas donde el campo ```entero``` es igual a 50 sería:
```sql
delete from Ejemplo
where entero = 50;
```
* La sentencia nos devolvería la siguiente tabla:
```code
+----+------------+--------+---------+------------+----------+
| id |   texto    | entero | decimal |   fecha    | booleano |
+----+------------+--------+---------+------------+----------+
| 1  | Modificado | 25     | 10.5    | 2022-05-15 | 0        |
| 3  | Modificado | 12     | 30.0    | 2022-07-10 | 0        |
| 5  | Ejemplo5   | 42     | 18.9    | 2022-09-12 | 0        |
| 7  | Modificado | 10     | 40.1    | 2022-11-17 | 0        |
| 9  | Ejemplo9   | 31     | 55.0    | 2023-01-20 | 0        |
| 11 | Modificado | 15     | 12.8    | 2023-03-22 | 0        |
| 13 | Modificado | 22     | 33.7    | 2023-05-01 | 0        |
| 15 | Ejemplo15  | 37     | 15.4    | 2023-07-05 | 0        |
| 17 | Ejemplo17  | 45     | 28.3    | 2023-09-27 | 0        |
| 19 | Modificado | 5      | 8.7     | 2023-11-22 | 0        |
| 21 | Ejemplo21  | 33     | 20.3    | 2024-01-14 | 0        |
| 23 | Modificado | 13     | 42.7    | 2024-03-18 | 0        |
| 25 | Ejemplo25  | 49     | 15.9    | 2024-05-12 | 0        |
| 27 | Modificado | 8      | 35.2    | 2024-07-07 | 0        |
| 29 | Modificado | 27     | 50.0    | 2024-09-10 | 0        |
| 31 | Modificado | 18     | 11.8    | 2024-11-12 | 0        |
| 33 | Ejemplo33  | 38     | 32.7    | 2025-01-15 | 0        |
| 35 | Ejemplo35  | 52     | 18.4    | 2025-03-20 | 0        |
| 37 | Ejemplo37  | 43     | 28.3    | 2025-05-13 | 0        |
| 39 | Modificado | 9      | 8.7     | 2025-07-17 | 0        |
| 41 | Modificado | 26     | 20.3    | 2025-09-09 | 0        |
| 43 | Modificado | 14     | 42.7    | 2025-11-13 | 0        |
| 47 | Modificado | 7      | 35.2    | 2026-03-22 | 0        |
| 49 | Modificado | 28     | 50.0    | 2026-05-25 | 0        |
+----+------------+--------+---------+------------+----------+
```

4. La sentencia SQL que incrementa en 10 el valor del campo ```entero``` para las entradas donde el campo ```booleano``` es igual ```False``` sería:
```sql
update Ejemplo set entero = entero + 10
where booleano = False;
```
* Esta sería la siguiente salida obtenida:
```code
+----+------------+--------+---------+------------+----------+
| id |   texto    | entero | decimal |   fecha    | booleano |
+----+------------+--------+---------+------------+----------+
| 1  | Modificado | 35     | 10.5    | 2022-05-15 | 0        |
| 3  | Modificado | 22     | 30.0    | 2022-07-10 | 0        |
| 5  | Ejemplo5   | 52     | 18.9    | 2022-09-12 | 0        |
| 7  | Modificado | 20     | 40.1    | 2022-11-17 | 0        |
| 9  | Ejemplo9   | 41     | 55.0    | 2023-01-20 | 0        |
| 11 | Modificado | 25     | 12.8    | 2023-03-22 | 0        |
| 13 | Modificado | 32     | 33.7    | 2023-05-01 | 0        |
| 15 | Ejemplo15  | 47     | 15.4    | 2023-07-05 | 0        |
| 17 | Ejemplo17  | 55     | 28.3    | 2023-09-27 | 0        |
| 19 | Modificado | 15     | 8.7     | 2023-11-22 | 0        |
| 21 | Ejemplo21  | 43     | 20.3    | 2024-01-14 | 0        |
| 23 | Modificado | 23     | 42.7    | 2024-03-18 | 0        |
| 25 | Ejemplo25  | 59     | 15.9    | 2024-05-12 | 0        |
| 27 | Modificado | 18     | 35.2    | 2024-07-07 | 0        |
| 29 | Modificado | 37     | 50.0    | 2024-09-10 | 0        |
| 31 | Modificado | 28     | 11.8    | 2024-11-12 | 0        |
| 33 | Ejemplo33  | 48     | 32.7    | 2025-01-15 | 0        |
| 35 | Ejemplo35  | 62     | 18.4    | 2025-03-20 | 0        |
| 37 | Ejemplo37  | 53     | 28.3    | 2025-05-13 | 0        |
| 39 | Modificado | 19     | 8.7     | 2025-07-17 | 0        |
| 41 | Modificado | 36     | 20.3    | 2025-09-09 | 0        |
| 43 | Modificado | 24     | 42.7    | 2025-11-13 | 0        |
| 47 | Modificado | 17     | 35.2    | 2026-03-22 | 0        |
| 49 | Modificado | 38     | 50.0    | 2026-05-25 | 0        |
+----+------------+--------+---------+------------+----------+
```

5. La sentencia SQL que elimina las entradas donde el campo ```decimal``` es menor a 50 sería:
```sql
delete from Ejemplo
where decimal < 50;
```
* La salida que obtendríamos sería la siguiente:
```code
+----+------------+--------+---------+------------+----------+
| id |   texto    | entero | decimal |   fecha    | booleano |
+----+------------+--------+---------+------------+----------+
| 9  | Ejemplo9   | 41     | 55.0    | 2023-01-20 | 0        |
| 29 | Modificado | 37     | 50.0    | 2024-09-10 | 0        |
| 49 | Modificado | 38     | 50.0    | 2026-05-25 | 0        |
+----+------------+--------+---------+------------+----------+
```

6. La sentencia SQL que actualiza el campo ```fecha``` de todas las entradas a la fecha actual sería:
```sql
update Ejemplo set fecha = '2023-12-14';
```
* La última salida que obtendríamos después de lo que hemos hecho sobre la tabla sería esta:
```code
+----+------------+--------+---------+------------+----------+
| id |   texto    | entero | decimal |   fecha    | booleano |
+----+------------+--------+---------+------------+----------+
| 9  | Ejemplo9   | 41     | 55.0    | 2023-12-14 | 0        |
| 29 | Modificado | 37     | 50.0    | 2023-12-14 | 0        |
| 49 | Modificado | 38     | 50.0    | 2023-12-14 | 0        |
+----+------------+--------+---------+------------+----------+
```

</div>
