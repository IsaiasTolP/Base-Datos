/**
Actualizar el nivel de Bulbasaur.
**/
update Pokemon set nivel="30" where nombre="Bulbasaur";
/**
Cambiar el tipo de Pikachu a "Eléctrico/Rojo"
**/
update tipo as t set nombre="Electrico/Rojo" from Pokemon as p where p.id_tipo=t.id and p.nombre=Pikachu;
/**
Incrementar el nivel de todos los Pokémon de tipo Agua.
**/
update Pokemon as p set nivel = nivel + 1 from tipo as t where t.nombre="Agua" and p.id_tipo=t.id;
/**
Eliminar a Jynx de la lista de Pokémon.
**/
delete from Pokemon where nombre="Jynx"
/**
Eliminar el tipo "Hielo" de la lista de tipos de Pokémon.
**/
delete from tipo where nombre="Hielo";
/**
Obtener todos los Pokémon.
**/
select * from Pokemon;
/**
Obtener el nombre y nivel de los Pokémon de tipo Fuego.
**/
select p.nombre, p.nivel from Pokemon as p, tipo as t where t.nombre="Fuego" and t.id=p.id_tipo;
/**
Obtener el nombre de los Pokémon que tienen un nivel superior a 30.
**/
select nombre from Pokemon where nivel>30;
/**
Obtener el nombre de los Pokémon ordenados por nivel de forma descendente.
**/
select nombre from Pokemon order by nivel DESC;
/**
Obtener la cantidad de Pokémon por tipo.
**/
select t.nombre, count(id_tipo) as "Total tipos" from Pokemon as p, tipo as t group by p.id_tipo where t.id=p.id_tipo;
/**
Obtener la información completa de un Pokémon específico. Selecciona el que desees.
**/
select * from Pokemon where id="3";
/**
Obtener el promedio de niveles de todos los Pokémon.
**/
select AVG(nivel) as media_niveles from Pokemon;
/**
Obtener el nombre del Pokémon de mayor nivel.
**/
select nombre from Pokemon order by DESC LIMIT 1;
/**
Actualizar el nombre de Bulbasaur a "Bulbasaur Nv. 15":
**/
update Pokemon set nombre="Bulbasaur Nv.15" where nombre="Bulbasaur";
/**
Obtener los Pokémon cuyo nivel es igual a 50.
**/
select * from Pokemon where nivel="50";
/**
Eliminar todos los Pokémon de nivel 40.
**/
delete from Pokemon where nivel="40"
/**
Obtener el tipo y nivel de Pikachu.
**/
select t.nombre, p.nivel from Pokemon as p, tipo as t where p.nombre="Pikachu" and p.id_tipo=t.id;
/**
Obtener los Pokémon de tipo Planta con nivel superior a 20:
**/
select * from Pokemon as p, tipo as t where p.nivel>20 and t.tipo="Planta" and p.id_tipo=t.id;
/**
Actualizar el tipo de Pikachu a "Eléctrico/Azul":
**/
update tipo as t set nombre="Electrico/Azul" from Pokemon as p where p.id_tipo=t.id and p.nombre=Pikachu;
/**
Eliminar todos los Pokémon de tipo Planta.
**/
delete p.* from Pokemon as p, tipo as t where t.nombre="Planta" and p.id_tipo=t.id;
/**
Obtener los Pokémon con nombre y tipo ordenados alfabéticamente.
**/
select p.nombre, t.nombre from Pokemon as p, tipo as t order by p.nombre;
/**
Obtén todos los Pokémon cuyos nombres contienen las letras 'sa'.
**/
select * from Pokemon where nombre LIKE "%sa%";
/**
Encuentra todos los Pokémon cuyo nivel es 40, 50 o 60.
**/
select * from Pokemon where nivel in (40, 50, 60);
/**
Obtén todos los Pokémon de tipo Fuego cuyos nombres comienzan con la letra 'C'.
**/
select * from Pokemon as p, tipo as t where p.nombre LIKE "C%" and t.nombre="Fuego" and p.id_tipo=t.id;
/**
Encuentra los nombres y tipos de los Pokémon cuyo nivel es mayor que el promedio de todos los Pokémon en la base de datos.
**/
select p.nombre, t.nombre from Pokemon as p, tipo as t where p.nivel>(select AVG(nivel) from Pokemon);
