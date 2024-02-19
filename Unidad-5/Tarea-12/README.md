<div align="justify">

# <div align="center">Consultas 12 de SQL</div>

## Crear las tablas
```sql
CREATE TABLE cliente (
    id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
    nombre text NOT NULL,
    apellido1 text NOT NULL,
    apellido2 text NULL,
    ciudad text NOT NULL,
    categoría integer NULL
);
```
```sql
CREATE TABLE comercial (
    id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
    nombre text NOT NULL,
    apellido1 text NOT NULL,
    apellido2 text NULL,
    categoria real NOT NULL
);
```
```sql
CREATE TABLE pedido (
    id integer NOT NULL PRIMARY KEY AUTOINCREMENT
    total real NOT NULL,
    fecha date NOT NULL
    id_cliente integer references cliente(id)
    id_comercial integer references comercial(id)
)
```

</div>