<div align="justify">

# <div align="center">Tarea que antes era examen</div>
```sql
update Pokemon set nivel="30" where nombre="Bulbasaur"
```

```sql
update tipo as t set nombre="Electrico/Rojo" from Pokemon as p where p.id_tipo=t.id and t.nombre="Agua";
```

```sql
update Pokemon as p set nivel = nivel + 1 from tipo as t where t.nombre="Agua" and p.id_tipo=t.id;  
```
```sql
delete from Pokemon where nombre="Jynx"
```

```sql
delete from tipo where nombre="Hielo";
```

```sql
select * from Pokemon;
```

```sql
select p.nombre, p.nivel from Pokemon as p, tipo as t where t.nombre="Fuego" and t.id=p.id_tipo;
```

```sql
select nombre from Pokemon where nivel>30;
```

```sql
select nombre from Pokemon order by nivel DESC;
```

```sql
select t.nombre, count(id_tipo) as "Total tipos" from Pokemon as p, tipo as t group by p.id_tipo where t.id=p.id_tipo;
```

</div>
