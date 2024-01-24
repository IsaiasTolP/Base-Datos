/**

**/
update Pokemon set nivel="30" where nombre="Bulbasaur";
/**

**/
update tipo as t set nombre="Electrico/Rojo" from Pokemon as p where p.id_tipo=t.id and p.nombre=Pikachu;
/**

**/
update Pokemon as p set nivel = nivel + 1 from tipo as t where t.nombre="Agua" and p.id_tipo=t.id;
/**

**/
delete from Pokemon where nombre="Jynx"
/**

**/
delete from tipo where nombre="Hielo";
/**

**/
select * from Pokemon;
/**

**/
select p.nombre, p.nivel from Pokemon as p, tipo as t where t.nombre="Fuego" and t.id=p.id_tipo;
/**

**/
select nombre from Pokemon where nivel>30;
/**

**/
select nombre from Pokemon order by nivel DESC;
/**

**/
select t.nombre, count(id_tipo) as "Total tipos" from Pokemon as p, tipo as t group by p.id_tipo where t.id=p.id_tipo;
/**

**/
select * from Pokemon where id="3";

select AVG(nivel) as media_niveles from Pokemon;

select nombre from Pokemon order by DESC LIMIT 1;

update Pokemon set nombre="Bulbasaur Nv.15" where nombre="Bulbasaur";

select * from Pokemon where nivel="50";

delete from Pokemon where nivel="40"

select t.nombre, p.nivel from Pokemon as p, tipo as t where p.nombre="Pikachu" and p.id_tipo=t.id;

select * from Pokemon as p, tipo as t where p.nivel>20 and t.tipo="Planta" and p.id_tipo=t.id;

update tipo as t set nombre="Electrico/Azul" from Pokemon as p where p.id_tipo=t.id and p.nombre=Pikachu;

delete p.* from Pokemon as p, tipo as t where t.nombre="Planta" and p.id_tipo=t.id;

select p.nombre, t.nombre from Pokemon as p, tipo as t order by p.nombre;

select * from Pokemon where nivel in (40, 50, 60);

select * from Pokemon as p, tipo as t where p.nombre LIKE "C%" and t.nombre="Fuego" and p.id_tipo=t.id;

select p.nombre, t.nombre from Pokemon as p, tipo as t where p.nivel>(select AVG(nivel) from Pokemon);