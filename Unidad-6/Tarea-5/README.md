<div align="justify">

# <div align="center">Tarea 5 MySQL</div>
![Logo](../Tarea-3/images/Mysql.png)

## Eliminar la tabla alumno "si existe"
```sql
drop table IF EXISTS cliente;
-- Query OK, 0 rows affected, 1 warning (0,01 sec)
```

## Crear la tabla definiendo una clave primaria compuesta(año de inscripción y número de inscripción)
```sql
create table cliente (
    documento CHAR(8) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    domicilio VARCHAR(30),
    ciudad VARCHAR(20),
    provincia VARCHAR(20),
    telefono VARCHAR(11)
);
```

## Elimine la tabla "cliente" si existe
```sql
drop table if exists cliente;
/**
Query OK, 0 rows affected, 1 warning (0,01 sec)
**/
```

## Cree la tabla sin clave primaria e incluye a posteriori esta
```sql
ALTER TABLE cliente MODIFY documento CHAR(8) NOT NULL, ADD PRIMARY KEY(documento);
/**
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| cliente |          0 | PRIMARY  |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
**/
```

## Un índice único por el campo "documento" y un índice común por ciudad y provincia
```sql
create UNIQUE index idx_doc ON cliente (documento);
-- Este es un indice unico que obligará a que el documento sea siempre diferente.
create index idx_location ON cliente (ciudad, provincia);
-- Este es un indice comun que nos permitirá acelerar las consultas en ambos campos, pero sin añadir restricciones a la tabla.
```

## Vea los índices de la tabla
```sql
show index from cliente;
/**
+---------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name     | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| cliente |          0 | PRIMARY      |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| cliente |          0 | idx_doc      |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| cliente |          1 | idx_location |            1 | ciudad      | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| cliente |          1 | idx_location |            2 | provincia   | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+---------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
**/
```

## Agregue un índice único en el campo telefono
```sql
create UNIQUE index idx_tel ON cliente (telefono);
/**
+---------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name     | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| cliente |          0 | PRIMARY      |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| cliente |          0 | idx_doc      |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| cliente |          0 | idx_tel      |            1 | telefono    | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| cliente |          1 | idx_location |            1 | ciudad      | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| cliente |          1 | idx_location |            2 | provincia   | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+---------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
**/
```

## Elimine los indices

```sql
ALTER TABLE cliente DROP INDEX idx_location, DROP INDEX idx_doc, DROP INDEX idx_tel;
/**
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| cliente |          0 | PRIMARY  |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
**/
```

</div>