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

```

3. La fecha actual

4. Promedio del salario de los empleados

5. Convertir la cadena '123' a entero

6. Concatenar el nombre y el departamento de cada empleado con un guión como separador

7. Categoriza a los empleados según sus salarios.

8. Calcula la suma total de salarios de todos los empleados.

9.  Redondea el salario de todos los empleados a dos decimales. 

10. Muestra la longitud de cada nombre de empleado.

11. Cuenta el número total de empleados en cada departamento.

12. Muestra la hora actual.

13. Convierte el salario a un valor de punto flotante.

14. Muestra los primeros tres caracteres de cada nombre de empleado.

15. Empleados en el departamento de 'Ventas' con salarios superiores a 52000.

16. Empleados cuyos nombres contienen la letra 'a' y tienen salarios ordenados de manera ascendente.

17. Empleados en el departamento 'Recursos Humanos' con salarios entre 45000 y 55000.

18. Empleados con salarios en orden descendente, limitando a los primeros 5 resultados.

19. Empleados cuyos nombres comienzan con 'M' o 'N' y tienen salarios superiores a 50000.

20. Empleados en el departamento 'TI' o 'Ventas' ordenados alfabéticamente por nombre.

21. Empleados con salarios únicos (eliminando duplicados) en orden ascendente.

22. Empleados cuyos nombres terminan con 'o' o 'a' y están en el departamento 'Ventas'.

23. Empleados con salarios fuera del rango de 55000 a 70000, ordenados por departamento.

24. Empleados en el departamento 'Recursos Humanos' con nombres que no contienen la letra 'e'.

</div>