<div align="justify">

# <div align="center">Consultas en SQLite</div>

## Crear la base de datos
Tenemos el fichero [empleados-dump.sql](empleados-dump.sql), con el contenido de la base de datos. Entonces lo que hay que hacer es abrir SQLite con ```sqlite tarea3.db``` y una vez dentro escribimos: 
```sql
.read empleados-dump.sql
```
Esto volcará los datos del fichero sql a la base de datos.

## Haciendo consultas

1. Todos los nombres de los empleados en mayúsculas
```sql
select UPPER(nombre) AS nombre from empleados;
┌───────────┐
│  nombre   │
├───────────┤
│ JUAN      │
│ MARíA     │
│ CARLOS    │
│ ANA       │
│ PEDRO     │
│ LAURA     │
│ JAVIER    │
│ CARMEN    │
│ MIGUEL    │
│ ELENA     │
│ DIEGO     │
│ SOFíA     │
│ ANDRéS    │
│ ISABEL    │
│ RAúL      │
│ PATRICIA  │
│ ALEJANDRO │
│ NATALIA   │
│ ROBERTO   │
│ BEATRIZ   │
└───────────┘
```
Hay que fijarse en con el UPPER las letras con tildes seguirán siendo minúscula.

2. Valor absoluto del salario de los empleados
```sql
select ABS(salario) AS salario from empleados;
┌─────────┐
│ salario │
├─────────┤
│ 50000.0 │
│ 60000.0 │
│ 55000.0 │
│ 48000.0 │
│ 70000.0 │
│ 52000.0 │
│ 48000.0 │
│ 65000.0 │
│ 51000.0 │
│ 55000.0 │
│ 72000.0 │
│ 49000.0 │
│ 60000.0 │
│ 53000.0 │
│ 68000.0 │
│ 47000.0 │
│ 71000.0 │
│ 54000.0 │
│ 49000.0 │
│ 63000.0 │
└─────────┘

```

3. La fecha actual
```sql
select CURRENT_DATE AS fecha;
┌────────────┐
│   fecha    │
├────────────┤
│ 2024-01-17 │
└────────────┘
```

4. Promedio del salario de los empleados
```sql
select AVG(salario) AS "Media salarios" from empleados;
┌────────────────┐
│ Media salarios │
├────────────────┤
│ 57000.0        │
└────────────────┘
```

5. Convertir la cadena '123' a entero
```sql
select CAST('123' AS INTEGER) AS conversion;
┌────────────┐
│ conversion │
├────────────┤
│ 123        │
└────────────┘
```

6. Concatenar el nombre y el departamento de cada empleado con un guión como separador
```sql
select nombre || '-' || departamento AS "nombre y departamento" from empleados;
┌───────────────────────────┐
│   nombre y departamento   │
├───────────────────────────┤
│ Juan-Ventas               │
│ María-TI                  │
│ Carlos-Ventas             │
│ Ana-Recursos Humanos      │
│ Pedro-TI                  │
│ Laura-Ventas              │
│ Javier-Recursos Humanos   │
│ Carmen-TI                 │
│ Miguel-Ventas             │
│ Elena-Recursos Humanos    │
│ Diego-TI                  │
│ Sofía-Ventas              │
│ Andrés-Recursos Humanos   │
│ Isabel-TI                 │
│ Raúl-Ventas               │
│ Patricia-Recursos Humanos │
│ Alejandro-TI              │
│ Natalia-Ventas            │
│ Roberto-Recursos Humanos  │
│ Beatriz-TI                │
└───────────────────────────┘
```

