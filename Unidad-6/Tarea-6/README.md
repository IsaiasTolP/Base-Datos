<div align="justify">

# <div align="center">Tarea 6 de MySQL</div>
![logo](../Tarea-3/images/Mysql.png)

## Crea una base de datos llamada Base_indices
```sql
create database IF NOT EXISTS Base_indices;
-- Query OK, 1 row affected (0,01 sec)

use Base_indices;
```

## En la BD crea una tabla de nombre MOVIMIENTO con la siguiente estructura
```sql
create table MOVIMIENTO(
    Identificador INT AUTO_INCREMENT,
    Articulo VARCHAR(50) NOT NULL,
    Fecha DATE NOT NULL,
    Cantidad INT NOT NULL,
    PRIMARY KEY (Identificador)
);
```

## Aplica la sentencia adecuada para visualizar los índices que hay en la tabla.
```sql
show index from MOVIMIENTO;
/**
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table      | Non_unique | Key_name | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| MOVIMIENTO |          0 | PRIMARY  |            1 | Identificador | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
**/
```
Esta salida tiene sentido, ya que el unico indice que se ha creado en la tabla es la PRIMARY KEY.

## Ejecuta la siguiente sentencia sql para generar datos de prueba
```sql
CREATE TABLE NumerosUnicos (
Numero INT AUTO_INCREMENT PRIMARY KEY
);

INSERT INTO NumerosUnicos (Numero)
SELECT NULL FROM INFORMATION_SCHEMA.COLUMNS LIMIT 5000;

INSERT INTO MOVIMIENTO (Identificador, Articulo, Fecha, Cantidad)
SELECT 
    n.Numero,
    CONCAT('Producto', n.Numero),
    DATE_ADD('2012-01-01', INTERVAL FLOOR(RAND() * 120) DAY),
    FLOOR(RAND() * 1000000) + 1
FROM 
    NumerosUnicos n;

    DROP TABLE NumerosUnicos;
/**
Query OK, 3608 rows affected (0,28 sec)
Records: 3608  Duplicates: 0  Warnings: 0
Entre otros mensajes
**/
select COUNT(*) from MOVIMIENTO;
/**
+----------+
| COUNT(*) |
+----------+
|     3608 |
+----------+
**/
```

## Crea con la sentencia CREATE TABLE…SELECT… un duplicado de la tabla MOVIMIENTO a la que llamaremos MOVIMIENTO_BIS
```sql
create table MOVIMIENTO_BIS select * from MOVIMIENTO;
/**
Query OK, 3608 rows affected (0,20 sec)
Records: 3608  Duplicates: 0  Warnings: 0

Es una copia casi perfecta del la tabla original
**/
```

## Con la cláusula DESCRIBE observa cuál es la situación de la tabla clonada, ¿Qué le pasa al índice y a la propiedad AUTO_INCREMENT?
```sql
describe MOVIMIENTO_BIS;
/**
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Identificador | int         | NO   |     | 0       |       |
| Articulo      | varchar(50) | NO   |     | NULL    |       |
| Fecha         | date        | NO   |     | NULL    |       |
| Cantidad      | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+

Si nos fijamos no hay ni clave primaria ni autoincrement, esto se debe a que la copia no es perfecta,
ya que obvia los indices y extras de las tablas originales.
**/
```

## Utilizando EXPLAIN observa el plan de ejecución de la consulta que devuelve toda la información de los movimientos con identificador=3. 
Tanto en la tabla MOVIMIENTOS como en la tabla MOVIMIENTOS_bis. Escribe tus conclusiones al respecto.
```sql
EXPLAIN select * from MOVIMIENTO where Identificador=3;
/**
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
| id | select_type | table      | partitions | type  | possible_keys | key     | key_len | ref   | rows | filtered | Extra |
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | const | PRIMARY       | PRIMARY | 4       | const |    1 |   100.00 | NULL  |
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
**/

EXPLAIN select * from MOVIMIENTO_BIS where Identificador=3;
/**
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table          | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 3608 |    10.00 | Using where |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
**/

/**
Si nos fijamos la tabla que tiene indice de PRIMARY KEY, hace una consulta muy eficiente comprobando solo la fila correcta, que es la que
estábamos buscando, sin embargo en la que no tiene indices, podemos ver como comprueba absolutamente todas las filas para luego darnos la que
estamos buscando.
**/
```

## Supongamos que las consultas de rango que se van a hacer en nuestra tabla son frecuentes y además no por el identificador, sino por la fecha. Este es motivo suficiente para que sea la fecha un índice de tabla y así mejorar el tiempo de respuesta de nuestras consultas. En la tabla MOVIMIENTO_BIS creamos un índice para la fecha (IX_FECHA_BIS) y otro índice para el identificador (IX_IDENTIFICADOR).
```sql
create index IX_FECHA_BIS ON MOVIMIENTO_BIS(Fecha);
/**
Query OK, 0 rows affected (0,10 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

create index IX_IDENTIFICADOR ON MOVIMIENTO_BIS(Identificador);
/**
Query OK, 0 rows affected (0,17 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/
```

