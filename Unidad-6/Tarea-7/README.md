<div align="justify">

# <div align="center">Tarea MySQL 7</div>
![Logo](../Tarea-3/images/Mysql.png)

## Realizar la carga de la base de datos
```sql
source sakila-db/sakila-schema.sql
-- Query OK
source sakila-db/sakila-data.sql
-- Query OK
```

## Realiza las siguientes consultas

```sql
-- Actores que tienen de primer nombre Scarlett.
select * from actor where first_name='Scarlett';
/**
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|       81 | SCARLETT   | DAMON     | 2006-02-15 04:34:33 |
|      124 | SCARLETT   | BENING    | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+
**/
-- Actores que tienen de apellido Johansson.
select * from actor where last_name='Johansson';
/**
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|        8 | MATTHEW    | JOHANSSON | 2006-02-15 04:34:33 |
|       64 | RAY        | JOHANSSON | 2006-02-15 04:34:33 |
|      146 | ALBERT     | JOHANSSON | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+
**/
-- Actores que contengan una O en su nombre.
select * from actor where first_name regexp 'O';
/**
+----------+-------------+--------------+---------------------+
| actor_id | first_name  | last_name    | last_update         |
+----------+-------------+--------------+---------------------+
|        1 | PENELOPE    | GUINESS      | 2006-02-15 04:34:33 |
|        5 | JOHNNY      | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
|        9 | JOE         | SWANK        | 2006-02-15 04:34:33 |
|       11 | ZERO        | CAGE         | 2006-02-15 04:34:33 |
|       19 | BOB         | FAWCETT      | 2006-02-15 04:34:33 |
|       24 | CAMERON     | STREEP       | 2006-02-15 04:34:33 |
|       28 | WOODY       | HOFFMAN      | 2006-02-15 04:34:33 |
|       38 | TOM         | MCKELLEN     | 2006-02-15 04:34:33 |
|       39 | GOLDIE      | BRODY        | 2006-02-15 04:34:33 |
|       40 | JOHNNY      | CAGE         | 2006-02-15 04:34:33 |
|       41 | JODIE       | DEGENERES    | 2006-02-15 04:34:33 |
|       42 | TOM         | MIRANDA      | 2006-02-15 04:34:33 |
|       54 | PENELOPE    | PINKETT      | 2006-02-15 04:34:33 |
|       63 | CAMERON     | WRAY         | 2006-02-15 04:34:33 |
|       78 | GROUCHO     | SINATRA      | 2006-02-15 04:34:33 |
|       82 | WOODY       | JOLIE        | 2006-02-15 04:34:33 |
|       91 | CHRISTOPHER | BERRY        | 2006-02-15 04:34:33 |
|      104 | PENELOPE    | CRONYN       | 2006-02-15 04:34:33 |
|      106 | GROUCHO     | DUNST        | 2006-02-15 04:34:33 |
|      111 | CAMERON     | ZELLWEGER    | 2006-02-15 04:34:33 |
|      113 | MORGAN      | HOPKINS      | 2006-02-15 04:34:33 |
|      114 | MORGAN      | MCDORMAND    | 2006-02-15 04:34:33 |
|      115 | HARRISON    | BALE         | 2006-02-15 04:34:33 |
|      120 | PENELOPE    | MONROE       | 2006-02-15 04:34:33 |
|      137 | MORGAN      | WILLIAMS     | 2006-02-15 04:34:33 |
|      140 | WHOOPI      | HURT         | 2006-02-15 04:34:33 |
|      151 | GEOFFREY    | HESTON       | 2006-02-15 04:34:33 |
|      162 | OPRAH       | KILMER       | 2006-02-15 04:34:33 |
|      163 | CHRISTOPHER | WEST         | 2006-02-15 04:34:33 |
|      171 | OLYMPIA     | PFEIFFER     | 2006-02-15 04:34:33 |
|      172 | GROUCHO     | WILLIAMS     | 2006-02-15 04:34:33 |
|      176 | JON         | CHASE        | 2006-02-15 04:34:33 |
|      188 | ROCK        | DUKAKIS      | 2006-02-15 04:34:33 |
|      191 | GREGORY     | GOODING      | 2006-02-15 04:34:33 |
|      192 | JOHN        | SUVARI       | 2006-02-15 04:34:33 |
|      200 | THORA       | TEMPLE       | 2006-02-15 04:34:33 |
+----------+-------------+--------------+---------------------+
**/
-- Actores que contengan una O en su nombre y en una A en su apellido.
select * from actor where first_name regexp 'O' and last_name regexp 'A';
/**
+----------+------------+--------------+---------------------+
| actor_id | first_name | last_name    | last_update         |
+----------+------------+--------------+---------------------+
|        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
|        9 | JOE        | SWANK        | 2006-02-15 04:34:33 |
|       11 | ZERO       | CAGE         | 2006-02-15 04:34:33 |
|       19 | BOB        | FAWCETT      | 2006-02-15 04:34:33 |
|       28 | WOODY      | HOFFMAN      | 2006-02-15 04:34:33 |
|       40 | JOHNNY     | CAGE         | 2006-02-15 04:34:33 |
|       42 | TOM        | MIRANDA      | 2006-02-15 04:34:33 |
|       63 | CAMERON    | WRAY         | 2006-02-15 04:34:33 |
|       78 | GROUCHO    | SINATRA      | 2006-02-15 04:34:33 |
|      114 | MORGAN     | MCDORMAND    | 2006-02-15 04:34:33 |
|      115 | HARRISON   | BALE         | 2006-02-15 04:34:33 |
|      137 | MORGAN     | WILLIAMS     | 2006-02-15 04:34:33 |
|      172 | GROUCHO    | WILLIAMS     | 2006-02-15 04:34:33 |
|      176 | JON        | CHASE        | 2006-02-15 04:34:33 |
|      188 | ROCK       | DUKAKIS      | 2006-02-15 04:34:33 |
|      192 | JOHN       | SUVARI       | 2006-02-15 04:34:33 |
+----------+------------+--------------+---------------------+
**/
-- Actores que contengan dos O en su nombre y en una A en su apellido.
select * from actor where first_name regexp '[O]{2}' and last_name regexp 'A';
/**
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|       28 | WOODY      | HOFFMAN   | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+
**/
-- Actores donde su tercera letra sea B.
select * from actor where first_name regexp '^..B';
/**
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|       15 | CUBA       | OLIVIER   | 2006-02-15 04:34:33 |
|       19 | BOB        | FAWCETT   | 2006-02-15 04:34:33 |
|      118 | CUBA       | ALLEN     | 2006-02-15 04:34:33 |
|      125 | ALBERT     | NOLTE     | 2006-02-15 04:34:33 |
|      146 | ALBERT     | JOHANSSON | 2006-02-15 04:34:33 |
|      182 | DEBBIE     | AKROYD    | 2006-02-15 04:34:33 |
|      189 | CUBA       | BIRCH     | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+
**/
-- Ciudades que empiezan por a.
select * from city where city regexp '^a';
/**
+---------+-------------------------+------------+---------------------+
| city_id | city                    | country_id | last_update         |
+---------+-------------------------+------------+---------------------+
|       1 | A Coruña (La Coruña)    |         87 | 2006-02-15 04:45:25 |
|       2 | Abha                    |         82 | 2006-02-15 04:45:25 |
|       3 | Abu Dhabi               |        101 | 2006-02-15 04:45:25 |
|       4 | Acuña                   |         60 | 2006-02-15 04:45:25 |
|       5 | Adana                   |         97 | 2006-02-15 04:45:25 |
|       6 | Addis Abeba             |         31 | 2006-02-15 04:45:25 |
|       7 | Aden                    |        107 | 2006-02-15 04:45:25 |
|       8 | Adoni                   |         44 | 2006-02-15 04:45:25 |
|       9 | Ahmadnagar              |         44 | 2006-02-15 04:45:25 |
|      10 | Akishima                |         50 | 2006-02-15 04:45:25 |
|      11 | Akron                   |        103 | 2006-02-15 04:45:25 |
|      12 | al-Ayn                  |        101 | 2006-02-15 04:45:25 |
|      13 | al-Hawiya               |         82 | 2006-02-15 04:45:25 |
|      14 | al-Manama               |         11 | 2006-02-15 04:45:25 |
|      15 | al-Qadarif              |         89 | 2006-02-15 04:45:25 |
|      16 | al-Qatif                |         82 | 2006-02-15 04:45:25 |
|      17 | Alessandria             |         49 | 2006-02-15 04:45:25 |
|      18 | Allappuzha (Alleppey)   |         44 | 2006-02-15 04:45:25 |
|      19 | Allende                 |         60 | 2006-02-15 04:45:25 |
|      20 | Almirante Brown         |          6 | 2006-02-15 04:45:25 |
|      21 | Alvorada                |         15 | 2006-02-15 04:45:25 |
|      22 | Ambattur                |         44 | 2006-02-15 04:45:25 |
|      23 | Amersfoort              |         67 | 2006-02-15 04:45:25 |
|      24 | Amroha                  |         44 | 2006-02-15 04:45:25 |
|      25 | Angra dos Reis          |         15 | 2006-02-15 04:45:25 |
|      26 | Anápolis                |         15 | 2006-02-15 04:45:25 |
|      27 | Antofagasta             |         22 | 2006-02-15 04:45:25 |
|      28 | Aparecida de Goiânia    |         15 | 2006-02-15 04:45:25 |
|      29 | Apeldoorn               |         67 | 2006-02-15 04:45:25 |
|      30 | Araçatuba               |         15 | 2006-02-15 04:45:25 |
|      31 | Arak                    |         46 | 2006-02-15 04:45:25 |
|      32 | Arecibo                 |         77 | 2006-02-15 04:45:25 |
|      33 | Arlington               |        103 | 2006-02-15 04:45:25 |
|      34 | Ashdod                  |         48 | 2006-02-15 04:45:25 |
|      35 | Ashgabat                |         98 | 2006-02-15 04:45:25 |
|      36 | Ashqelon                |         48 | 2006-02-15 04:45:25 |
|      37 | Asunción                |         73 | 2006-02-15 04:45:25 |
|      38 | Athenai                 |         39 | 2006-02-15 04:45:25 |
|      39 | Atšinsk                 |         80 | 2006-02-15 04:45:25 |
|      40 | Atlixco                 |         60 | 2006-02-15 04:45:25 |
|      41 | Augusta-Richmond County |        103 | 2006-02-15 04:45:25 |
|      42 | Aurora                  |        103 | 2006-02-15 04:45:25 |
|      43 | Avellaneda              |          6 | 2006-02-15 04:45:25 |
+---------+-------------------------+------------+---------------------+
**/
-- Ciudades que acaban por s.
select * from city where city regexp 's$';
/**
+---------+----------------------------+------------+---------------------+
| city_id | city                       | country_id | last_update         |
+---------+----------------------------+------------+---------------------+
|      25 | Angra dos Reis             |         15 | 2006-02-15 04:45:25 |
|      26 | Anápolis                   |         15 | 2006-02-15 04:45:25 |
|      79 | Bilbays                    |         29 | 2006-02-15 04:45:25 |
|     102 | Caracas                    |        104 | 2006-02-15 04:45:25 |
|     118 | Ciomas                     |         45 | 2006-02-15 04:45:25 |
|     120 | Citrus Heights             |        103 | 2006-02-15 04:45:25 |
|     125 | Coatzacoalcos              |         60 | 2006-02-15 04:45:25 |
|     135 | Dallas                     |        103 | 2006-02-15 04:45:25 |
|     137 | Daugavpils                 |         54 | 2006-02-15 04:45:25 |
|     147 | Dos Quebradas              |         24 | 2006-02-15 04:45:25 |
|     190 | Águas Lindas de Goiás      |         15 | 2006-02-15 04:45:25 |
|     212 | Huejutla de Reyes          |         60 | 2006-02-15 04:45:25 |
|     221 | Imus                       |         75 | 2006-02-15 04:45:25 |
|     238 | Jelets                     |         80 | 2006-02-15 04:45:25 |
|     266 | Kilis                      |         97 | 2006-02-15 04:45:25 |
|     297 | Le Mans                    |         34 | 2006-02-15 04:45:25 |
|     330 | Matamoros                  |         60 | 2006-02-15 04:45:25 |
|     333 | Memphis                    |        103 | 2006-02-15 04:45:25 |
|     391 | Ozamis                     |         75 | 2006-02-15 04:45:25 |
|     401 | Patras                     |         39 | 2006-02-15 04:45:25 |
|     413 | Poços de Caldas            |         15 | 2006-02-15 04:45:25 |
|     424 | Quilmes                    |          6 | 2006-02-15 04:45:25 |
|     441 | Saint Louis                |        103 | 2006-02-15 04:45:25 |
|     442 | Saint-Denis                |         79 | 2006-02-15 04:45:25 |
|     446 | Salinas                    |        103 | 2006-02-15 04:45:25 |
|     460 | Santiago de los Caballeros |         27 | 2006-02-15 04:45:25 |
|     482 | Sivas                      |         97 | 2006-02-15 04:45:25 |
|     497 | Springs                    |         85 | 2006-02-15 04:45:25 |
|     499 | Sterling Heights           |        103 | 2006-02-15 04:45:25 |
|     529 | Tarsus                     |         97 | 2006-02-15 04:45:25 |
|     570 | Vilnius                    |         56 | 2006-02-15 04:45:25 |
+---------+----------------------------+------------+---------------------+
**/
-- Ciudades del country 61.
select city_id, city from city where country_id=61;
/**
+---------+----------+
| city_id | city     |
+---------+----------+
|     115 | Chisinau |
+---------+----------+
**/
-- Ciudades del country Spain.
select city_id, city from city as c JOIN country as co ON c.country_id=co.country_id where co.country='Spain';
/**
+---------+-------------------------+
| city_id | city                    |
+---------+-------------------------+
|       1 | A Coruña (La Coruña)    |
|     146 | Donostia-San Sebastián  |
|     181 | Gijón                   |
|     388 | Ourense (Orense)        |
|     459 | Santiago de Compostela  |
+---------+-------------------------+
**/
-- Ciudades con nombres compuestos.
select * from city where city regexp '-';
/**
+---------+-------------------------+------------+---------------------+
| city_id | city                    | country_id | last_update         |
+---------+-------------------------+------------+---------------------+
|      12 | al-Ayn                  |        101 | 2006-02-15 04:45:25 |
|      13 | al-Hawiya               |         82 | 2006-02-15 04:45:25 |
|      14 | al-Manama               |         11 | 2006-02-15 04:45:25 |
|      15 | al-Qadarif              |         89 | 2006-02-15 04:45:25 |
|      16 | al-Qatif                |         82 | 2006-02-15 04:45:25 |
|      41 | Augusta-Richmond County |        103 | 2006-02-15 04:45:25 |
|      68 | Beni-Mellal             |         62 | 2006-02-15 04:45:25 |
|     146 | Donostia-San Sebastián  |         87 | 2006-02-15 04:45:25 |
|     152 | Effon-Alaiye            |         69 | 2006-02-15 04:45:25 |
|     211 | Hubli-Dharwad           |         44 | 2006-02-15 04:45:25 |
|     233 | Jalib al-Shuyukh        |         53 | 2006-02-15 04:45:25 |
|     236 | Jastrzebie-Zdrój        |         76 | 2006-02-15 04:45:25 |
|     258 | Kamjanets-Podilskyi     |        100 | 2006-02-15 04:45:25 |
|     270 | Kirovo-Tšepetsk         |         80 | 2006-02-15 04:45:25 |
|     294 | Lapu-Lapu               |         75 | 2006-02-15 04:45:25 |
|     348 | Mwene-Ditu              |         25 | 2006-02-15 04:45:25 |
|     351 | Naçala-Porto            |         63 | 2006-02-15 04:45:25 |
|     438 | ´s-Hertogenbosch        |         67 | 2006-02-15 04:45:25 |
|     442 | Saint-Denis             |         79 | 2006-02-15 04:45:25 |
|     467 | Shahr-e Kord            |         46 | 2006-02-15 04:45:25 |
|     476 | Shubra al-Khayma        |         29 | 2006-02-15 04:45:25 |
|     495 | Southend-on-Sea         |        102 | 2006-02-15 04:45:25 |
|     533 | Tel Aviv-Jaffa          |         48 | 2006-02-15 04:45:25 |
|     558 | Usolje-Sibirskoje       |         80 | 2006-02-15 04:45:25 |
|     559 | Uttarpara-Kotrung       |         44 | 2006-02-15 04:45:25 |
+---------+-------------------------+------------+---------------------+
**/
-- Películas con una duración entre 80 y 100.
select title, f.length from film as f where f.length BETWEEN 80 and 100;
/**
+-------------------------+--------+
| title                   | length |
+-------------------------+--------+
| ACADEMY DINOSAUR        |     86 |
| ALICE FANTASIA          |     94 |
| ALONE TRIP              |     82 |
| AMISTAD MIDSUMMER       |     85 |
| ANACONDA CONFESSIONS    |     92 |
| ANNIE IDENTITY          |     86 |
| ANTHEM LUKE             |     91 |
| ANYTHING SAVANNAH       |     82 |
| APACHE DIVINE           |     92 |
| ARMAGEDDON LOST         |     99 |
| ATTRACTION NEWTON       |     83 |
| BANG KWAI               |     87 |
| BASIC EASY              |     90 |
| BEAST HUNCHBACK         |     89 |
| BEHAVIOR RUNAWAY        |    100 |
| BEVERLY OUTLAW          |     85 |
| BILKO ANONYMOUS         |    100 |
| BILL OTHERS             |     93 |
| BLACKOUT PRIVATE        |     85 |
| BOUND CHEAPER           |     98 |
| BUTTERFLY CHOCOLAT      |     89 |
| CANYON STOCK            |     85 |
| CARIBBEAN LIBERTY       |     92 |
| CASABLANCA SUPER        |     85 |
| CHEAPER CLYDE           |     87 |
| CIRCUS YOUTH            |     90 |
| CLASH FREDDY            |     81 |
| CLUELESS BUCKET         |     95 |
| CONGENIALITY QUEST      |     87 |
| CORE SUIT               |     92 |
| DAISY MENAGERIE         |     84 |
| DARES PLUTO             |     89 |
| DARKNESS WAR            |     99 |
| DELIVERANCE MULHOLLAND  |    100 |
| DESPERATE TRAINSPOTTING |     81 |
| DETAILS PACKER          |     88 |
| DEVIL DESIRE            |     87 |
| DISTURBING SCARFACE     |     94 |
| DIVINE RESURRECTION     |    100 |
| DRUMS DYNAMITE          |     96 |
| EARLY HOME              |     96 |
| EARRING INSTINCT        |     98 |
| EARTH VISION            |     85 |
| EGYPT TENENBAUMS        |     85 |
| ENCOUNTERS CURTAIN      |     92 |
| ENDING CROWDS           |     85 |
| EXPENDABLE STALLION     |     97 |
| FATAL HAUNTED           |     91 |
| FEUD FROGMEN            |     98 |
| FIGHT JAWBREAKER        |     91 |
| FLAMINGOS CONNECTICUT   |     80 |
| FLATLINERS KILLER       |    100 |
| FORWARD TEMPLE          |     90 |
| FRENCH HOLIDAY          |     99 |
| FROST HEAD              |     82 |
| FUGITIVE MAGUIRE        |     83 |
| FULL FLATLINERS         |     94 |
| GANDHI KWAI             |     86 |
| GARDEN ISLAND           |     80 |
| GHOST GROUNDHOG         |     85 |
| GLEAMING JAWBREAKER     |     89 |
| GOLDFINGER SENSIBILITY  |     93 |
| GONE TROUBLE            |     84 |
| GRAIL FRANKENSTEIN      |     85 |
| GREATEST NORTH          |     93 |
| GUN BONNIE              |    100 |
| GUYS FALCON             |     84 |
| HAPPINESS UNITED        |    100 |
| HIGH ENCINO             |     84 |
| HILLS NEIGHBORS         |     93 |
| HOLY TADPOLE            |     88 |
| HONEY TIES              |     84 |
| HORN WORKING            |     95 |
| HUSTLER PARTY           |     83 |
| HYDE DOCTOR             |    100 |
| IDOLS SNATCHERS         |     84 |
| INVASION CYCLONE        |     97 |
| ISLAND EXORCIST         |     84 |
| JEEPERS WEDDING         |     84 |
| KANE EXORCIST           |     92 |
| LICENSE WEEKEND         |     91 |
| LOLA AGENT              |     85 |
| LOSER HUSTLER           |     80 |
| LOST BIRD               |     98 |
| LUCKY FLYING            |     97 |
| MADRE GABLES            |     98 |
| MEET CHOCOLATE          |     80 |
| MIDNIGHT WESTWARD       |     86 |
| MOON BUNCH              |     83 |
| MYSTIC TRUMAN           |     92 |
| NATIONAL STORY          |     92 |
| NONE SPIKING            |     83 |
| OPPOSITE NECKLACE       |     92 |
| OZ LIAISONS             |     85 |
| PACKER MADIGAN          |     84 |
| PANKY SUBMARINE         |     93 |
| PATIENT SISTER          |     99 |
| PEAK FOREVER            |     80 |
| PERDITION FARGO         |     99 |
| PERFECT GROOVE          |     82 |
| PET HAUNTING            |     99 |
| PIRATES ROXANNE         |    100 |
| PLUTO OLEANDER          |     84 |
| PREJUDICE OLEANDER      |     98 |
| PULP BEVERLY            |     89 |
| PUNK DIVORCE            |    100 |
| PURPLE MOVIE            |     88 |
| RAIDERS ANTITRUST       |     82 |
| REAR TRADING            |     97 |
| REIGN GENTLEMEN         |     82 |
| ROMAN PUNK              |     81 |
| ROOTS REMEMBER          |     89 |
| SABRINA MIDNIGHT        |     99 |
| SADDLE ANTITRUST        |     80 |
| SAVANNAH TOWN           |     84 |
| SEA VIRGIN              |     80 |
| SECRET GROUNDHOG        |     90 |
| SENSIBILITY REAR        |     98 |
| SHANE DARKNESS          |     93 |
| SHAWSHANK BUBBLE        |     80 |
| SLEUTH ORIENT           |     87 |
| SLING LUKE              |     84 |
| STAGE WORLD             |     85 |
| STING PERSONAL          |     93 |
| STONE FIRE              |     94 |
| SUICIDES SILENCE        |     93 |
| SUNDANCE INVASION       |     92 |
| TARZAN VIDEOTAPE        |     91 |
| TENENBAUMS COMMAND      |     99 |
| TERMINATOR CLUB         |     88 |
| TITANS JERK             |     91 |
| TREATMENT JEKYLL        |     87 |
| TRUMAN CRAZY            |     92 |
| TURN STAR               |     80 |
| TYCOON GATHERING        |     82 |
| UPTOWN YOUNG            |     84 |
| VARSITY TRIP            |     85 |
| VERTIGO NORTHWEST       |     90 |
| WAR NOTTING             |     80 |
| WARLOCK WEREWOLF        |     83 |
| WASTELAND DIVINE        |     85 |
| WINDOW SIDE             |     85 |
| WISDOM WORKER           |     98 |
| WITCHES PANIC           |    100 |
| WONKA SEA               |     85 |
| WYOMING STORM           |    100 |
| YENTL IDAHO             |     86 |
+-------------------------+--------+
**/
-- Peliculas con un rental_rate entre 1 y 3.
select title, rental_rate from film where rental_rate BETWEEN 1 and 3;
/**
+-----------------------------+-------------+
| title                       | rental_rate |
+-----------------------------+-------------+
| ADAPTATION HOLES            |        2.99 |
| AFFAIR PREJUDICE            |        2.99 |
| AFRICAN EGG                 |        2.99 |
| AGENT TRUMAN                |        2.99 |
| ALABAMA DEVIL               |        2.99 |
| ALIEN CENTER                |        2.99 |
| ALLEY EVOLUTION             |        2.99 |
| AMISTAD MIDSUMMER           |        2.99 |
| ANALYZE HOOSIERS            |        2.99 |
| ANGELS LIFE                 |        2.99 |
| ANTITRUST TOMATOES          |        2.99 |
| ANYTHING SAVANNAH           |        2.99 |
| APOLLO TEEN                 |        2.99 |
| ARACHNOPHOBIA ROLLERCOASTER |        2.99 |
| ARIZONA BANG                |        2.99 |
| ARTIST COLDBLOODED          |        2.99 |
| ATLANTIS CAUSE              |        2.99 |
| BADMAN DAWN                 |        2.99 |
| BAKED CLEOPATRA             |        2.99 |
| BALLOON HOMEWARD            |        2.99 |
| BANG KWAI                   |        2.99 |
| BARBARELLA STREETCAR        |        2.99 |
| BAREFOOT MANCHURIAN         |        2.99 |
| BASIC EASY                  |        2.99 |
| BEACH HEARTBREAKERS         |        2.99 |
| BEAR GRACELAND              |        2.99 |
| BED HIGHBALL                |        2.99 |
| BERETS AGENT                |        2.99 |
| BEVERLY OUTLAW              |        2.99 |
| BILL OTHERS                 |        2.99 |
| BINGO TALENTED              |        2.99 |
| BLACKOUT PRIVATE            |        2.99 |
| BLANKET BEVERLY             |        2.99 |
| BLUES INSTINCT              |        2.99 |
| BRAVEHEART HUMAN            |        2.99 |
| BREAKING HOME               |        2.99 |
| BRINGING HYSTERICAL         |        2.99 |
| BUGSY SONG                  |        2.99 |
| BULWORTH COMMANDMENTS       |        2.99 |
| BUNCH MINDS                 |        2.99 |
| CAMPUS REMEMBER             |        2.99 |
| CANDIDATE PERDITION         |        2.99 |
| CAROL TEXAS                 |        2.99 |
| CASSIDY WYOMING             |        2.99 |
| CAUSE DATE                  |        2.99 |
| CHANCE RESURRECTION         |        2.99 |
| CHAPLIN LICENSE             |        2.99 |
| CHARADE DUFFEL              |        2.99 |
| CHARIOTS CONSPIRACY         |        2.99 |
| CHITTY LOCK                 |        2.99 |
| CHOCOLATE DUCK              |        2.99 |
| CIDER DESIRE                |        2.99 |
| CIRCUS YOUTH                |        2.99 |
| CLASH FREDDY                |        2.99 |
| CLONES PINOCCHIO            |        2.99 |
| CLUELESS BUCKET             |        2.99 |
| COLOR PHILADELPHIA          |        2.99 |
| COMFORTS RUSH               |        2.99 |
| CONFUSED CANDLES            |        2.99 |
| CONSPIRACY SPIRIT           |        2.99 |
| CONTACT ANONYMOUS           |        2.99 |
| CORE SUIT                   |        2.99 |
| COWBOY DOOM                 |        2.99 |
| CRANES RESERVOIR            |        2.99 |
| CRAZY HOME                  |        2.99 |
| CROSSROADS CASUALTIES       |        2.99 |
| CRUSADE HONEY               |        2.99 |
| CRYSTAL BREAKING            |        2.99 |
| CUPBOARD SINNERS            |        2.99 |
| CYCLONE FAMILY              |        2.99 |
| DARES PLUTO                 |        2.99 |
| DARKNESS WAR                |        2.99 |
| DEER VIRGINIAN              |        2.99 |
| DESIRE ALIEN                |        2.99 |
| DIARY PANIC                 |        2.99 |
| DINOSAUR SECRETARY          |        2.99 |
| DIRTY ACE                   |        2.99 |
| DISTURBING SCARFACE         |        2.99 |
| DIVIDE MONSTER              |        2.99 |
| DIVINE RESURRECTION         |        2.99 |
| DIVORCE SHINING             |        2.99 |
| DOCTOR GRAIL                |        2.99 |
| DOLLS RAGE                  |        2.99 |
| DREAM PICKUP                |        2.99 |
| DRIVER ANNIE                |        2.99 |
| DUCK RACER                  |        2.99 |
| DWARFS ALTER                |        2.99 |
| EGG IGBY                    |        2.99 |
| ENOUGH RAGING               |        2.99 |
| ESCAPE METROPOLIS           |        2.99 |
| EXORCIST STING              |        2.99 |
| EXPRESS LONELY              |        2.99 |
| EXTRAORDINARY CONQUERER     |        2.99 |
| EYES DRIVING                |        2.99 |
| FANTASIA PARK               |        2.99 |
| FARGO GANDHI                |        2.99 |
| FATAL HAUNTED               |        2.99 |
| FERRIS MOTHER               |        2.99 |
| FISH OPUS                   |        2.99 |
| FLATLINERS KILLER           |        2.99 |
| FLOATS GARDEN               |        2.99 |
| FLYING HOOK                 |        2.99 |
| FOREVER CANDIDATE           |        2.99 |
| FORREST SONS                |        2.99 |
| FORWARD TEMPLE              |        2.99 |
| FREAKY POCUS                |        2.99 |
| FRIDA SLIPPER               |        2.99 |
| FULL FLATLINERS             |        2.99 |
| GANGS PRIDE                 |        2.99 |
| GASLIGHT CRUSADE            |        2.99 |
| GENTLEMEN STAGE             |        2.99 |
| GIANT TROOPERS              |        2.99 |
| GLEAMING JAWBREAKER         |        2.99 |
| GLORY TRACY                 |        2.99 |
| GODFATHER DIARY             |        2.99 |
| GONE TROUBLE                |        2.99 |
| GORGEOUS BINGO              |        2.99 |
| GRADUATE LORD               |        2.99 |
| GRAIL FRANKENSTEIN          |        2.99 |
| GREATEST NORTH              |        2.99 |
| GREEK EVERYONE              |        2.99 |
| GUNFIGHTER MUSSOLINI        |        2.99 |
| HALF OUTFIELD               |        2.99 |
| HALLOWEEN NUTS              |        2.99 |
| HAMLET WISDOM               |        2.99 |
| HANKY OCTOBER               |        2.99 |
| HAPPINESS UNITED            |        2.99 |
| HARDLY ROBBERS              |        2.99 |
| HEAVEN FREEDOM              |        2.99 |
| HEDWIG ALTER                |        2.99 |
| HELLFIGHTERS SIERRA         |        2.99 |
| HIGH ENCINO                 |        2.99 |
| HOCUS FRIDA                 |        2.99 |
| HOMICIDE PEACH              |        2.99 |
| HOOSIERS BIRDCAGE           |        2.99 |
| HOPE TOOTSIE                |        2.99 |
| HORN WORKING                |        2.99 |
| HOUSE DYNAMITE              |        2.99 |
| HUMAN GRAFFITI              |        2.99 |
| HUNTER ALTER                |        2.99 |
| HUNTING MUSKETEERS          |        2.99 |
| HURRICANE AFFAIR            |        2.99 |
| HYDE DOCTOR                 |        2.99 |
| ICE CROSSING                |        2.99 |
| IDAHO LOVE                  |        2.99 |
| IDENTITY LOVER              |        2.99 |
| IDOLS SNATCHERS             |        2.99 |
| IMAGE PRINCESS              |        2.99 |
| INSIDER ARIZONA             |        2.99 |
| INSTINCT AIRPORT            |        2.99 |
| INTENTIONS EMPIRE           |        2.99 |
| INVASION CYCLONE            |        2.99 |
| ISLAND EXORCIST             |        2.99 |
| JACKET FRISCO               |        2.99 |
| JADE BUNCH                  |        2.99 |
| JASON TRAP                  |        2.99 |
| JAWS HARRY                  |        2.99 |
| JEEPERS WEDDING             |        2.99 |
| JEKYLL FROGMEN              |        2.99 |
| JERICHO MULAN               |        2.99 |
| JERK PAYCHECK               |        2.99 |
| JUMANJI BLADE               |        2.99 |
| KENTUCKIAN GIANT            |        2.99 |
| KILLER INNOCENT             |        2.99 |
| KNOCK WARLOCK               |        2.99 |
| KRAMER CHOCOLATE            |        2.99 |
| LABYRINTH LEAGUE            |        2.99 |
| LEATHERNECKS DWARFS         |        2.99 |
| LEBOWSKI SOLDIERS           |        2.99 |
| LIBERTY MAGNIFICENT         |        2.99 |
| LICENSE WEEKEND             |        2.99 |
| LIFE TWISTED                |        2.99 |
| LOCK REAR                   |        2.99 |
| LOLITA WORLD                |        2.99 |
| LONELY ELEPHANT             |        2.99 |
| LORD ARIZONA                |        2.99 |
| LOST BIRD                   |        2.99 |
| LOVELY JINGLE               |        2.99 |
| LOVER TRUMAN                |        2.99 |
| LUCK OPUS                   |        2.99 |
| LUCKY FLYING                |        2.99 |
| LUKE MUMMY                  |        2.99 |
| LUST LOCK                   |        2.99 |
| MADISON TRAP                |        2.99 |
| MADRE GABLES                |        2.99 |
| MAGNIFICENT CHITTY          |        2.99 |
| MAGUIRE APACHE              |        2.99 |
| MALKOVICH PET               |        2.99 |
| MANCHURIAN CURTAIN          |        2.99 |
| MANNEQUIN WORST             |        2.99 |
| MARRIED GO                  |        2.99 |
| MASK PEACH                  |        2.99 |
| MASSAGE IMAGE               |        2.99 |
| MEET CHOCOLATE              |        2.99 |
| MENAGERIE RUSHMORE          |        2.99 |
| METAL ARMAGEDDON            |        2.99 |
| METROPOLIS COMA             |        2.99 |
| MICROCOSMOS PARADISE        |        2.99 |
| MIGHTY LUCK                 |        2.99 |
| MIRACLE VIRTUAL             |        2.99 |
| MIXED DOORS                 |        2.99 |
| MONEY HAROLD                |        2.99 |
| MONSTER SPARTACUS           |        2.99 |
| MULHOLLAND BEAST            |        2.99 |
| MURDER ANTITRUST            |        2.99 |
| MUSCLE BRIGHT               |        2.99 |
| MUSSOLINI SPOILERS          |        2.99 |
| NASH CHOCOLAT               |        2.99 |
| NATIONAL STORY              |        2.99 |
| NEMO CAMPUS                 |        2.99 |
| NETWORK PEAK                |        2.99 |
| NOON PAPI                   |        2.99 |
| NORTHWEST POLISH            |        2.99 |
| OPERATION OPERATION         |        2.99 |
| ORDER BETRAYED              |        2.99 |
| ORIENT CLOSER               |        2.99 |
| OSCAR GOLD                  |        2.99 |
| OTHERS SOUP                 |        2.99 |
| OZ LIAISONS                 |        2.99 |
| PARADISE SABRINA            |        2.99 |
| PARIS WEEKEND               |        2.99 |
| PARTY KNOCK                 |        2.99 |
| PATRIOT ROMAN               |        2.99 |
| PATTON INTERVIEW            |        2.99 |
| PEACH INNOCENT              |        2.99 |
| PEARL DESTINY               |        2.99 |
| PERFECT GROOVE              |        2.99 |
| PHANTOM GLORY               |        2.99 |
| PICKUP DRIVING              |        2.99 |
| PILOT HOOSIERS              |        2.99 |
| PIZZA JUMANJI               |        2.99 |
| POLLOCK DELIVERANCE         |        2.99 |
| POND SEATTLE                |        2.99 |
| POTLUCK MIXED               |        2.99 |
| POTTER CONNECTICUT          |        2.99 |
| PRINCESS GIANT              |        2.99 |
| PRIX UNDEFEATED             |        2.99 |
| PSYCHO SHRUNK               |        2.99 |
| PULP BEVERLY                |        2.99 |
| PURE RUNNER                 |        2.99 |
| PURPLE MOVIE                |        2.99 |
| QUEST MUSSOLINI             |        2.99 |
| RACER EGG                   |        2.99 |
| RANDOM GO                   |        2.99 |
| REAP UNFAITHFUL             |        2.99 |
| REDEMPTION COMFORTS         |        2.99 |
| REIGN GENTLEMEN             |        2.99 |
| REMEMBER DIARY              |        2.99 |
| RESERVOIR ADAPTATION        |        2.99 |
| RIDER CADDYSHACK            |        2.99 |
| ROBBERS JOON                |        2.99 |
| ROLLERCOASTER BRINGING      |        2.99 |
| RUSHMORE MERMAID            |        2.99 |
| SADDLE ANTITRUST            |        2.99 |
| SAGEBRUSH CLUELESS          |        2.99 |
| SAINTS BRIDE                |        2.99 |
| SALUTE APOLLO               |        2.99 |
| SAMURAI LION                |        2.99 |
| SANTA PARIS                 |        2.99 |
| SCISSORHANDS SLUMS          |        2.99 |
| SEA VIRGIN                  |        2.99 |
| SEABISCUIT PUNK             |        2.99 |
| SEARCHERS WAIT              |        2.99 |
| SHAKESPEARE SADDLE          |        2.99 |
| SHANE DARKNESS              |        2.99 |
| SHANGHAI TYCOON             |        2.99 |
| SHIP WONDERLAND             |        2.99 |
| SHOCK CABIN                 |        2.99 |
| SHREK LICENSE               |        2.99 |
| SHRUNK DIVINE               |        2.99 |
| SINNERS ATLANTIS            |        2.99 |
| SKY MIRACLE                 |        2.99 |
| SLEEPY JAPANESE             |        2.99 |
| SMILE EARRING               |        2.99 |
| SNATCHERS MONTEZUMA         |        2.99 |
| SONS INTERVIEW              |        2.99 |
| SOUTH WAIT                  |        2.99 |
| SPEAKEASY DATE              |        2.99 |
| SPIKING ELEMENT             |        2.99 |
| SPINAL ROCKY                |        2.99 |
| SPY MILE                    |        2.99 |
| SQUAD FISH                  |        2.99 |
| STAGE WORLD                 |        2.99 |
| STAR OPERATION              |        2.99 |
| STATE WASTELAND             |        2.99 |
| STOCK GLASS                 |        2.99 |
| STRICTLY SCARFACE           |        2.99 |
| SUSPECTS QUILLS             |        2.99 |
| SWEET BROTHERHOOD           |        2.99 |
| TADPOLE PARK                |        2.99 |
| TARZAN VIDEOTAPE            |        2.99 |
| TELEMARK HEARTBREAKERS      |        2.99 |
| TOMORROW HUSTLER            |        2.99 |
| TOWN ARK                    |        2.99 |
| TROJAN TOMORROW             |        2.99 |
| TROUBLE DATE                |        2.99 |
| TURN STAR                   |        2.99 |
| TUXEDO MILE                 |        2.99 |
| UNCUT SUICIDES              |        2.99 |
| UNFAITHFUL KILL             |        2.99 |
| UNTOUCHABLES SUNRISE        |        2.99 |
| UPRISING UPTOWN             |        2.99 |
| UPTOWN YOUNG                |        2.99 |
| VACATION BOONDOCK           |        2.99 |
| VANISHING ROCKY             |        2.99 |
| VARSITY TRIP                |        2.99 |
| VERTIGO NORTHWEST           |        2.99 |
| WAGON JAWS                  |        2.99 |
| WARDROBE PHANTOM            |        2.99 |
| WARLOCK WEREWOLF            |        2.99 |
| WARS PLUTO                  |        2.99 |
| WASTELAND DIVINE            |        2.99 |
| WEEKEND PERSONAL            |        2.99 |
| WILLOW TRACY                |        2.99 |
| WINDOW SIDE                 |        2.99 |
| WON DARES                   |        2.99 |
| WONDERFUL DROP              |        2.99 |
| WONKA SEA                   |        2.99 |
| WORDS HUNTER                |        2.99 |
| WORKER TARZAN               |        2.99 |
| WORST BANGER                |        2.99 |
| WRONG BEHAVIOR              |        2.99 |
| ZOOLANDER FICTION           |        2.99 |
+-----------------------------+-------------+
**/
-- Películas con un titulo de más de 12 letras.
-- Peliculas con un rating de PG o G.
-- Peliculas que no tengan un rating de NC-17.
-- Peliculas con un rating PG y duracion de más de 120.
-- ¿Cuantos actores hay?
-- ¿Cuántas ciudades tiene el country Spain?
-- ¿Cuántos countries hay que empiezan por a?
-- Media de duración de peliculas con PG.
-- Suma de rental_rate de todas las peliculas.
-- Pelicula con mayor duración.
-- Película con menor duración.
-- Mostrar las ciudades del country Spain (multitabla).
-- Mostrar el nombre de la película y el nombre de los actores.
-- Mostrar el nombre de la película y el de sus categorías.
-- Mostrar el country, la ciudad y dirección de cada miembro del staff.
-- Mostrar el country, la ciudad y dirección de cada customer.
-- Numero de películas de cada rating
-- Cuantas películas ha realizado el actor ED CHASE.
-- Media de duración de las películas cada categoría.


```

</div>