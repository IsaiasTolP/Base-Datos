/**
La función COALESCE() devuelve el primer valor NO NULO de una serie de valores que se les proporciona.
**/

/**
La función SUBSTRING() y SUBSTR() tienen el mismo uso que es devolver un fragmento de una cadena de texto dada.
El primer índice es el 1 y no el 0. El último carácter también se incluye
Ejemplo:
SELECT SUBSTRING('SQLTutorial', 1, 3) AS ExtractString;
Entonces la sintaxis sería:
SUBSTRING(string, start, length)

El SUBSTR se usa de manera idéntica y hace lo mismo.
**/

/**
La función REPLACE() es una función que permite reemplazar la coincidencias dentro de una cadena de texto por otra cadena.
Ejemplo:
SELECT REPLACE('SQL Tutorial', 'SQL', 'HTML') as replacedstr;
La sintaxis sería:
REPLACE(string, old_str, new_str)
**/

/**
La función REVERSE(), recibe un string y le da la vuelta
SELECT REVERSE('SQL');
+----------------+
| REVERSE('SQL') |
+----------------+
| LQS            |
+----------------+
La sintaxis sería:
REVERSE(string)
**/

/**
La función REPEAT() devuelve un número de veces una cadena de texto
SELECT REPEAT('SQL', 2);
La sintaxis sería:
REPEAT(string, num_repeat)
**/

/**
Las funciones LOWER() y LCASE() son funciones que convierten las cadenas de texto a minúscula.
Las funciones UPPER() y UCASE() son funciones que convierten las cadenas de texto a mayúscula.
**/

/**
La función LENGTH() devuelve la longitud de una cadena de texto.
**/

/**
La función CONCAT() recibe una serie de cadenas de texto que esta función conecta.
**/

/**
La función INSERT() se encarga de añadir una cadena de texto a la posición indicada.
Ejemplo:
SELECT INSERT("W3Schools.com", 1, 9, "Example");
La sintaxis sería:
INSERT(string, start, end, new_string)
Si nos fijamos lo que ha hecho es sustituir en la cadena original los 9 primeros caracteres por un Example.
**/

/**
La función POW() recibe dos números para hacer una operación de potenciación
Ejemplo:
SELECT POW(4,2);
La sintaxis sería:
POW(base, exponente)
**/

/**
La función MOD() recibe dos números para devolver el módulo de una operación de división.
Ejemplo:
SELECT MOD(18, 4);
Sintaxis:
MOD(dividendo, divisor)
**/

/**
La función PI() devuelve el valor de Pi.
**/

FUNCIONES DE FECHAS

/**
Las funciones CURDATE() y CURRENT_DATE() devuelven la fecha actual.
**/

/**
Las funciones CURTIME() y CURRENT_TIME() devuelven la hora actual.
**/

/**
Las funciones NOW() y CURRENT_TIMESTAMP() devuelven la fecha y hora actual.
**/

/**
La función DATEDIFF devuelve el número de días de diferencia entre 2 fechas.
Ejemplo:
SELECT DATEDIFF("2017-06-25", "2017-06-15") as "dias de diferencia";
+--------------------+
| dias de diferencia |
+--------------------+
|                 10 |
+--------------------+
La sintaxis sería:
DATEDIFF(fecha1, fecha2)
**/

/**
La función DATE_ADD() y DATE_SUB() suman o restan, respectivamente, un número de intervalo de tiempo que se elija.
Ejemplo:
SELECT DATE_ADD('2017-06-15', INTERVAL 15 DAY);
+-----------------------------------------+
| DATE_ADD('2017-06-15', INTERVAL 15 DAY) |
+-----------------------------------------+
| 2017-06-30                              |
+-----------------------------------------+
La sintaxis sería:
DATE_ADD(fecha, INTERVAL num DAY | WEEK | MONTH | QUARTER | YEAR | HOUR | MINUTE | SECOND | MICROSECOND)
NOTA: Se permiten números negativos en ambas funciones por lo que harían la operación inversa
**/

/**
Las funciones DAY() y DAYOFMONTH() reciben una fecha y devuelven el día del més de la misma.
**/

/**
La función DAYNAME(), recibe una fecha y devuelve el nombre del día de la misma (Sábado, Domingo, etc)
La función DAYOFWEEK(), recibe una fecha y devuelve el índice del día de la semana de la misma (1=Sunday, 2=Monday, 3, etc)
**/

/**
La función DAYOFYEAR() devuelve el número del día del año de la fecha dada (va del 1 al 366).
La función WEEKOFYEAR() devuelve la semana del año de la fecha dada(va del 1 a 53).
**/

/**
La función EXTRACT() permite sacar de una fecha una parte concreta.
Ejemplo:
SELECT EXTRACT(MONTH FROM "2017-06-15");
La sintaxis sería:
EXTRACT(DAY | WEEK | MONTH | QUARTER | YEAR | HOUR | MINUTE | SECOND | MICROSECOND FROM fecha)
**/

/**
La función LAST_DAY() devuelve el último día del mes de una fecha dada.
**/