## Analiza el plan de ejecución de las siguientes consultas y observa la diferencia: Consulta1
```sql
EXPLAIN select * from MOVIMIENTO where identificador=3;
/**
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
| id | select_type | table      | partitions | type  | possible_keys | key     | key_len | ref   | rows | filtered | Extra |
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | const | PRIMARY       | PRIMARY | 4       | const |    1 |   100.00 | NULL  |
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
**/

EXPLAIN select identificador from MOVIMIENTO_BIS where identificador=3;
/**
+----+-------------+----------------+------------+------+------------------+------------------+---------+-------+------+----------+-------------+
| id | select_type | table          | partitions | type | possible_keys    | key              | key_len | ref   | rows | filtered | Extra       |
+----+-------------+----------------+------------+------+------------------+------------------+---------+-------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ref  | IX_IDENTIFICADOR | IX_IDENTIFICADOR | 4       | const |    1 |   100.00 | Using index |
+----+-------------+----------------+------------+------+------------------+------------------+---------+-------+------+----------+-------------+
**/

/**
En el primero lo hace a traves de la PRIMARY KEY y lo hace buscando así porque es lo que se le ha indicado hace, buscar a través de la clave
primaria. Sin embargo en el segundo, lo hace a través del indice comun porque es lo que hemos creado en esa columna de la tabla y le estamos
pidiendo que busque a través de ese dato mediante el where.
**/
```

## Analiza el plan de ejecución de las siguientes consultas y observa la diferencia
```sql
EXPLAIN SELECT fecha FROM MOVIMIENTO WHERE fecha BETWEEN '2012-01-01' and '2012-03-01';
/**
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table      | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 3608 |    51.19 | Using where |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
**/

EXPLAIN SELECT * FROM MOVIMIENTO_BIS WHERE fecha BETWEEN '2012-01-01' and '2012-03-01';
/**
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table          | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ALL  | IX_FECHA_BIS  | NULL | NULL    | NULL | 3608 |    51.19 | Using where |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
**/

/**
En ambas consultas se consulta el mismo numero de filas, aunque la segunda cuenta con un índice, pero como las fechas no son consultadas solo
ellas sino que se esta usando el *, se acaban consultando todas las filas
**/
```

## Vamos a crear un índice por fecha (IX_FECHA) en la tabla MOVIMIENTO, puesto que no lo tenía, en este caso la tabla ya tenía un indice, la clave primaria.
```sql
create index IX_FECHA ON MOVIMIENTO(Fecha);
/**
Query OK, 0 rows affected (0,05 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/
```

## Visualiza los indices de las tablas MOVIMIENTO y MOVIMIENTO_BIS
```sql
show index from MOVIMIENTO;
/**
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table      | Non_unique | Key_name | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| MOVIMIENTO |          0 | PRIMARY  |            1 | Identificador | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| MOVIMIENTO |          1 | IX_FECHA |            1 | Fecha         | A         |         120 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
**/

show index from MOVIMIENTO_BIS;
/**
+----------------+------------+------------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table          | Non_unique | Key_name         | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------------+------------+------------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| MOVIMIENTO_BIS |          1 | IX_FECHA_BIS     |            1 | Fecha         | A         |         120 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| MOVIMIENTO_BIS |          1 | IX_IDENTIFICADOR |            1 | Identificador | A         |        3608 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+----------------+------------+------------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
**/
```

## Analiza el plan de ejecución de las siguientes consultas y observa la diferencia
### Consulta 1
```sql
EXPLAIN SELECT fecha FROM MOVIMIENTO WHERE fecha BETWEEN '2012-01-01' AND '2012-03-01';
/**
+----+-------------+------------+------------+-------+---------------+----------+---------+------+------+----------+--------------------------+
| id | select_type | table      | partitions | type  | possible_keys | key      | key_len | ref  | rows | filtered | Extra                    |
+----+-------------+------------+------------+-------+---------------+----------+---------+------+------+----------+--------------------------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | range | IX_FECHA      | IX_FECHA | 3       | NULL | 1847 |   100.00 | Using where; Using index |
+----+-------------+------------+------------+-------+---------------+----------+---------+------+------+----------+--------------------------+
**/
/**
Aqui al buscar solo por fecha y tener el indice correspondiente a esa columna, la consulta solo necesita de buscar las fechas que coinciden, reduciendo a la mitad las filas consultadas.
**/
```

### Consulta 2
```sql
EXPLAIN SELECT * FROM MOVIMIENTO WHERE fecha BETWEEN '2012-01-01' AND '2012-03-01';
/**
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table      | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | ALL  | IX_FECHA      | NULL | NULL    | NULL | 3608 |    51.19 | Using where |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
**/
/**
Se consultan todas las filas, ya que no solo se pide la columna de la fecha sino todas las demas y eso afecta al indice a la hora de trabajar
en la consulta.
**/
```

### Consulta 3
```sql
EXPLAIN SELECT fecha FROM MOVIMIENTO_BIS WHERE fecha BETWEEN '2012-01-01' AND '2012-03-01';
/**
+----+-------------+----------------+------------+-------+---------------+--------------+---------+------+------+----------+--------------------------+
| id | select_type | table          | partitions | type  | possible_keys | key          | key_len | ref  | rows | filtered | Extra                    |
+----+-------------+----------------+------------+-------+---------------+--------------+---------+------+------+----------+--------------------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | range | IX_FECHA_BIS  | IX_FECHA_BIS | 3       | NULL | 1847 |   100.00 | Using where; Using index |
+----+-------------+----------------+------------+-------+---------------+--------------+---------+------+------+----------+--------------------------+
**/
/**
Como solo estamos pidiendo la columna de las fechas y estas tienen un indice, la velocidad de la consulta ha aumentado, consultando solo la mitad de las filas, teniendo un 100% de precisión en la consulta.
**/
```

### Consulta 4
```sql
EXPLAIN SELECT * FROM MOVIMIENTO_BIS WHERE fecha BETWEEN '2012-01-01' AND '2012-03-01';
/**
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table          | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ALL  | IX_FECHA_BIS  | NULL | NULL    | NULL | 3608 |    51.19 | Using where |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
**/
/**
Al igual que en otras consultas vistas anteriormente al tener un *, estamos pidiendo todas las columnas por lo que el índice de la fecha
no puede trabajar de forma correcta y la consulta no resulta más eficiente.
**/
```


</div>