7. Categoriza a los empleados según sus salarios.
```sql
Select *,CASE WHEN salario > 50000 
THEN 'Rico' ELSE 'Pobre' 
END AS rango_salario from empleados;
┌────┬───────────┬─────────┬──────────────────┬───────────────┐
│ id │  nombre   │ salario │   departamento   │ rango_salario │
├────┼───────────┼─────────┼──────────────────┼───────────────┤
│ 1  │ Juan      │ 50000.0 │ Ventas           │ Pobre         │
│ 2  │ María     │ 60000.0 │ TI               │ Rico          │
│ 3  │ Carlos    │ 55000.0 │ Ventas           │ Rico          │
│ 4  │ Ana       │ 48000.0 │ Recursos Humanos │ Pobre         │
│ 5  │ Pedro     │ 70000.0 │ TI               │ Rico          │
│ 6  │ Laura     │ 52000.0 │ Ventas           │ Rico          │
│ 7  │ Javier    │ 48000.0 │ Recursos Humanos │ Pobre         │
│ 8  │ Carmen    │ 65000.0 │ TI               │ Rico          │
│ 9  │ Miguel    │ 51000.0 │ Ventas           │ Rico          │
│ 10 │ Elena     │ 55000.0 │ Recursos Humanos │ Rico          │
│ 11 │ Diego     │ 72000.0 │ TI               │ Rico          │
│ 12 │ Sofía     │ 49000.0 │ Ventas           │ Pobre         │
│ 13 │ Andrés    │ 60000.0 │ Recursos Humanos │ Rico          │
│ 14 │ Isabel    │ 53000.0 │ TI               │ Rico          │
│ 15 │ Raúl      │ 68000.0 │ Ventas           │ Rico          │
│ 16 │ Patricia  │ 47000.0 │ Recursos Humanos │ Pobre         │
│ 17 │ Alejandro │ 71000.0 │ TI               │ Rico          │
│ 18 │ Natalia   │ 54000.0 │ Ventas           │ Rico          │
│ 19 │ Roberto   │ 49000.0 │ Recursos Humanos │ Pobre         │
│ 20 │ Beatriz   │ 63000.0 │ TI               │ Rico          │
└────┴───────────┴─────────┴──────────────────┴───────────────┘
```
8. Calcula la suma total de salarios de todos los empleados.
```sql
select SUM(salario) AS "Gasto_total" from empleados;
┌─────────────┐
│ Gasto_total │
├─────────────┤
│ 1140000.0   │
└─────────────┘
```

9.  Redondea el salario de todos los empleados a dos decimales. 
```sql
select *, ROUND(salario, 2) AS "salario redondeado" from empleados;
┌────┬───────────┬─────────┬──────────────────┬────────────────────┐
│ id │  nombre   │ salario │   departamento   │ salario redondeado │
├────┼───────────┼─────────┼──────────────────┼────────────────────┤
│ 1  │ Juan      │ 50000.0 │ Ventas           │ 50000.0            │
│ 2  │ María     │ 60000.0 │ TI               │ 60000.0            │
│ 3  │ Carlos    │ 55000.0 │ Ventas           │ 55000.0            │
│ 4  │ Ana       │ 48000.0 │ Recursos Humanos │ 48000.0            │
│ 5  │ Pedro     │ 70000.0 │ TI               │ 70000.0            │
│ 6  │ Laura     │ 52000.0 │ Ventas           │ 52000.0            │
│ 7  │ Javier    │ 48000.0 │ Recursos Humanos │ 48000.0            │
│ 8  │ Carmen    │ 65000.0 │ TI               │ 65000.0            │
│ 9  │ Miguel    │ 51000.0 │ Ventas           │ 51000.0            │
│ 10 │ Elena     │ 55000.0 │ Recursos Humanos │ 55000.0            │
│ 11 │ Diego     │ 72000.0 │ TI               │ 72000.0            │
│ 12 │ Sofía     │ 49000.0 │ Ventas           │ 49000.0            │
│ 13 │ Andrés    │ 60000.0 │ Recursos Humanos │ 60000.0            │
│ 14 │ Isabel    │ 53000.0 │ TI               │ 53000.0            │
│ 15 │ Raúl      │ 68000.0 │ Ventas           │ 68000.0            │
│ 16 │ Patricia  │ 47000.0 │ Recursos Humanos │ 47000.0            │
│ 17 │ Alejandro │ 71000.0 │ TI               │ 71000.0            │
│ 18 │ Natalia   │ 54000.0 │ Ventas           │ 54000.0            │
│ 19 │ Roberto   │ 49000.0 │ Recursos Humanos │ 49000.0            │
│ 20 │ Beatriz   │ 63000.0 │ TI               │ 63000.0            │
└────┴───────────┴─────────┴──────────────────┴────────────────────┘
```

10. Muestra la longitud de cada nombre de empleado.
```sql
select nombre, LENGTH(nombre) AS Longitud from empleados;
┌───────────┬──────────┐
│  nombre   │ Longitud │
├───────────┼──────────┤
│ Juan      │ 4        │
│ María     │ 5        │
│ Carlos    │ 6        │
│ Ana       │ 3        │
│ Pedro     │ 5        │
│ Laura     │ 5        │
│ Javier    │ 6        │
│ Carmen    │ 6        │
│ Miguel    │ 6        │
│ Elena     │ 5        │
│ Diego     │ 5        │
│ Sofía     │ 5        │
│ Andrés    │ 6        │
│ Isabel    │ 6        │
│ Raúl      │ 4        │
│ Patricia  │ 8        │
│ Alejandro │ 9        │
│ Natalia   │ 7        │
│ Roberto   │ 7        │
│ Beatriz   │ 7        │
└───────────┴──────────┘
```

