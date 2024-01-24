<div align="justify">

# <div align="center">Apuntes de Bases de datos SQLite</div>

## Como crear una tabla
```sql
create table nombre_tabla (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    entrada_1 TEXT NOT NULL,
    entrada_2 REAL NULL,
    entrada_3 BLOB NOT NULL );
```
### Tipos de datos
Una tabla puede tener en SQLite hasta 4 tipos de datos diferentes:
1. INTEGER (Entero): Se refiere a números enteros, solos y por supuesto sin decimales.
2. TEXT (Texto): Este dato es un string, en él podemos meter todo tipo de caracteres, que serán tratados como cadena de texto, por ejemplo '11111111F', 'Caso34_B', etc.
3. REAL (Reales): Los números reales, es decir, números con decimales en punto flotante. Siempre hay que tener en cuenta que los decimales se deben indicar con un punto(.) no con una coma.
4. BLOB (Formato Binario): Esto hará referencias a archivos que se guardan en formato binario tales como imágenes, sonido, etc.
5. NUMERIC (Decimal): Es un número decimal.

### Otros tipos
1. DATE (Fecha): Una fecha separada con guiones generalmente
2. TIME (Hora): La hora, separada por ':' y en formato 24h por lo general.
3. DATETIME (Fecha y Hora): Las dos anteriores juntas

### La *Primary Key*
Tal como se presupone es la clave de la tabla y debe ser única. Podemos indicarle a la base de datos que queremos que se autoincremente por lo que no tendríamos que ocuparnos de insertarla nosotros directamente, en cambio si quisieramos hacerla nosotros pues eliminaríamos el `AUTOINCREMENT` de la sentencia SQL.

### El Null
En una base de datos podemos indicar que deseamos que una entrada de la misma pueda quedar vacía, para ello usamos el `NULL`. Por supuesto, si usamos el `NOT NULL` estaremos indicando explicitamente, lo contrario, aunque por lo general la base de datos ya lo hará así por defecto, aunque no se lo señalemos. Está claro, que una _Primary Key_ no puede ser nula.

### Notas adicionales
1. Los parentesis son necesarios para indicar las entradas que tendrá la tabla dentro de ellos.
2. Las comas separarán las entradas de la tabla, excepto de la última que cerramos con parentesis y ;
3. TODAS LAS SENTENCIAS SQL ACABAN EN PUNTO Y COMA ';'.

## Como insertar datos
```sql
insert into nombre_tabla (entrada_1, entrada_2, entrada_3)
values ('Texto', 40.54, 'archivo_imagen');
```
### La *Primary Key*
Como se puede ver estamos insertando en la tabla en las tres entradas, pero no en la id. Esto se debe a que hemos seleccionado que la id se autoincremente. Sin embargo, si la id no se autoincrementase, deberíamos indicarla nosotros mismos también en la inserción de datos.

### Las comillas
Es importante señalar que si tenemos un tipo de dato entero o real, no hace falta quitar las comillas, la base de datos se encarga de transformarlo al tipo correspondiente. Pero si que sería aconsejable quitarlas, ya que no sirven de nada y además podremos diferenciar mejor que tipo de dato es cada uno.

### Notas adicionales
1. Las inserciones, a no ser que ya estén hechas, mejor de una en una, así es más dificil equivocarse.
2. Los valores hay que indicarlos entre paréntesis y separados por comas. Así como las entradas.
3. Podemos obviar alguna de las entradas siempre y cuando sea `NULL`

## Como modificar datos nuestra base de datos
```sql
update nombre_tabla set entrada_1='Matracazo', entrada_3='archivo_audio'
where entrada_2=40.54;
```
### La sentencia *Update*
Esta sentencia la usamos para modificar las entradas de una tabla con otros datos (deben ser del mismo tipo), en el ejemplo estoy modificando la entrada 1 y la 3 y valiéndome de la sentencia _where_ (donde), le digo que solo lo haga en la entrada 2 que vale 40.54. Si no usáramos este _where_ se modificarían __TODAS__ las entradas de la tabla.

### Notas adicionales
1. Estos updates se pueden complicar todo lo que queramos, por lo que es importante hacer primero un select con el _where_ del _update_ para ver si lo que estamos modificando es concretamente eso.

## Como borrar en nuestra base de dato
```sql
delete from nombre_tabla where entrada_1='Matracazo' and entrada_2>40;
```
### La sentencia *Delete*
Es bastante sencilla de usar solo tenemos que señalarle la tabla y el punto concreto que deseamos borrar. Siempre es importante usar el _where_, ya que sin el destruiremos la tabla entera.

### Notas adicionales
1. Al igual que el update, lo mejor es hacer una doble comprobación con el select antes de borrar nada.

## Como mostrar datos de la tabla
Para este apartado revisa las tareas de consultas, tienen de casi todas las clases y además se puede repasar las otras sentencias:
[Tarea 1](Tarea-1/README.md)
[Tarea 2](Tarea-2/README.md)
[Tarea 3](Tarea-3/README.md)
[Tarea 4](Tarea-4/README.md)

</div>