11. Cuenta el número total de empleados en cada departamento.
```sql
select departamento, COUNT(id) AS "Numero de empleados" from empleados group by departamento;
┌──────────────────┬─────────────────────┐
│   departamento   │ Numero de empleados │
├──────────────────┼─────────────────────┤
│ Recursos Humanos │ 6                   │
│ TI               │ 7                   │
│ Ventas           │ 7                   │
└──────────────────┴─────────────────────┘
```

12. Muestra la hora actual.
```sql
select current_time AS hora;
┌──────────┐
│   hora   │
├──────────┤
│ 19:22:49 │
└──────────┘
```

13. Convierte el salario a un valor de punto flotante.
```sql
select CAST(salario AS FLOAT) AS "salario flotante" from empleados;
┌──────────────────┐
│ salario flotante │
├──────────────────┤
│ 50000.0          │
│ 60000.0          │
│ 55000.0          │
│ 48000.0          │
│ 70000.0          │
│ 52000.0          │
│ 48000.0          │
│ 65000.0          │
│ 51000.0          │
│ 55000.0          │
│ 72000.0          │
│ 49000.0          │
│ 60000.0          │
│ 53000.0          │
│ 68000.0          │
│ 47000.0          │
│ 71000.0          │
│ 54000.0          │
│ 49000.0          │
│ 63000.0          │
└──────────────────┘
```

14. Muestra los primeros tres caracteres de cada nombre de empleado.
```sql
select SUBSTR(nombre, 1, 3) as Iniciales from empleados;
┌───────────┐
│ Iniciales │
├───────────┤
│ Jua       │
│ Mar       │
│ Car       │
│ Ana       │
│ Ped       │
│ Lau       │
│ Jav       │
│ Car       │
│ Mig       │
│ Ele       │
│ Die       │
│ Sof       │
│ And       │
│ Isa       │
│ Raú       │
│ Pat       │
│ Ale       │
│ Nat       │
│ Rob       │
│ Bea       │
└───────────┘
```

15. Empleados en el departamento de 'Ventas' con salarios superiores a 52000.
```sql
select nombre, departamento, salario from empleados 
where departamento = 'Ventas' and salario > 52000;
┌─────────┬──────────────┬─────────┐
│ nombre  │ departamento │ salario │
├─────────┼──────────────┼─────────┤
│ Carlos  │ Ventas       │ 55000.0 │
│ Raúl    │ Ventas       │ 68000.0 │
│ Natalia │ Ventas       │ 54000.0 │
└─────────┴──────────────┴─────────┘
```

16. Empleados cuyos nombres contienen la letra 'a' y tienen salarios ordenados de manera ascendente.
```sql
select nombre, salario from empleados
where nombre LIKE '%a%' order by salario;
┌───────────┬─────────┐
│  nombre   │ salario │
├───────────┼─────────┤
│ Patricia  │ 47000.0 │
│ Ana       │ 48000.0 │
│ Javier    │ 48000.0 │
│ Sofía     │ 49000.0 │
│ Juan      │ 50000.0 │
│ Laura     │ 52000.0 │
│ Isabel    │ 53000.0 │
│ Natalia   │ 54000.0 │
│ Carlos    │ 55000.0 │
│ Elena     │ 55000.0 │
│ María     │ 60000.0 │
│ Andrés    │ 60000.0 │
│ Beatriz   │ 63000.0 │
│ Carmen    │ 65000.0 │
│ Raúl      │ 68000.0 │
│ Alejandro │ 71000.0 │
└───────────┴─────────┘
```

17. Empleados en el departamento 'Recursos Humanos' con salarios entre 45000 y 55000.
```sql
select nombre, departamento, salario from empleados
where departamento="Recursos Humanos" and salario BETWEEN 45000 and 55000;
┌──────────┬──────────────────┬─────────┐
│  nombre  │   departamento   │ salario │
├──────────┼──────────────────┼─────────┤
│ Ana      │ Recursos Humanos │ 48000.0 │
│ Javier   │ Recursos Humanos │ 48000.0 │
│ Elena    │ Recursos Humanos │ 55000.0 │
│ Patricia │ Recursos Humanos │ 47000.0 │
│ Roberto  │ Recursos Humanos │ 49000.0 │
└──────────┴──────────────────┴─────────┘
```

18. Empleados con salarios en orden descendente, limitando a los primeros 5 resultados.
```sql
select nombre, salario from empleados order by salario DESC LIMIT 5;
┌───────────┬─────────┐
│  nombre   │ salario │
├───────────┼─────────┤
│ Diego     │ 72000.0 │
│ Alejandro │ 71000.0 │
│ Pedro     │ 70000.0 │
│ Raúl      │ 68000.0 │
│ Carmen    │ 65000.0 │
└───────────┴─────────┘
```

19. Empleados cuyos nombres comienzan con 'M' o 'N' y tienen salarios superiores a 50000.
```sql
select nombre, salario from empleados where nombre LIKE 'M%' or 'N%' and salario > 50000;
┌────────┬─────────┐
│ nombre │ salario │
├────────┼─────────┤
│ María  │ 60000.0 │
│ Miguel │ 51000.0 │
└────────┴─────────┘
```

20. Empleados en el departamento 'TI' o 'Ventas' ordenados alfabéticamente por nombre.
```sql
select * from empleados where departamento = 'TI' or 'Ventas' order by nombre;
┌────┬───────────┬─────────┬──────────────┐
│ id │  nombre   │ salario │ departamento │
├────┼───────────┼─────────┼──────────────┤
│ 17 │ Alejandro │ 71000.0 │ TI           │
│ 20 │ Beatriz   │ 63000.0 │ TI           │
│ 8  │ Carmen    │ 65000.0 │ TI           │
│ 11 │ Diego     │ 72000.0 │ TI           │
│ 14 │ Isabel    │ 53000.0 │ TI           │
│ 2  │ María     │ 60000.0 │ TI           │
│ 5  │ Pedro     │ 70000.0 │ TI           │
└────┴───────────┴─────────┴──────────────┘
```

21. Empleados con salarios únicos (eliminando duplicados) en orden ascendente.
```sql
select nombre, salario from empleados group by salario order by salario ASC;
┌───────────┬─────────┐
│  nombre   │ salario │
├───────────┼─────────┤
│ Patricia  │ 47000.0 │
│ Ana       │ 48000.0 │
│ Sofía     │ 49000.0 │
│ Juan      │ 50000.0 │
│ Miguel    │ 51000.0 │
│ Laura     │ 52000.0 │
│ Isabel    │ 53000.0 │
│ Natalia   │ 54000.0 │
│ Carlos    │ 55000.0 │
│ María     │ 60000.0 │
│ Beatriz   │ 63000.0 │
│ Carmen    │ 65000.0 │
│ Raúl      │ 68000.0 │
│ Pedro     │ 70000.0 │
│ Alejandro │ 71000.0 │
│ Diego     │ 72000.0 │
└───────────┴─────────┘
```

22. Empleados cuyos nombres terminan con 'o' o 'a' y están en el departamento 'Ventas'.
```sql
select * from empleados where nombre LIKE '%o' or '%a' and departamento = 'Ventas';
┌────┬───────────┬─────────┬──────────────────┐
│ id │  nombre   │ salario │   departamento   │
├────┼───────────┼─────────┼──────────────────┤
│ 5  │ Pedro     │ 70000.0 │ TI               │
│ 11 │ Diego     │ 72000.0 │ TI               │
│ 17 │ Alejandro │ 71000.0 │ TI               │
│ 19 │ Roberto   │ 49000.0 │ Recursos Humanos │
└────┴───────────┴─────────┴──────────────────┘
```

23. Empleados con salarios fuera del rango de 55000 a 70000, ordenados por departamento.
```sql
select * from empleados where salario NOT BETWEEN 55000 and 70000 order by departamento;
┌────┬───────────┬─────────┬──────────────────┐
│ id │  nombre   │ salario │   departamento   │
├────┼───────────┼─────────┼──────────────────┤
│ 4  │ Ana       │ 48000.0 │ Recursos Humanos │
│ 7  │ Javier    │ 48000.0 │ Recursos Humanos │
│ 16 │ Patricia  │ 47000.0 │ Recursos Humanos │
│ 19 │ Roberto   │ 49000.0 │ Recursos Humanos │
│ 11 │ Diego     │ 72000.0 │ TI               │
│ 14 │ Isabel    │ 53000.0 │ TI               │
│ 17 │ Alejandro │ 71000.0 │ TI               │
│ 1  │ Juan      │ 50000.0 │ Ventas           │
│ 6  │ Laura     │ 52000.0 │ Ventas           │
│ 9  │ Miguel    │ 51000.0 │ Ventas           │
│ 12 │ Sofía     │ 49000.0 │ Ventas           │
│ 18 │ Natalia   │ 54000.0 │ Ventas           │
└────┴───────────┴─────────┴──────────────────┘
```

24. Empleados en el departamento 'Recursos Humanos' con nombres que no contienen la letra 'e'.
```sql
select * from empleados where departamento = 'Recursos Humanos' and nombre not LIKE '%e%' or '%é%' or '%E%';
┌────┬──────────┬─────────┬──────────────────┐
│ id │  nombre  │ salario │   departamento   │
├────┼──────────┼─────────┼──────────────────┤
│ 4  │ Ana      │ 48000.0 │ Recursos Humanos │
│ 13 │ Andrés   │ 60000.0 │ Recursos Humanos │
│ 16 │ Patricia │ 47000.0 │ Recursos Humanos │
└────┴──────────┴─────────┴──────────────────┘
```

</div>