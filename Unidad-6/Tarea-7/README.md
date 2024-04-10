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
select title, film_id from film where title regexp '.{13,}';
/**
+-----------------------------+---------+
| title                       | film_id |
+-----------------------------+---------+
| ACADEMY DINOSAUR            |       1 |
| ACE GOLDFINGER              |       2 |
| ADAPTATION HOLES            |       3 |
| AFFAIR PREJUDICE            |       4 |
| AIRPLANE SIERRA             |       7 |
| AIRPORT POLLOCK             |       8 |
| ALABAMA DEVIL               |       9 |
| ALADDIN CALENDAR            |      10 |
| ALAMO VIDEOTAPE             |      11 |
| ALASKA PHANTOM              |      12 |
| ALICE FANTASIA              |      14 |
| ALLEY EVOLUTION             |      16 |
| ALTER VICTORY               |      18 |
| AMELIE HELLFIGHTERS         |      20 |
| AMERICAN CIRCUS             |      21 |
| AMISTAD MIDSUMMER           |      22 |
| ANACONDA CONFESSIONS        |      23 |
| ANALYZE HOOSIERS            |      24 |
| ANNIE IDENTITY              |      26 |
| ANONYMOUS HUMAN             |      27 |
| ANTITRUST TOMATOES          |      29 |
| ANYTHING SAVANNAH           |      30 |
| APACHE DIVINE               |      31 |
| APOCALYPSE FLAMINGOS        |      32 |
| ARACHNOPHOBIA ROLLERCOASTER |      35 |
| ARGONAUTS TOWN              |      36 |
| ARK RIDGEMONT               |      38 |
| ARMAGEDDON LOST             |      39 |
| ARMY FLINTSTONES            |      40 |
| ARSENIC INDEPENDENCE        |      41 |
| ARTIST COLDBLOODED          |      42 |
| ATLANTIS CAUSE              |      43 |
| ATTRACTION NEWTON           |      45 |
| BACKLASH UNDEFEATED         |      48 |
| BAKED CLEOPATRA             |      50 |
| BALLOON HOMEWARD            |      51 |
| BALLROOM MOCKINGBIRD        |      52 |
| BANGER PINOCCHIO            |      54 |
| BARBARELLA STREETCAR        |      55 |
| BAREFOOT MANCHURIAN         |      56 |
| BEACH HEARTBREAKERS         |      58 |
| BEAR GRACELAND              |      59 |
| BEAST HUNCHBACK             |      60 |
| BEAUTY GREASE               |      61 |
| BEDAZZLED MARRIED           |      63 |
| BEETHOVEN EXORCIST          |      64 |
| BEHAVIOR RUNAWAY            |      65 |
| BETRAYED REAR               |      68 |
| BEVERLY OUTLAW              |      69 |
| BIKINI BORROWERS            |      70 |
| BILKO ANONYMOUS             |      71 |
| BINGO TALENTED              |      73 |
| BIRCH ANTITRUST             |      74 |
| BIRD INDEPENDENCE           |      75 |
| BIRDCAGE CASPER             |      76 |
| BIRDS PERDITION             |      77 |
| BLACKOUT PRIVATE            |      78 |
| BLANKET BEVERLY             |      80 |
| BLINDNESS GUN               |      81 |
| BLOOD ARGONAUTS             |      82 |
| BLUES INSTINCT              |      83 |
| BONNIE HOLOCAUST            |      85 |
| BOOGIE AMELIE               |      86 |
| BOONDOCK BALLROOM           |      87 |
| BORROWERS BEDAZZLED         |      89 |
| BOULEVARD MOB               |      90 |
| BOUND CHEAPER               |      91 |
| BOWFINGER GABLES            |      92 |
| BRANNIGAN SUNRISE           |      93 |
| BRAVEHEART HUMAN            |      94 |
| BREAKFAST GOLDFINGER        |      95 |
| BREAKING HOME               |      96 |
| BRIDE INTRIGUE              |      97 |
| BRIGHT ENCOUNTERS           |      98 |
| BRINGING HYSTERICAL         |      99 |
| BROOKLYN DESERT             |     100 |
| BROTHERHOOD BLANKET         |     101 |
| BUBBLE GROSSE               |     102 |
| BUCKET BROTHERHOOD          |     103 |
| BULL SHAWSHANK              |     105 |
| BULWORTH COMMANDMENTS       |     106 |
| BUTCH PANTHER               |     108 |
| BUTTERFLY CHOCOLAT          |     109 |
| CADDYSHACK JEDI             |     111 |
| CALENDAR GUNFIGHT           |     112 |
| CALIFORNIA BIRDS            |     113 |
| CAMELOT VACATION            |     114 |
| CAMPUS REMEMBER             |     115 |
| CANDIDATE PERDITION         |     116 |
| CANDLES GRAPES              |     117 |
| CAPER MOTIONS               |     119 |
| CARIBBEAN LIBERTY           |     120 |
| CASABLANCA SUPER            |     123 |
| CASPER DRAGONFLY            |     124 |
| CASSIDY WYOMING             |     125 |
| CASUALTIES ENCINO           |     126 |
| CAT CONEHEADS               |     127 |
| CATCH AMISTAD               |     128 |
| CELEBRITY HORN              |     130 |
| CENTER DINOSAUR             |     131 |
| CHAINSAW UPTOWN             |     132 |
| CHAMBER ITALIAN             |     133 |
| CHAMPION FLATLINERS         |     134 |
| CHANCE RESURRECTION         |     135 |
| CHAPLIN LICENSE             |     136 |
| CHARADE DUFFEL              |     137 |
| CHARIOTS CONSPIRACY         |     138 |
| CHASING FIGHT               |     139 |
| CHEAPER CLYDE               |     140 |
| CHICAGO NORTH               |     141 |
| CHICKEN HELLFIGHTERS        |     142 |
| CHINATOWN GLADIATOR         |     144 |
| CHISUM BEHAVIOR             |     145 |
| CHOCOLAT HARRY              |     147 |
| CHOCOLATE DUCK              |     148 |
| CHRISTMAS MOONSHINE         |     149 |
| CINCINATTI WHISPERER        |     151 |
| CITIZEN SHREK               |     153 |
| CLEOPATRA DEVIL             |     155 |
| CLERKS ANGELS               |     156 |
| CLOCKWORK PARADISE          |     157 |
| CLONES PINOCCHIO            |     158 |
| CLUB GRAFFITI               |     160 |
| CLUELESS BUCKET             |     162 |
| COAST RAINBOW               |     164 |
| COLDBLOODED DARLING         |     165 |
| COLOR PHILADELPHIA          |     166 |
| COMANCHEROS ENEMY           |     168 |
| COMFORTS RUSH               |     169 |
| COMMAND DARLING             |     170 |
| COMMANDMENTS EXPRESS        |     171 |
| CONEHEADS SMOOCHY           |     172 |
| CONFESSIONS MAGUIRE         |     173 |
| CONFIDENTIAL INTERVIEW      |     174 |
| CONFUSED CANDLES            |     175 |
| CONGENIALITY QUEST          |     176 |
| CONNECTICUT TRAMP           |     177 |
| CONNECTION MICROCOSMOS      |     178 |
| CONQUERER NUTS              |     179 |
| CONSPIRACY SPIRIT           |     180 |
| CONTACT ANONYMOUS           |     181 |
| CONTROL ANTHEM              |     182 |
| CONVERSATION DOWNHILL       |     183 |
| CRAFT OUTFIELD              |     186 |
| CRANES RESERVOIR            |     187 |
| CREATURES SHAKESPEARE       |     189 |
| CREEPERS KANE               |     190 |
| CROOKED FROGMEN             |     191 |
| CROSSING DIVORCE            |     192 |
| CROSSROADS CASUALTIES       |     193 |
| CROWDS TELEMARK             |     195 |
| CRUELTY UNFORGIVEN          |     196 |
| CRUSADE HONEY               |     197 |
| CRYSTAL BREAKING            |     198 |
| CUPBOARD SINNERS            |     199 |
| CURTAIN VIDEOTAPE           |     200 |
| CYCLONE FAMILY              |     201 |
| DADDY PITTSBURGH            |     202 |
| DAISY MENAGERIE             |     203 |
| DALMATIONS SWEDEN           |     204 |
| DANCING FEVER               |     206 |
| DANGEROUS UPTOWN            |     207 |
| DARLING BREAKING            |     211 |
| DARN FORRESTER              |     212 |
| DAUGHTER MADIGAN            |     214 |
| DAY UNFAITHFUL              |     216 |
| DECEIVER BETRAYED           |     218 |
| DEER VIRGINIAN              |     220 |
| DELIVERANCE MULHOLLAND      |     221 |
| DESERT POSEIDON             |     222 |
| DESPERATE TRAINSPOTTING     |     224 |
| DESTINATION JERK            |     225 |
| DESTINY SATURDAY            |     226 |
| DETAILS PACKER              |     227 |
| DETECTIVE VISION            |     228 |
| DINOSAUR SECRETARY          |     231 |
| DISCIPLE MOTHER             |     233 |
| DISTURBING SCARFACE         |     234 |
| DIVIDE MONSTER              |     235 |
| DIVINE RESURRECTION         |     236 |
| DIVORCE SHINING             |     237 |
| DOORS PRESIDENT             |     243 |
| DORADO NOTTING              |     244 |
| DOUBTFIRE LABYRINTH         |     246 |
| DOWNHILL ENOUGH             |     247 |
| DRACULA CRYSTAL             |     249 |
| DRAGONFLY STRANGERS         |     251 |
| DRIFTER COMMANDMENTS        |     253 |
| DRIVING POLISH              |     255 |
| DROP WATERFRONT             |     256 |
| DRUMLINE CYCLONE            |     257 |
| DRUMS DYNAMITE              |     258 |
| DUDE BLINDNESS              |     260 |
| DUFFEL APOCALYPSE           |     261 |
| DYNAMITE TARZAN             |     266 |
| EARRING INSTINCT            |     269 |
| EASY GLADIATOR              |     271 |
| EFFECT GLADIATOR            |     273 |
| EGYPT TENENBAUMS            |     275 |
| ELEMENT FREDDY              |     276 |
| ELEPHANT TROJAN             |     277 |
| ELIZABETH SHANE             |     279 |
| EMPIRE MALKOVICH            |     280 |
| ENCOUNTERS CURTAIN          |     282 |
| ENDING CROWDS               |     283 |
| ENGLISH BULWORTH            |     285 |
| ENOUGH RAGING               |     286 |
| ENTRAPMENT SATISFACTION     |     287 |
| ESCAPE METROPOLIS           |     288 |
| EVE RESURRECTION            |     289 |
| EVERYONE CRAFT              |     290 |
| EVOLUTION ALTER             |     291 |
| EXCITEMENT EVE              |     292 |
| EXORCIST STING              |     293 |
| EXPECATIONS NATURAL         |     294 |
| EXPENDABLE STALLION         |     295 |
| EXPRESS LONELY              |     296 |
| EXTRAORDINARY CONQUERER     |     297 |
| FACTORY DRAGON              |     299 |
| FALCON VOLUME               |     300 |
| FANTASIA PARK               |     302 |
| FANTASY TROOPERS            |     303 |
| FATAL HAUNTED               |     305 |
| FEATHERS METAL              |     306 |
| FELLOWSHIP AUTUMN           |     307 |
| FERRIS MOTHER               |     308 |
| FICTION CHRISTMAS           |     311 |
| FIDELITY DEVIL              |     313 |
| FIGHT JAWBREAKER            |     314 |
| FINDING ANACONDA            |     315 |
| FIREBALL PHILADELPHIA       |     317 |
| FIREHOUSE VIETNAM           |     318 |
| FLAMINGOS CONNECTICUT       |     320 |
| FLATLINERS KILLER           |     322 |
| FLINTSTONES HAPPINESS       |     324 |
| FLOATS GARDEN               |     325 |
| FOOL MOCKINGBIRD            |     327 |
| FOREVER CANDIDATE           |     328 |
| FORRESTER COMANCHEROS       |     330 |
| FORWARD TEMPLE              |     331 |
| FRANKENSTEIN STRANGER       |     332 |
| FREEDOM CLEOPATRA           |     335 |
| FRENCH HOLIDAY              |     336 |
| FRIDA SLIPPER               |     337 |
| FRISCO FORREST              |     338 |
| FROGMEN BREAKING            |     339 |
| FRONTIER CABIN              |     340 |
| FUGITIVE MAGUIRE            |     342 |
| FULL FLATLINERS             |     343 |
| GABLES METROPOLIS           |     345 |
| GALAXY SWEETHEARTS          |     346 |
| GAMES BOWFINGER             |     347 |
| GARDEN ISLAND               |     350 |
| GASLIGHT CRUSADE            |     351 |
| GATHERING CALENDAR          |     352 |
| GENTLEMEN STAGE             |     353 |
| GHOST GROUNDHOG             |     354 |
| GHOSTBUSTERS ELF            |     355 |
| GIANT TROOPERS              |     356 |
| GILBERT PELICAN             |     357 |
| GILMORE BOILED              |     358 |
| GLADIATOR WESTWARD          |     359 |
| GLEAMING JAWBREAKER         |     361 |
| GODFATHER DIARY             |     364 |
| GOLDFINGER SENSIBILITY      |     366 |
| GOLDMINE TYCOON             |     367 |
| GOODFELLAS SALUTE           |     369 |
| GORGEOUS BINGO              |     370 |
| GOSFORD DONNIE              |     371 |
| GRACELAND DYNAMITE          |     372 |
| GRADUATE LORD               |     373 |
| GRAFFITI LOVE               |     374 |
| GRAIL FRANKENSTEIN          |     375 |
| GREATEST NORTH              |     378 |
| GREEK EVERYONE              |     380 |
| GRINCH MASSAGE              |     381 |
| GRIT CLOCKWORK              |     382 |
| GROOVE FICTION              |     383 |
| GROSSE WONDERFUL            |     384 |
| GROUNDHOG UNCUT             |     385 |
| GUNFIGHT MOON               |     388 |
| GUNFIGHTER MUSSOLINI        |     389 |
| HALF OUTFIELD               |     391 |
| HALLOWEEN NUTS              |     393 |
| HAMLET WISDOM               |     394 |
| HANDICAP BOONDOCK           |     395 |
| HANKY OCTOBER               |     397 |
| HANOVER GALAXY              |     398 |
| HAPPINESS UNITED            |     399 |
| HARDLY ROBBERS              |     400 |
| HAROLD FRENCH               |     401 |
| HATE HANDICAP               |     404 |
| HAUNTED ANTITRUST           |     405 |
| HAUNTING PIANIST            |     406 |
| HEAD STRANGER               |     408 |
| HEARTBREAKERS BRIGHT        |     409 |
| HEAVEN FREEDOM              |     410 |
| HEAVYWEIGHTS BEAST          |     412 |
| HELLFIGHTERS SIERRA         |     414 |
| HIGHBALL POTTER             |     416 |
| HILLS NEIGHBORS             |     417 |
| HOLES BRANNIGAN             |     420 |
| HOLIDAY GAMES               |     421 |
| HOLLOW JEOPARDY             |     422 |
| HOLLYWOOD ANONYMOUS         |     423 |
| HOLOCAUST HIGHBALL          |     424 |
| HOMEWARD CIDER              |     427 |
| HOMICIDE PEACH              |     428 |
| HOOK CHARIOTS               |     430 |
| HOOSIERS BIRDCAGE           |     431 |
| HOTEL HAPPINESS             |     435 |
| HOUSE DYNAMITE              |     437 |
| HUMAN GRAFFITI              |     438 |
| HUNCHBACK IMPOSSIBLE        |     439 |
| HUNTING MUSKETEERS          |     442 |
| HURRICANE AFFAIR            |     443 |
| HUSTLER PARTY               |     444 |
| HYSTERICAL GRAIL            |     446 |
| IDENTITY LOVER              |     449 |
| IDOLS SNATCHERS             |     450 |
| ILLUSION AMELIE             |     452 |
| IMAGE PRINCESS              |     453 |
| IMPACT ALADDIN              |     454 |
| IMPOSSIBLE PREJUDICE        |     455 |
| INDEPENDENCE HOTEL          |     457 |
| INFORMER DOUBLE             |     459 |
| INNOCENT USUAL              |     460 |
| INSECTS STONE               |     461 |
| INSIDER ARIZONA             |     462 |
| INSTINCT AIRPORT            |     463 |
| INTENTIONS EMPIRE           |     464 |
| INTERVIEW LIAISONS          |     465 |
| INTOLERABLE INTENTIONS      |     466 |
| INTRIGUE WORST              |     467 |
| INVASION CYCLONE            |     468 |
| ISHTAR ROCKETEER            |     470 |
| ISLAND EXORCIST             |     471 |
| ITALIAN AFRICAN             |     472 |
| JACKET FRISCO               |     473 |
| JAWBREAKER BROOKLYN         |     477 |
| JEEPERS WEDDING             |     480 |
| JEKYLL FROGMEN              |     481 |
| JEOPARDY ENCINO             |     482 |
| JERICHO MULAN               |     483 |
| JERK PAYCHECK               |     484 |
| JET NEIGHBORS               |     486 |
| JINGLE SAGEBRUSH            |     487 |
| JOON NORTHWEST              |     488 |
| JUGGLER HARDLY              |     489 |
| JUMANJI BLADE               |     490 |
| JUMPING WRATH               |     491 |
| JUNGLE CLOSER               |     492 |
| KANE EXORCIST               |     493 |
| KENTUCKIAN GIANT            |     495 |
| KICK SAVANNAH               |     496 |
| KILL BROTHERHOOD            |     497 |
| KILLER INNOCENT             |     498 |
| KING EVOLUTION              |     499 |
| KISSING DOLLS               |     501 |
| KNOCK WARLOCK               |     502 |
| KRAMER CHOCOLATE            |     503 |
| KWAI HOMEWARD               |     504 |
| LABYRINTH LEAGUE            |     505 |
| LADYBUGS ARMAGEDDON         |     507 |
| LAMBS CINCINATTI            |     508 |
| LANGUAGE COWBOY             |     509 |
| LAWLESS VISION              |     510 |
| LAWRENCE LOVE               |     511 |
| LEAGUE HELLFIGHTERS         |     512 |
| LEATHERNECKS DWARFS         |     513 |
| LEBOWSKI SOLDIERS           |     514 |
| LEGALLY SECRETARY           |     515 |
| LESSON CLEOPATRA            |     517 |
| LIAISONS SWEET              |     518 |
| LIBERTY MAGNIFICENT         |     519 |
| LICENSE WEEKEND             |     520 |
| LIES TREATMENT              |     521 |
| LOATHING LEGALLY            |     525 |
| LONELY ELEPHANT             |     529 |
| LOSER HUSTLER               |     532 |
| LOUISIANA HARRY             |     534 |
| LOVE SUICIDES               |     535 |
| LOVELY JINGLE               |     536 |
| LOVERBOY ATTACKS            |     538 |
| MADIGAN DORADO              |     543 |
| MADNESS ATTACKS             |     545 |
| MAGIC MALLRATS              |     547 |
| MAGNIFICENT CHITTY          |     548 |
| MAGNOLIA FORRESTER          |     549 |
| MAGUIRE APACHE              |     550 |
| MAJESTIC FLOATS             |     552 |
| MALKOVICH PET               |     554 |
| MALLRATS UNITED             |     555 |
| MANCHURIAN CURTAIN          |     557 |
| MANNEQUIN WORST             |     558 |
| MASKED BUBBLE               |     562 |
| MASSACRE USUAL              |     563 |
| MASSAGE IMAGE               |     564 |
| MATRIX SNOWMAN              |     565 |
| MEET CHOCOLATE              |     567 |
| MEMENTO ZOOLANDER           |     568 |
| MENAGERIE RUSHMORE          |     569 |
| MERMAID INSECTS             |     570 |
| METAL ARMAGEDDON            |     571 |
| METROPOLIS COMA             |     572 |
| MICROCOSMOS PARADISE        |     573 |
| MIDNIGHT WESTWARD           |     574 |
| MIDSUMMER GROUNDHOG         |     575 |
| MINORITY KISS               |     581 |
| MIRACLE VIRTUAL             |     582 |
| MISSION ZOOLANDER           |     583 |
| MOCKINGBIRD HOLLYWOOD       |     586 |
| MOD SECRETARY               |     587 |
| MODERN DORADO               |     589 |
| MONSOON CAUSE               |     591 |
| MONSTER SPARTACUS           |     592 |
| MONTEREY LABYRINTH          |     593 |
| MONTEZUMA COMMAND           |     594 |
| MOONSHINE CABIN             |     596 |
| MOONWALKER FOOL             |     597 |
| MOSQUITO ARMAGEDDON         |     598 |
| MOTHER OLEANDER             |     599 |
| MOTIONS DETAILS             |     600 |
| MOURNING PURPLE             |     602 |
| MOVIE SHAKESPEARE           |     603 |
| MULHOLLAND BEAST            |     605 |
| MUMMY CREATURES             |     606 |
| MURDER ANTITRUST            |     608 |
| MUSCLE BRIGHT               |     609 |
| MUSIC BOONDOCK              |     610 |
| MUSKETEERS WAIT             |     611 |
| MUSSOLINI SPOILERS          |     612 |
| MYSTIC TRUMAN               |     613 |
| NAME DETECTIVE              |     614 |
| NASH CHOCOLAT               |     615 |
| NATIONAL STORY              |     616 |
| NATURAL STOCK               |     617 |
| NECKLACE OUTBREAK           |     618 |
| NEIGHBORS CHARADE           |     619 |
| NEWSIES STORY               |     622 |
| NEWTON LABYRINTH            |     623 |
| NIGHTMARE CHILL             |     624 |
| NORTH TEQUILA               |     627 |
| NORTHWEST POLISH            |     628 |
| NOTORIOUS REUNION           |     629 |
| NOTTING SPEAKEASY           |     630 |
| NOVOCAINE FLIGHT            |     631 |
| OCTOBER SUBMARINE           |     633 |
| OKLAHOMA JUMANJI            |     635 |
| OLEANDER CLUE               |     636 |
| OPERATION OPERATION         |     638 |
| OPPOSITE NECKLACE           |     639 |
| ORANGE GRAPES               |     641 |
| ORDER BETRAYED              |     642 |
| ORIENT CLOSER               |     643 |
| OUTBREAK DIVINE             |     646 |
| OUTFIELD MASSACRE           |     647 |
| PACIFIC AMISTAD             |     650 |
| PACKER MADIGAN              |     651 |
| PAJAMA JAWBREAKER           |     652 |
| PANKY SUBMARINE             |     654 |
| PAPI NECKLACE               |     656 |
| PARADISE SABRINA            |     657 |
| PARIS WEEKEND               |     658 |
| PAST SUICIDES               |     661 |
| PATHS CONTROL               |     662 |
| PATIENT SISTER              |     663 |
| PATRIOT ROMAN               |     664 |
| PATTON INTERVIEW            |     665 |
| PAYCHECK WAIT               |     666 |
| PEACH INNOCENT              |     667 |
| PEARL DESTINY               |     669 |
| PELICAN COMFORTS            |     670 |
| PERDITION FARGO             |     671 |
| PERFECT GROOVE              |     672 |
| PERSONAL LADYBUGS           |     673 |
| PHANTOM GLORY               |     675 |
| PHILADELPHIA WIFE           |     676 |
| PIANIST OUTFIELD            |     677 |
| PICKUP DRIVING              |     678 |
| PILOT HOOSIERS              |     679 |
| PINOCCHIO SIMON             |     680 |
| PIRATES ROXANNE             |     681 |
| PITTSBURGH HUNCHBACK        |     682 |
| PIZZA JUMANJI               |     684 |
| PLATOON INSTINCT            |     685 |
| PLUTO OLEANDER              |     686 |
| POLISH BROOKLYN             |     688 |
| POLLOCK DELIVERANCE         |     689 |
| POSEIDON FOREVER            |     691 |
| POTLUCK MIXED               |     692 |
| POTTER CONNECTICUT          |     693 |
| PREJUDICE OLEANDER          |     694 |
| PRESIDENT BANG              |     695 |
| PRIMARY GLASS               |     697 |
| PRINCESS GIANT              |     698 |
| PRIX UNDEFEATED             |     700 |
| PSYCHO SHRUNK               |     701 |
| QUEST MUSSOLINI             |     707 |
| RAGING AIRPLANE             |     711 |
| RAIDERS ANTITRUST           |     712 |
| RAINBOW SHOCK               |     713 |
| RANGE MOONWALKER            |     715 |
| REAP UNFAITHFUL             |     716 |
| REBEL AIRPORT               |     718 |
| RECORDS ZORRO               |     719 |
| REDEMPTION COMFORTS         |     720 |
| REIGN GENTLEMEN             |     723 |
| REMEMBER DIARY              |     724 |
| REQUIEM TYCOON              |     725 |
| RESERVOIR ADAPTATION        |     726 |
| RESURRECTION SILVERADO      |     727 |
| REUNION WITCHES             |     728 |
| RIDER CADDYSHACK            |     729 |
| RIDGEMONT SUBMARINE         |     730 |
| RINGS HEARTBREAKERS         |     732 |
| ROBBERY BRIGHT              |     736 |
| ROCK INSTINCT               |     737 |
| ROCKETEER MOTHER            |     738 |
| ROLLERCOASTER BRINGING      |     740 |
| ROOF CHAMPION               |     742 |
| ROOTS REMEMBER              |     744 |
| ROSES TREASURE              |     745 |
| ROXANNE REBEL               |     747 |
| RUGRATS SHAKESPEARE         |     748 |
| RUNAWAY TENENBAUMS          |     751 |
| RUNNER MADIGAN              |     752 |
| RUSH GOODFELLAS             |     753 |
| RUSHMORE MERMAID            |     754 |
| SABRINA MIDNIGHT            |     755 |
| SADDLE ANTITRUST            |     756 |
| SAGEBRUSH CLUELESS          |     757 |
| SALUTE APOLLO               |     759 |
| SATISFACTION CONFIDENTIAL   |     763 |
| SATURDAY LAMBS              |     764 |
| SAVANNAH TOWN               |     766 |
| SCALAWAG DUCK               |     767 |
| SCARFACE BANG               |     768 |
| SCHOOL JACKET               |     769 |
| SCISSORHANDS SLUMS          |     770 |
| SCORPION APOLLO             |     771 |
| SEABISCUIT PUNK             |     773 |
| SEARCHERS WAIT              |     774 |
| SEATTLE EXPECATIONS         |     775 |
| SECRET GROUNDHOG            |     776 |
| SECRETARY ROUGE             |     777 |
| SECRETS PARADISE            |     778 |
| SENSIBILITY REAR            |     780 |
| SHAKESPEARE SADDLE          |     782 |
| SHANE DARKNESS              |     783 |
| SHANGHAI TYCOON             |     784 |
| SHAWSHANK BUBBLE            |     785 |
| SHEPHERD MIDSUMMER          |     786 |
| SHINING ROSES               |     787 |
| SHIP WONDERLAND             |     788 |
| SHOOTIST SUPERFLY           |     790 |
| SHREK LICENSE               |     792 |
| SHRUNK DIVINE               |     793 |
| SIERRA DIVIDE               |     796 |
| SILVERADO GOLDFINGER        |     798 |
| SINNERS ATLANTIS            |     800 |
| SISTER FREDDY               |     801 |
| SLACKER LIAISONS            |     803 |
| SLEEPING SUSPECTS           |     804 |
| SLEEPLESS MONSOON           |     805 |
| SLEEPY JAPANESE             |     806 |
| SLEUTH ORIENT               |     807 |
| SLIPPER FIDELITY            |     809 |
| SMILE EARRING               |     811 |
| SMOKING BARBARELLA          |     812 |
| SMOOCHY CONTROL             |     813 |
| SNATCH SLIPPER              |     814 |
| SNATCHERS MONTEZUMA         |     815 |
| SNOWMAN ROLLERCOASTER       |     816 |
| SOLDIERS EVOLUTION          |     817 |
| SOMETHING DUCK              |     818 |
| SONS INTERVIEW              |     820 |
| SORORITY QUEEN              |     821 |
| SPARTACUS CHEAPER           |     824 |
| SPEAKEASY DATE              |     825 |
| SPICE SORORITY              |     827 |
| SPIKING ELEMENT             |     828 |
| SPIRIT FLINTSTONES          |     830 |
| SPIRITED CASUALTIES         |     831 |
| SPLENDOR PATTON             |     833 |
| SPOILERS HELLFIGHTERS       |     834 |
| STAGECOACH ARMAGEDDON       |     838 |
| STALLION SUNDANCE           |     839 |
| STAMPEDE DISTURBING         |     840 |
| STAR OPERATION              |     841 |
| STATE WASTELAND             |     842 |
| STEERS ARMAGEDDON           |     844 |
| STEPMOM DREAM               |     845 |
| STING PERSONAL              |     846 |
| STORM HAPPINESS             |     849 |
| STRAIGHT HOURS              |     851 |
| STRANGELOVE DESIRE          |     852 |
| STRANGER STRANGERS          |     853 |
| STRANGERS GRAFFITI          |     854 |
| STREAK RIDGEMONT            |     855 |
| STREETCAR INTENTIONS        |     856 |
| STRICTLY SCARFACE           |     857 |
| SUBMARINE BED               |     858 |
| SUICIDES SILENCE            |     860 |
| SUMMER SCARFACE             |     862 |
| SUN CONFESSIONS             |     863 |
| SUNDANCE INVASION           |     864 |
| SUNRISE LEAGUE              |     865 |
| SUPER WYOMING               |     867 |
| SUPERFLY TRIP               |     868 |
| SUSPECTS QUILLS             |     869 |
| SWEDEN SHINING              |     871 |
| SWEET BROTHERHOOD           |     872 |
| SWEETHEARTS SUSPECTS        |     873 |
| TALENTED HOMICIDE           |     875 |
| TARZAN VIDEOTAPE            |     876 |
| TELEGRAPH VOYAGE            |     879 |
| TELEMARK HEARTBREAKERS      |     880 |
| TEMPLE ATTRACTION           |     881 |
| TENENBAUMS COMMAND          |     882 |
| TERMINATOR CLUB             |     884 |
| THEORY MERMAID              |     886 |
| THIEF PELICAN               |     887 |
| THIN SAGEBRUSH              |     888 |
| TIMBERLAND SKY              |     891 |
| TITANIC BOONDOCK            |     892 |
| TOMATOES HELLFIGHTERS       |     894 |
| TOMORROW HUSTLER            |     895 |
| TOOTSIE PILOT               |     896 |
| TOURIST PELICAN             |     898 |
| TOWERS HURRICANE            |     899 |
| TRADING PINOCCHIO           |     902 |
| TRAFFIC HOBBIT              |     903 |
| TRAINSPOTTING STRANGERS     |     905 |
| TRANSLATION SUMMER          |     907 |
| TREASURE COMMAND            |     909 |
| TREATMENT JEKYLL            |     910 |
| TROJAN TOMORROW             |     912 |
| TROOPERS METAL              |     913 |
| TWISTED PIRATES             |     918 |
| TYCOON GATHERING            |     919 |
| UNBREAKABLE KARATE          |     920 |
| UNCUT SUICIDES              |     921 |
| UNDEFEATED DALMATIONS       |     922 |
| UNFAITHFUL KILL             |     923 |
| UNFORGIVEN ZOOLANDER        |     924 |
| UNTOUCHABLES SUNRISE        |     926 |
| UPRISING UPTOWN             |     927 |
| USUAL UNTOUCHABLES          |     929 |
| VACATION BOONDOCK           |     930 |
| VALENTINE VANISHING         |     931 |
| VALLEY PACKER               |     932 |
| VAMPIRE WHALE               |     933 |
| VANISHED GARDEN             |     935 |
| VANISHING ROCKY             |     936 |
| VELVET TERMINATOR           |     938 |
| VERTIGO NORTHWEST           |     939 |
| VICTORY ACADEMY             |     940 |
| VIDEOTAPE ARSENIC           |     941 |
| VIETNAM SMOOCHY             |     942 |
| VILLAIN DESPERATE           |     943 |
| VIRGINIAN PLUTO             |     945 |
| VIRTUAL SPOILERS            |     946 |
| VISION TORQUE               |     947 |
| VOLCANO TEXAS               |     949 |
| VOYAGE LEGALLY              |     951 |
| WANDA CHAMBER               |     956 |
| WARDROBE PHANTOM            |     958 |
| WARLOCK WEREWOLF            |     959 |
| WASH HEAVENLY               |     961 |
| WASTELAND DIVINE            |     962 |
| WATERFRONT DELIVERANCE      |     964 |
| WATERSHIP FRONTIER          |     965 |
| WEDDING APOLLO              |     966 |
| WEEKEND PERSONAL            |     967 |
| WEREWOLF LOLA               |     968 |
| WESTWARD SEABISCUIT         |     970 |
| WHISPERER GIANT             |     972 |
| WISDOM WORKER               |     978 |
| WITCHES PANIC               |     979 |
| WIZARD COLDBLOODED          |     980 |
| WOLVES DESIRE               |     981 |
| WONDERFUL DROP              |     984 |
| WONDERLAND CHRISTMAS        |     985 |
| WORKER TARZAN               |     988 |
| WORKING MICROCOSMOS         |     989 |
| WORLD LEATHERNECKS          |     990 |
| WRONG BEHAVIOR              |     993 |
| WYOMING STORM               |     994 |
| YOUNG LANGUAGE              |     996 |
| ZOOLANDER FICTION           |     999 |
+-----------------------------+---------+
**/
-- Peliculas con un rating de PG o G.
select film_id, title, rating from film where rating IN ('PG', 'G');
/**
+---------+---------------------------+--------+
| film_id | title                     | rating |
+---------+---------------------------+--------+
|       1 | ACADEMY DINOSAUR          | PG     |
|       2 | ACE GOLDFINGER            | G      |
|       4 | AFFAIR PREJUDICE          | G      |
|       5 | AFRICAN EGG               | G      |
|       6 | AGENT TRUMAN              | PG     |
|      11 | ALAMO VIDEOTAPE           | G      |
|      12 | ALASKA PHANTOM            | PG     |
|      13 | ALI FOREVER               | PG     |
|      19 | AMADEUS HOLY              | PG     |
|      22 | AMISTAD MIDSUMMER         | G      |
|      25 | ANGELS LIFE               | G      |
|      26 | ANNIE IDENTITY            | G      |
|      37 | ARIZONA BANG              | PG     |
|      39 | ARMAGEDDON LOST           | G      |
|      41 | ARSENIC INDEPENDENCE      | PG     |
|      43 | ATLANTIS CAUSE            | G      |
|      46 | AUTUMN CROW               | G      |
|      50 | BAKED CLEOPATRA           | G      |
|      52 | BALLROOM MOCKINGBIRD      | G      |
|      55 | BARBARELLA STREETCAR      | G      |
|      56 | BAREFOOT MANCHURIAN       | G      |
|      58 | BEACH HEARTBREAKERS       | G      |
|      61 | BEAUTY GREASE             | G      |
|      63 | BEDAZZLED MARRIED         | PG     |
|      65 | BEHAVIOR RUNAWAY          | PG     |
|      72 | BILL OTHERS               | PG     |
|      74 | BIRCH ANTITRUST           | PG     |
|      75 | BIRD INDEPENDENCE         | G      |
|      77 | BIRDS PERDITION           | G      |
|      78 | BLACKOUT PRIVATE          | PG     |
|      80 | BLANKET BEVERLY           | G      |
|      82 | BLOOD ARGONAUTS           | G      |
|      83 | BLUES INSTINCT            | G      |
|      84 | BOILED DARES              | PG     |
|      85 | BONNIE HOLOCAUST          | G      |
|      88 | BORN SPINAL               | PG     |
|      89 | BORROWERS BEDAZZLED       | G      |
|      91 | BOUND CHEAPER             | PG     |
|      93 | BRANNIGAN SUNRISE         | PG     |
|      95 | BREAKFAST GOLDFINGER      | G      |
|      97 | BRIDE INTRIGUE            | G      |
|      99 | BRINGING HYSTERICAL       | PG     |
|     103 | BUCKET BROTHERHOOD        | PG     |
|     104 | BUGSY SONG                | G      |
|     106 | BULWORTH COMMANDMENTS     | G      |
|     107 | BUNCH MINDS               | G      |
|     109 | BUTTERFLY CHOCOLAT        | G      |
|     119 | CAPER MOTIONS             | G      |
|     121 | CAROL TEXAS               | PG     |
|     122 | CARRIE BUNCH              | PG     |
|     123 | CASABLANCA SUPER          | G      |
|     126 | CASUALTIES ENCINO         | G      |
|     127 | CAT CONEHEADS             | G      |
|     128 | CATCH AMISTAD             | G      |
|     131 | CENTER DINOSAUR           | PG     |
|     132 | CHAINSAW UPTOWN           | PG     |
|     134 | CHAMPION FLATLINERS       | PG     |
|     137 | CHARADE DUFFEL            | PG     |
|     139 | CHASING FIGHT             | PG     |
|     140 | CHEAPER CLYDE             | G      |
|     142 | CHICKEN HELLFIGHTERS      | PG     |
|     143 | CHILL LUCK                | PG     |
|     144 | CHINATOWN GLADIATOR       | PG     |
|     145 | CHISUM BEHAVIOR           | G      |
|     146 | CHITTY LOCK               | G      |
|     150 | CIDER DESIRE              | PG     |
|     153 | CITIZEN SHREK             | G      |
|     154 | CLASH FREDDY              | G      |
|     156 | CLERKS ANGELS             | G      |
|     164 | COAST RAINBOW             | PG     |
|     165 | COLDBLOODED DARLING       | G      |
|     166 | COLOR PHILADELPHIA        | G      |
|     178 | CONNECTION MICROCOSMOS    | G      |
|     179 | CONQUERER NUTS            | G      |
|     182 | CONTROL ANTHEM            | G      |
|     185 | COWBOY DOOM               | PG     |
|     188 | CRAZY HOME                | PG     |
|     193 | CROSSROADS CASUALTIES     | G      |
|     194 | CROW GREASE               | PG     |
|     196 | CRUELTY UNFORGIVEN        | G      |
|     201 | CYCLONE FAMILY            | PG     |
|     202 | DADDY PITTSBURGH          | G      |
|     203 | DAISY MENAGERIE           | G      |
|     204 | DALMATIONS SWEDEN         | PG     |
|     206 | DANCING FEVER             | G      |
|     207 | DANGEROUS UPTOWN          | PG     |
|     212 | DARN FORRESTER            | G      |
|     215 | DAWN POND                 | PG     |
|     216 | DAY UNFAITHFUL            | G      |
|     217 | DAZED PUNK                | G      |
|     224 | DESPERATE TRAINSPOTTING   | G      |
|     226 | DESTINY SATURDAY          | G      |
|     230 | DIARY PANIC               | G      |
|     233 | DISCIPLE MOTHER           | PG     |
|     237 | DIVORCE SHINING           | G      |
|     238 | DOCTOR GRAIL              | G      |
|     239 | DOGMA FAMILY              | G      |
|     247 | DOWNHILL ENOUGH           | G      |
|     249 | DRACULA CRYSTAL           | G      |
|     252 | DREAM PICKUP              | PG     |
|     257 | DRUMLINE CYCLONE          | G      |
|     258 | DRUMS DYNAMITE            | PG     |
|     260 | DUDE BLINDNESS            | G      |
|     261 | DUFFEL APOCALYPSE         | G      |
|     264 | DWARFS ALTER              | G      |
|     265 | DYING MAKER               | PG     |
|     271 | EASY GLADIATOR            | G      |
|     273 | EFFECT GLADIATOR          | PG     |
|     274 | EGG IGBY                  | PG     |
|     275 | EGYPT TENENBAUMS          | PG     |
|     280 | EMPIRE MALKOVICH          | G      |
|     281 | ENCINO ELF                | G      |
|     289 | EVE RESURRECTION          | G      |
|     290 | EVERYONE CRAFT            | PG     |
|     292 | EXCITEMENT EVE            | G      |
|     293 | EXORCIST STING            | G      |
|     295 | EXPENDABLE STALLION       | PG     |
|     297 | EXTRAORDINARY CONQUERER   | G      |
|     302 | FANTASIA PARK             | G      |
|     304 | FARGO GANDHI              | G      |
|     305 | FATAL HAUNTED             | PG     |
|     308 | FERRIS MOTHER             | PG     |
|     311 | FICTION CHRISTMAS         | PG     |
|     313 | FIDELITY DEVIL            | G      |
|     317 | FIREBALL PHILADELPHIA     | PG     |
|     318 | FIREHOUSE VIETNAM         | G      |
|     322 | FLATLINERS KILLER         | G      |
|     327 | FOOL MOCKINGBIRD          | PG     |
|     336 | FRENCH HOLIDAY            | PG     |
|     338 | FRISCO FORREST            | PG     |
|     341 | FROST HEAD                | PG     |
|     343 | FULL FLATLINERS           | PG     |
|     345 | GABLES METROPOLIS         | PG     |
|     350 | GARDEN ISLAND             | G      |
|     351 | GASLIGHT CRUSADE          | PG     |
|     354 | GHOST GROUNDHOG           | G      |
|     357 | GILBERT PELICAN           | G      |
|     359 | GLADIATOR WESTWARD        | PG     |
|     360 | GLASS DYING               | G      |
|     366 | GOLDFINGER SENSIBILITY    | G      |
|     369 | GOODFELLAS SALUTE         | PG     |
|     371 | GOSFORD DONNIE            | G      |
|     373 | GRADUATE LORD             | G      |
|     374 | GRAFFITI LOVE             | PG     |
|     376 | GRAPES FURY               | G      |
|     377 | GREASE YOUTH              | G      |
|     380 | GREEK EVERYONE            | PG     |
|     382 | GRIT CLOCKWORK            | PG     |
|     387 | GUN BONNIE                | G      |
|     396 | HANGING DEEP              | G      |
|     399 | HAPPINESS UNITED          | G      |
|     402 | HARPER DYING              | G      |
|     404 | HATE HANDICAP             | PG     |
|     409 | HEARTBREAKERS BRIGHT      | G      |
|     410 | HEAVEN FREEDOM            | PG     |
|     412 | HEAVYWEIGHTS BEAST        | G      |
|     414 | HELLFIGHTERS SIERRA       | PG     |
|     417 | HILLS NEIGHBORS           | G      |
|     419 | HOCUS FRIDA               | G      |
|     420 | HOLES BRANNIGAN           | PG     |
|     423 | HOLLYWOOD ANONYMOUS       | PG     |
|     430 | HOOK CHARIOTS             | G      |
|     431 | HOOSIERS BIRDCAGE         | G      |
|     433 | HORN WORKING              | PG     |
|     440 | HUNGER ROOF               | G      |
|     443 | HURRICANE AFFAIR          | PG     |
|     445 | HYDE DOCTOR               | G      |
|     446 | HYSTERICAL GRAIL          | PG     |
|     463 | INSTINCT AIRPORT          | PG     |
|     467 | INTRIGUE WORST            | G      |
|     468 | INVASION CYCLONE          | PG     |
|     469 | IRON MOON                 | PG     |
|     472 | ITALIAN AFRICAN           | G      |
|     475 | JAPANESE RUN              | G      |
|     477 | JAWBREAKER BROOKLYN       | PG     |
|     478 | JAWS HARRY                | G      |
|     479 | JEDI BENEATH              | PG     |
|     481 | JEKYLL FROGMEN            | PG     |
|     485 | JERSEY SASSY              | PG     |
|     490 | JUMANJI BLADE             | G      |
|     495 | KENTUCKIAN GIANT          | PG     |
|     497 | KILL BROTHERHOOD          | G      |
|     506 | LADY STAGE                | PG     |
|     510 | LAWLESS VISION            | G      |
|     515 | LEGALLY SECRETARY         | PG     |
|     516 | LEGEND JEDI               | PG     |
|     518 | LIAISONS SWEET            | PG     |
|     519 | LIBERTY MAGNIFICENT       | G      |
|     524 | LION UNCUT                | PG     |
|     527 | LOLA AGENT                | PG     |
|     529 | LONELY ELEPHANT           | G      |
|     532 | LOSER HUSTLER             | PG     |
|     536 | LOVELY JINGLE             | PG     |
|     537 | LOVER TRUMAN              | G      |
|     542 | LUST LOCK                 | G      |
|     547 | MAGIC MALLRATS            | PG     |
|     551 | MAIDEN HOME               | PG     |
|     552 | MAJESTIC FLOATS           | PG     |
|     554 | MALKOVICH PET             | G      |
|     555 | MALLRATS UNITED           | PG     |
|     557 | MANCHURIAN CURTAIN        | PG     |
|     559 | MARRIED GO                | G      |
|     564 | MASSAGE IMAGE             | PG     |
|     567 | MEET CHOCOLATE            | G      |
|     569 | MENAGERIE RUSHMORE        | G      |
|     574 | MIDNIGHT WESTWARD         | G      |
|     575 | MIDSUMMER GROUNDHOG       | G      |
|     576 | MIGHTY LUCK               | PG     |
|     577 | MILE MULAN                | PG     |
|     581 | MINORITY KISS             | G      |
|     585 | MOB DUFFEL                | G      |
|     586 | MOCKINGBIRD HOLLYWOOD     | PG     |
|     589 | MODERN DORADO             | PG     |
|     590 | MONEY HAROLD              | PG     |
|     591 | MONSOON CAUSE             | PG     |
|     592 | MONSTER SPARTACUS         | PG     |
|     593 | MONTEREY LABYRINTH        | G      |
|     595 | MOON BUNCH                | PG     |
|     597 | MOONWALKER FOOL           | G      |
|     598 | MOSQUITO ARMAGEDDON       | G      |
|     600 | MOTIONS DETAILS           | PG     |
|     602 | MOURNING PURPLE           | PG     |
|     603 | MOVIE SHAKESPEARE         | PG     |
|     604 | MULAN MOON                | G      |
|     605 | MULHOLLAND BEAST          | PG     |
|     607 | MUPPET MILE               | PG     |
|     608 | MURDER ANTITRUST          | PG     |
|     609 | MUSCLE BRIGHT             | G      |
|     611 | MUSKETEERS WAIT           | PG     |
|     612 | MUSSOLINI SPOILERS        | G      |
|     618 | NECKLACE OUTBREAK         | PG     |
|     622 | NEWSIES STORY             | G      |
|     623 | NEWTON LABYRINTH          | PG     |
|     624 | NIGHTMARE CHILL           | PG     |
|     626 | NOON PAPI                 | G      |
|     628 | NORTHWEST POLISH          | PG     |
|     631 | NOVOCAINE FLIGHT          | G      |
|     635 | OKLAHOMA JUMANJI          | PG     |
|     636 | OLEANDER CLUE             | PG     |
|     637 | OPEN AFRICAN              | PG     |
|     638 | OPERATION OPERATION       | G      |
|     639 | OPPOSITE NECKLACE         | PG     |
|     644 | OSCAR GOLD                | PG     |
|     645 | OTHERS SOUP               | PG     |
|     650 | PACIFIC AMISTAD           | G      |
|     653 | PANIC CLUB                | G      |
|     654 | PANKY SUBMARINE           | G      |
|     656 | PAPI NECKLACE             | PG     |
|     660 | PARTY KNOCK               | PG     |
|     662 | PATHS CONTROL             | PG     |
|     664 | PATRIOT ROMAN             | PG     |
|     665 | PATTON INTERVIEW          | PG     |
|     668 | PEAK FOREVER              | PG     |
|     670 | PELICAN COMFORTS          | PG     |
|     674 | PET HAUNTING              | PG     |
|     678 | PICKUP DRIVING            | G      |
|     679 | PILOT HOOSIERS            | PG     |
|     680 | PINOCCHIO SIMON           | PG     |
|     681 | PIRATES ROXANNE           | PG     |
|     688 | POLISH BROOKLYN           | PG     |
|     689 | POLLOCK DELIVERANCE       | PG     |
|     692 | POTLUCK MIXED             | G      |
|     693 | POTTER CONNECTICUT        | PG     |
|     695 | PRESIDENT BANG            | PG     |
|     697 | PRIMARY GLASS             | G      |
|     699 | PRIVATE DROP              | PG     |
|     702 | PULP BEVERLY              | G      |
|     703 | PUNK DIVORCE              | PG     |
|     706 | QUEEN LUKE                | PG     |
|     713 | RAINBOW SHOCK             | PG     |
|     715 | RANGE MOONWALKER          | PG     |
|     718 | REBEL AIRPORT             | G      |
|     719 | RECORDS ZORRO             | PG     |
|     727 | RESURRECTION SILVERADO    | PG     |
|     729 | RIDER CADDYSHACK          | PG     |
|     732 | RINGS HEARTBREAKERS       | G      |
|     737 | ROCK INSTINCT             | G      |
|     743 | ROOM ROMAN                | PG     |
|     753 | RUSH GOODFELLAS           | PG     |
|     755 | SABRINA MIDNIGHT          | PG     |
|     757 | SAGEBRUSH CLUELESS        | G      |
|     758 | SAINTS BRIDE              | G      |
|     760 | SAMURAI LION              | G      |
|     761 | SANTA PARIS               | PG     |
|     762 | SASSY PACKER              | G      |
|     763 | SATISFACTION CONFIDENTIAL | G      |
|     764 | SATURDAY LAMBS            | G      |
|     770 | SCISSORHANDS SLUMS        | G      |
|     772 | SEA VIRGIN                | PG     |
|     776 | SECRET GROUNDHOG          | PG     |
|     777 | SECRETARY ROUGE           | PG     |
|     778 | SECRETS PARADISE          | G      |
|     780 | SENSIBILITY REAR          | PG     |
|     783 | SHANE DARKNESS            | PG     |
|     784 | SHANGHAI TYCOON           | PG     |
|     785 | SHAWSHANK BUBBLE          | PG     |
|     787 | SHINING ROSES             | G      |
|     794 | SIDE ARK                  | G      |
|     798 | SILVERADO GOLDFINGER      | PG     |
|     802 | SKY MIRACLE               | PG     |
|     805 | SLEEPLESS MONSOON         | G      |
|     806 | SLEEPY JAPANESE           | PG     |
|     810 | SLUMS DUCK                | PG     |
|     811 | SMILE EARRING             | G      |
|     814 | SNATCH SLIPPER            | PG     |
|     816 | SNOWMAN ROLLERCOASTER     | G      |
|     828 | SPIKING ELEMENT           | G      |
|     832 | SPLASH GUMP               | PG     |
|     834 | SPOILERS HELLFIGHTERS     | G      |
|     836 | SQUAD FISH                | PG     |
|     837 | STAGE WORLD               | PG     |
|     841 | STAR OPERATION            | PG     |
|     844 | STEERS ARMAGEDDON         | PG     |
|     847 | STOCK GLASS               | PG     |
|     848 | STONE FIRE                | G      |
|     853 | STRANGER STRANGERS        | G      |
|     859 | SUGAR WONKA               | PG     |
|     860 | SUICIDES SILENCE          | G      |
|     862 | SUMMER SCARFACE           | G      |
|     867 | SUPER WYOMING             | PG     |
|     868 | SUPERFLY TRIP             | PG     |
|     869 | SUSPECTS QUILLS           | PG     |
|     871 | SWEDEN SHINING            | PG     |
|     873 | SWEETHEARTS SUSPECTS      | G      |
|     874 | TADPOLE PARK              | PG     |
|     875 | TALENTED HOMICIDE         | PG     |
|     878 | TEEN APOLLO               | G      |
|     879 | TELEGRAPH VOYAGE          | PG     |
|     881 | TEMPLE ATTRACTION         | PG     |
|     883 | TEQUILA PAST              | PG     |
|     891 | TIMBERLAND SKY            | G      |
|     893 | TITANS JERK               | PG     |
|     894 | TOMATOES HELLFIGHTERS     | PG     |
|     896 | TOOTSIE PILOT             | PG     |
|     897 | TORQUE BOUND              | G      |
|     901 | TRACY CIDER               | G      |
|     902 | TRADING PINOCCHIO         | PG     |
|     903 | TRAFFIC HOBBIT            | G      |
|     906 | TRAMP OTHERS              | PG     |
|     908 | TRAP GUYS                 | G      |
|     910 | TREATMENT JEKYLL          | PG     |
|     912 | TROJAN TOMORROW           | PG     |
|     914 | TROUBLE DATE              | PG     |
|     915 | TRUMAN CRAZY              | G      |
|     916 | TURN STAR                 | G      |
|     918 | TWISTED PIRATES           | PG     |
|     919 | TYCOON GATHERING          | G      |
|     920 | UNBREAKABLE KARATE        | G      |
|     924 | UNFORGIVEN ZOOLANDER      | PG     |
|     928 | UPTOWN YOUNG              | PG     |
|     932 | VALLEY PACKER             | G      |
|     950 | VOLUME HOUSE              | PG     |
|     952 | WAGON JAWS                | PG     |
|     954 | WAKE JAWS                 | G      |
|     955 | WALLS ARTIST              | PG     |
|     957 | WAR NOTTING               | G      |
|     958 | WARDROBE PHANTOM          | G      |
|     959 | WARLOCK WEREWOLF          | G      |
|     960 | WARS PLUTO                | G      |
|     962 | WASTELAND DIVINE          | PG     |
|     963 | WATCH TRACY               | PG     |
|     964 | WATERFRONT DELIVERANCE    | G      |
|     965 | WATERSHIP FRONTIER        | G      |
|     966 | WEDDING APOLLO            | PG     |
|     968 | WEREWOLF LOLA             | G      |
|     969 | WEST LION                 | G      |
|     980 | WIZARD COLDBLOODED        | PG     |
|     983 | WON DARES                 | PG     |
|     985 | WONDERLAND CHRISTMAS      | PG     |
|     987 | WORDS HUNTER              | PG     |
|     991 | WORST BANGER              | PG     |
|     996 | YOUNG LANGUAGE            | G      |
+---------+---------------------------+--------+
**/
-- Peliculas que no tengan un rating de NC-17.
select film_id, title, rating from film where rating<>'NC-17';
/**
+---------+-----------------------------+--------+
| film_id | title                       | rating |
+---------+-----------------------------+--------+
|       1 | ACADEMY DINOSAUR            | PG     |
|       2 | ACE GOLDFINGER              | G      |
|       4 | AFFAIR PREJUDICE            | G      |
|       5 | AFRICAN EGG                 | G      |
|       6 | AGENT TRUMAN                | PG     |
|       7 | AIRPLANE SIERRA             | PG-13  |
|       8 | AIRPORT POLLOCK             | R      |
|       9 | ALABAMA DEVIL               | PG-13  |
|      11 | ALAMO VIDEOTAPE             | G      |
|      12 | ALASKA PHANTOM              | PG     |
|      13 | ALI FOREVER                 | PG     |
|      17 | ALONE TRIP                  | R      |
|      18 | ALTER VICTORY               | PG-13  |
|      19 | AMADEUS HOLY                | PG     |
|      20 | AMELIE HELLFIGHTERS         | R      |
|      21 | AMERICAN CIRCUS             | R      |
|      22 | AMISTAD MIDSUMMER           | G      |
|      23 | ANACONDA CONFESSIONS        | R      |
|      24 | ANALYZE HOOSIERS            | R      |
|      25 | ANGELS LIFE                 | G      |
|      26 | ANNIE IDENTITY              | G      |
|      28 | ANTHEM LUKE                 | PG-13  |
|      30 | ANYTHING SAVANNAH           | R      |
|      32 | APOCALYPSE FLAMINGOS        | R      |
|      33 | APOLLO TEEN                 | PG-13  |
|      35 | ARACHNOPHOBIA ROLLERCOASTER | PG-13  |
|      36 | ARGONAUTS TOWN              | PG-13  |
|      37 | ARIZONA BANG                | PG     |
|      39 | ARMAGEDDON LOST             | G      |
|      40 | ARMY FLINTSTONES            | R      |
|      41 | ARSENIC INDEPENDENCE        | PG     |
|      43 | ATLANTIS CAUSE              | G      |
|      44 | ATTACKS HATE                | PG-13  |
|      45 | ATTRACTION NEWTON           | PG-13  |
|      46 | AUTUMN CROW                 | G      |
|      48 | BACKLASH UNDEFEATED         | PG-13  |
|      49 | BADMAN DAWN                 | R      |
|      50 | BAKED CLEOPATRA             | G      |
|      52 | BALLROOM MOCKINGBIRD        | G      |
|      54 | BANGER PINOCCHIO            | R      |
|      55 | BARBARELLA STREETCAR        | G      |
|      56 | BAREFOOT MANCHURIAN         | G      |
|      57 | BASIC EASY                  | PG-13  |
|      58 | BEACH HEARTBREAKERS         | G      |
|      59 | BEAR GRACELAND              | R      |
|      60 | BEAST HUNCHBACK             | R      |
|      61 | BEAUTY GREASE               | G      |
|      63 | BEDAZZLED MARRIED           | PG     |
|      64 | BEETHOVEN EXORCIST          | PG-13  |
|      65 | BEHAVIOR RUNAWAY            | PG     |
|      67 | BERETS AGENT                | PG-13  |
|      69 | BEVERLY OUTLAW              | R      |
|      71 | BILKO ANONYMOUS             | PG-13  |
|      72 | BILL OTHERS                 | PG     |
|      73 | BINGO TALENTED              | PG-13  |
|      74 | BIRCH ANTITRUST             | PG     |
|      75 | BIRD INDEPENDENCE           | G      |
|      77 | BIRDS PERDITION             | G      |
|      78 | BLACKOUT PRIVATE            | PG     |
|      79 | BLADE POLISH                | PG-13  |
|      80 | BLANKET BEVERLY             | G      |
|      81 | BLINDNESS GUN               | PG-13  |
|      82 | BLOOD ARGONAUTS             | G      |
|      83 | BLUES INSTINCT              | G      |
|      84 | BOILED DARES                | PG     |
|      85 | BONNIE HOLOCAUST            | G      |
|      86 | BOOGIE AMELIE               | R      |
|      88 | BORN SPINAL                 | PG     |
|      89 | BORROWERS BEDAZZLED         | G      |
|      90 | BOULEVARD MOB               | R      |
|      91 | BOUND CHEAPER               | PG     |
|      93 | BRANNIGAN SUNRISE           | PG     |
|      94 | BRAVEHEART HUMAN            | PG-13  |
|      95 | BREAKFAST GOLDFINGER        | G      |
|      96 | BREAKING HOME               | PG-13  |
|      97 | BRIDE INTRIGUE              | G      |
|      98 | BRIGHT ENCOUNTERS           | PG-13  |
|      99 | BRINGING HYSTERICAL         | PG     |
|     100 | BROOKLYN DESERT             | R      |
|     101 | BROTHERHOOD BLANKET         | R      |
|     102 | BUBBLE GROSSE               | R      |
|     103 | BUCKET BROTHERHOOD          | PG     |
|     104 | BUGSY SONG                  | G      |
|     106 | BULWORTH COMMANDMENTS       | G      |
|     107 | BUNCH MINDS                 | G      |
|     108 | BUTCH PANTHER               | PG-13  |
|     109 | BUTTERFLY CHOCOLAT          | G      |
|     115 | CAMPUS REMEMBER             | R      |
|     116 | CANDIDATE PERDITION         | R      |
|     118 | CANYON STOCK                | R      |
|     119 | CAPER MOTIONS               | G      |
|     121 | CAROL TEXAS                 | PG     |
|     122 | CARRIE BUNCH                | PG     |
|     123 | CASABLANCA SUPER            | G      |
|     124 | CASPER DRAGONFLY            | PG-13  |
|     126 | CASUALTIES ENCINO           | G      |
|     127 | CAT CONEHEADS               | G      |
|     128 | CATCH AMISTAD               | G      |
|     129 | CAUSE DATE                  | R      |
|     130 | CELEBRITY HORN              | PG-13  |
|     131 | CENTER DINOSAUR             | PG     |
|     132 | CHAINSAW UPTOWN             | PG     |
|     134 | CHAMPION FLATLINERS         | PG     |
|     135 | CHANCE RESURRECTION         | R      |
|     137 | CHARADE DUFFEL              | PG     |
|     138 | CHARIOTS CONSPIRACY         | R      |
|     139 | CHASING FIGHT               | PG     |
|     140 | CHEAPER CLYDE               | G      |
|     141 | CHICAGO NORTH               | PG-13  |
|     142 | CHICKEN HELLFIGHTERS        | PG     |
|     143 | CHILL LUCK                  | PG     |
|     144 | CHINATOWN GLADIATOR         | PG     |
|     145 | CHISUM BEHAVIOR             | G      |
|     146 | CHITTY LOCK                 | G      |
|     148 | CHOCOLATE DUCK              | R      |
|     150 | CIDER DESIRE                | PG     |
|     152 | CIRCUS YOUTH                | PG-13  |
|     153 | CITIZEN SHREK               | G      |
|     154 | CLASH FREDDY                | G      |
|     155 | CLEOPATRA DEVIL             | PG-13  |
|     156 | CLERKS ANGELS               | G      |
|     157 | CLOCKWORK PARADISE          | PG-13  |
|     158 | CLONES PINOCCHIO            | R      |
|     159 | CLOSER BANG                 | R      |
|     160 | CLUB GRAFFITI               | PG-13  |
|     162 | CLUELESS BUCKET             | R      |
|     163 | CLYDE THEORY                | PG-13  |
|     164 | COAST RAINBOW               | PG     |
|     165 | COLDBLOODED DARLING         | G      |
|     166 | COLOR PHILADELPHIA          | G      |
|     168 | COMANCHEROS ENEMY           | R      |
|     170 | COMMAND DARLING             | PG-13  |
|     171 | COMMANDMENTS EXPRESS        | R      |
|     173 | CONFESSIONS MAGUIRE         | PG-13  |
|     175 | CONFUSED CANDLES            | PG-13  |
|     176 | CONGENIALITY QUEST          | PG-13  |
|     177 | CONNECTICUT TRAMP           | R      |
|     178 | CONNECTION MICROCOSMOS      | G      |
|     179 | CONQUERER NUTS              | G      |
|     180 | CONSPIRACY SPIRIT           | PG-13  |
|     181 | CONTACT ANONYMOUS           | PG-13  |
|     182 | CONTROL ANTHEM              | G      |
|     183 | CONVERSATION DOWNHILL       | R      |
|     184 | CORE SUIT                   | PG-13  |
|     185 | COWBOY DOOM                 | PG     |
|     188 | CRAZY HOME                  | PG     |
|     191 | CROOKED FROGMEN             | PG-13  |
|     192 | CROSSING DIVORCE            | R      |
|     193 | CROSSROADS CASUALTIES       | G      |
|     194 | CROW GREASE                 | PG     |
|     195 | CROWDS TELEMARK             | R      |
|     196 | CRUELTY UNFORGIVEN          | G      |
|     197 | CRUSADE HONEY               | R      |
|     199 | CUPBOARD SINNERS            | R      |
|     200 | CURTAIN VIDEOTAPE           | PG-13  |
|     201 | CYCLONE FAMILY              | PG     |
|     202 | DADDY PITTSBURGH            | G      |
|     203 | DAISY MENAGERIE             | G      |
|     204 | DALMATIONS SWEDEN           | PG     |
|     206 | DANCING FEVER               | G      |
|     207 | DANGEROUS UPTOWN            | PG     |
|     208 | DARES PLUTO                 | PG-13  |
|     211 | DARLING BREAKING            | PG-13  |
|     212 | DARN FORRESTER              | G      |
|     213 | DATE SPEED                  | R      |
|     214 | DAUGHTER MADIGAN            | PG-13  |
|     215 | DAWN POND                   | PG     |
|     216 | DAY UNFAITHFUL              | G      |
|     217 | DAZED PUNK                  | G      |
|     219 | DEEP CRUSADE                | PG-13  |
|     221 | DELIVERANCE MULHOLLAND      | R      |
|     222 | DESERT POSEIDON             | R      |
|     224 | DESPERATE TRAINSPOTTING     | G      |
|     225 | DESTINATION JERK            | PG-13  |
|     226 | DESTINY SATURDAY            | G      |
|     227 | DETAILS PACKER              | R      |
|     228 | DETECTIVE VISION            | PG-13  |
|     229 | DEVIL DESIRE                | R      |
|     230 | DIARY PANIC                 | G      |
|     231 | DINOSAUR SECRETARY          | R      |
|     233 | DISCIPLE MOTHER             | PG     |
|     234 | DISTURBING SCARFACE         | R      |
|     235 | DIVIDE MONSTER              | PG-13  |
|     236 | DIVINE RESURRECTION         | R      |
|     237 | DIVORCE SHINING             | G      |
|     238 | DOCTOR GRAIL                | G      |
|     239 | DOGMA FAMILY                | G      |
|     240 | DOLLS RAGE                  | PG-13  |
|     242 | DOOM DANCING                | R      |
|     245 | DOUBLE WRATH                | R      |
|     246 | DOUBTFIRE LABYRINTH         | R      |
|     247 | DOWNHILL ENOUGH             | G      |
|     249 | DRACULA CRYSTAL             | G      |
|     252 | DREAM PICKUP                | PG     |
|     253 | DRIFTER COMMANDMENTS        | PG-13  |
|     254 | DRIVER ANNIE                | PG-13  |
|     256 | DROP WATERFRONT             | R      |
|     257 | DRUMLINE CYCLONE            | G      |
|     258 | DRUMS DYNAMITE              | PG     |
|     260 | DUDE BLINDNESS              | G      |
|     261 | DUFFEL APOCALYPSE           | G      |
|     263 | DURHAM PANKY                | R      |
|     264 | DWARFS ALTER                | G      |
|     265 | DYING MAKER                 | PG     |
|     266 | DYNAMITE TARZAN             | PG-13  |
|     269 | EARRING INSTINCT            | R      |
|     271 | EASY GLADIATOR              | G      |
|     273 | EFFECT GLADIATOR            | PG     |
|     274 | EGG IGBY                    | PG     |
|     275 | EGYPT TENENBAUMS            | PG     |
|     277 | ELEPHANT TROJAN             | PG-13  |
|     280 | EMPIRE MALKOVICH            | G      |
|     281 | ENCINO ELF                  | G      |
|     285 | ENGLISH BULWORTH            | PG-13  |
|     287 | ENTRAPMENT SATISFACTION     | R      |
|     288 | ESCAPE METROPOLIS           | R      |
|     289 | EVE RESURRECTION            | G      |
|     290 | EVERYONE CRAFT              | PG     |
|     291 | EVOLUTION ALTER             | PG-13  |
|     292 | EXCITEMENT EVE              | G      |
|     293 | EXORCIST STING              | G      |
|     294 | EXPECATIONS NATURAL         | PG-13  |
|     295 | EXPENDABLE STALLION         | PG     |
|     296 | EXPRESS LONELY              | R      |
|     297 | EXTRAORDINARY CONQUERER     | G      |
|     298 | EYES DRIVING                | PG-13  |
|     299 | FACTORY DRAGON              | PG-13  |
|     300 | FALCON VOLUME               | PG-13  |
|     301 | FAMILY SWEET                | R      |
|     302 | FANTASIA PARK               | G      |
|     303 | FANTASY TROOPERS            | PG-13  |
|     304 | FARGO GANDHI                | G      |
|     305 | FATAL HAUNTED               | PG     |
|     306 | FEATHERS METAL              | PG-13  |
|     308 | FERRIS MOTHER               | PG     |
|     309 | FEUD FROGMEN                | R      |
|     310 | FEVER EMPIRE                | R      |
|     311 | FICTION CHRISTMAS           | PG     |
|     312 | FIDDLER LOST                | R      |
|     313 | FIDELITY DEVIL              | G      |
|     314 | FIGHT JAWBREAKER            | R      |
|     315 | FINDING ANACONDA            | R      |
|     316 | FIRE WOLVES                 | R      |
|     317 | FIREBALL PHILADELPHIA       | PG     |
|     318 | FIREHOUSE VIETNAM           | G      |
|     319 | FISH OPUS                   | R      |
|     320 | FLAMINGOS CONNECTICUT       | PG-13  |
|     322 | FLATLINERS KILLER           | G      |
|     323 | FLIGHT LIES                 | R      |
|     324 | FLINTSTONES HAPPINESS       | PG-13  |
|     325 | FLOATS GARDEN               | PG-13  |
|     327 | FOOL MOCKINGBIRD            | PG     |
|     329 | FORREST SONS                | R      |
|     333 | FREAKY POCUS                | R      |
|     335 | FREEDOM CLEOPATRA           | PG-13  |
|     336 | FRENCH HOLIDAY              | PG     |
|     337 | FRIDA SLIPPER               | R      |
|     338 | FRISCO FORREST              | PG     |
|     339 | FROGMEN BREAKING            | R      |
|     340 | FRONTIER CABIN              | PG-13  |
|     341 | FROST HEAD                  | PG     |
|     342 | FUGITIVE MAGUIRE            | R      |
|     343 | FULL FLATLINERS             | PG     |
|     344 | FURY MURDER                 | PG-13  |
|     345 | GABLES METROPOLIS           | PG     |
|     346 | GALAXY SWEETHEARTS          | R      |
|     347 | GAMES BOWFINGER             | PG-13  |
|     348 | GANDHI KWAI                 | PG-13  |
|     349 | GANGS PRIDE                 | PG-13  |
|     350 | GARDEN ISLAND               | G      |
|     351 | GASLIGHT CRUSADE            | PG     |
|     352 | GATHERING CALENDAR          | PG-13  |
|     354 | GHOST GROUNDHOG             | G      |
|     355 | GHOSTBUSTERS ELF            | R      |
|     356 | GIANT TROOPERS              | R      |
|     357 | GILBERT PELICAN             | G      |
|     358 | GILMORE BOILED              | R      |
|     359 | GLADIATOR WESTWARD          | PG     |
|     360 | GLASS DYING                 | G      |
|     362 | GLORY TRACY                 | PG-13  |
|     363 | GO PURPLE                   | R      |
|     365 | GOLD RIVER                  | R      |
|     366 | GOLDFINGER SENSIBILITY      | G      |
|     367 | GOLDMINE TYCOON             | R      |
|     368 | GONE TROUBLE                | R      |
|     369 | GOODFELLAS SALUTE           | PG     |
|     370 | GORGEOUS BINGO              | R      |
|     371 | GOSFORD DONNIE              | G      |
|     372 | GRACELAND DYNAMITE          | R      |
|     373 | GRADUATE LORD               | G      |
|     374 | GRAFFITI LOVE               | PG     |
|     376 | GRAPES FURY                 | G      |
|     377 | GREASE YOUTH                | G      |
|     379 | GREEDY ROOTS                | R      |
|     380 | GREEK EVERYONE              | PG     |
|     381 | GRINCH MASSAGE              | R      |
|     382 | GRIT CLOCKWORK              | PG     |
|     384 | GROSSE WONDERFUL            | R      |
|     385 | GROUNDHOG UNCUT             | PG-13  |
|     387 | GUN BONNIE                  | G      |
|     389 | GUNFIGHTER MUSSOLINI        | PG-13  |
|     390 | GUYS FALCON                 | R      |
|     391 | HALF OUTFIELD               | PG-13  |
|     393 | HALLOWEEN NUTS              | PG-13  |
|     394 | HAMLET WISDOM               | R      |
|     395 | HANDICAP BOONDOCK           | R      |
|     396 | HANGING DEEP                | G      |
|     399 | HAPPINESS UNITED            | G      |
|     400 | HARDLY ROBBERS              | R      |
|     402 | HARPER DYING                | G      |
|     403 | HARRY IDAHO                 | PG-13  |
|     404 | HATE HANDICAP               | PG     |
|     406 | HAUNTING PIANIST            | R      |
|     407 | HAWK CHILL                  | PG-13  |
|     408 | HEAD STRANGER               | R      |
|     409 | HEARTBREAKERS BRIGHT        | G      |
|     410 | HEAVEN FREEDOM              | PG     |
|     412 | HEAVYWEIGHTS BEAST          | G      |
|     414 | HELLFIGHTERS SIERRA         | PG     |
|     415 | HIGH ENCINO                 | R      |
|     416 | HIGHBALL POTTER             | R      |
|     417 | HILLS NEIGHBORS             | G      |
|     418 | HOBBIT ALIEN                | PG-13  |
|     419 | HOCUS FRIDA                 | G      |
|     420 | HOLES BRANNIGAN             | PG     |
|     421 | HOLIDAY GAMES               | PG-13  |
|     423 | HOLLYWOOD ANONYMOUS         | PG     |
|     424 | HOLOCAUST HIGHBALL          | R      |
|     425 | HOLY TADPOLE                | R      |
|     426 | HOME PITY                   | R      |
|     427 | HOMEWARD CIDER              | R      |
|     428 | HOMICIDE PEACH              | PG-13  |
|     429 | HONEY TIES                  | R      |
|     430 | HOOK CHARIOTS               | G      |
|     431 | HOOSIERS BIRDCAGE           | G      |
|     433 | HORN WORKING                | PG     |
|     434 | HORROR REIGN                | R      |
|     435 | HOTEL HAPPINESS             | PG-13  |
|     437 | HOUSE DYNAMITE              | R      |
|     439 | HUNCHBACK IMPOSSIBLE        | PG-13  |
|     440 | HUNGER ROOF                 | G      |
|     441 | HUNTER ALTER                | PG-13  |
|     443 | HURRICANE AFFAIR            | PG     |
|     445 | HYDE DOCTOR                 | G      |
|     446 | HYSTERICAL GRAIL            | PG     |
|     447 | ICE CROSSING                | R      |
|     448 | IDAHO LOVE                  | PG-13  |
|     449 | IDENTITY LOVER              | PG-13  |
|     452 | ILLUSION AMELIE             | R      |
|     453 | IMAGE PRINCESS              | PG-13  |
|     454 | IMPACT ALADDIN              | PG-13  |
|     460 | INNOCENT USUAL              | PG-13  |
|     463 | INSTINCT AIRPORT            | PG     |
|     464 | INTENTIONS EMPIRE           | PG-13  |
|     465 | INTERVIEW LIAISONS          | R      |
|     466 | INTOLERABLE INTENTIONS      | PG-13  |
|     467 | INTRIGUE WORST              | G      |
|     468 | INVASION CYCLONE            | PG     |
|     469 | IRON MOON                   | PG     |
|     470 | ISHTAR ROCKETEER            | R      |
|     472 | ITALIAN AFRICAN             | G      |
|     473 | JACKET FRISCO               | PG-13  |
|     475 | JAPANESE RUN                | G      |
|     477 | JAWBREAKER BROOKLYN         | PG     |
|     478 | JAWS HARRY                  | G      |
|     479 | JEDI BENEATH                | PG     |
|     480 | JEEPERS WEDDING             | R      |
|     481 | JEKYLL FROGMEN              | PG     |
|     482 | JEOPARDY ENCINO             | R      |
|     485 | JERSEY SASSY                | PG     |
|     486 | JET NEIGHBORS               | R      |
|     487 | JINGLE SAGEBRUSH            | PG-13  |
|     489 | JUGGLER HARDLY              | PG-13  |
|     490 | JUMANJI BLADE               | G      |
|     493 | KANE EXORCIST               | R      |
|     494 | KARATE MOON                 | PG-13  |
|     495 | KENTUCKIAN GIANT            | PG     |
|     496 | KICK SAVANNAH               | PG-13  |
|     497 | KILL BROTHERHOOD            | G      |
|     498 | KILLER INNOCENT             | R      |
|     500 | KISS GLORY                  | PG-13  |
|     501 | KISSING DOLLS               | R      |
|     502 | KNOCK WARLOCK               | PG-13  |
|     503 | KRAMER CHOCOLATE            | R      |
|     504 | KWAI HOMEWARD               | PG-13  |
|     505 | LABYRINTH LEAGUE            | PG-13  |
|     506 | LADY STAGE                  | PG     |
|     508 | LAMBS CINCINATTI            | PG-13  |
|     510 | LAWLESS VISION              | G      |
|     512 | LEAGUE HELLFIGHTERS         | PG-13  |
|     513 | LEATHERNECKS DWARFS         | PG-13  |
|     514 | LEBOWSKI SOLDIERS           | PG-13  |
|     515 | LEGALLY SECRETARY           | PG     |
|     516 | LEGEND JEDI                 | PG     |
|     518 | LIAISONS SWEET              | PG     |
|     519 | LIBERTY MAGNIFICENT         | G      |
|     523 | LIGHTS DEER                 | R      |
|     524 | LION UNCUT                  | PG     |
|     525 | LOATHING LEGALLY            | R      |
|     526 | LOCK REAR                   | R      |
|     527 | LOLA AGENT                  | PG     |
|     529 | LONELY ELEPHANT             | G      |
|     530 | LORD ARIZONA                | PG-13  |
|     531 | LOSE INCH                   | R      |
|     532 | LOSER HUSTLER               | PG     |
|     533 | LOST BIRD                   | PG-13  |
|     534 | LOUISIANA HARRY             | PG-13  |
|     535 | LOVE SUICIDES               | R      |
|     536 | LOVELY JINGLE               | PG     |
|     537 | LOVER TRUMAN                | G      |
|     538 | LOVERBOY ATTACKS            | PG-13  |
|     540 | LUCKY FLYING                | PG-13  |
|     542 | LUST LOCK                   | G      |
|     543 | MADIGAN DORADO              | R      |
|     544 | MADISON TRAP                | R      |
|     545 | MADNESS ATTACKS             | PG-13  |
|     546 | MADRE GABLES                | PG-13  |
|     547 | MAGIC MALLRATS              | PG     |
|     548 | MAGNIFICENT CHITTY          | R      |
|     549 | MAGNOLIA FORRESTER          | PG-13  |
|     551 | MAIDEN HOME                 | PG     |
|     552 | MAJESTIC FLOATS             | PG     |
|     553 | MAKER GABLES                | PG-13  |
|     554 | MALKOVICH PET               | G      |
|     555 | MALLRATS UNITED             | PG     |
|     556 | MALTESE HOPE                | PG-13  |
|     557 | MANCHURIAN CURTAIN          | PG     |
|     558 | MANNEQUIN WORST             | PG-13  |
|     559 | MARRIED GO                  | G      |
|     562 | MASKED BUBBLE               | PG-13  |
|     563 | MASSACRE USUAL              | R      |
|     564 | MASSAGE IMAGE               | PG     |
|     565 | MATRIX SNOWMAN              | PG-13  |
|     566 | MAUDE MOD                   | R      |
|     567 | MEET CHOCOLATE              | G      |
|     569 | MENAGERIE RUSHMORE          | G      |
|     571 | METAL ARMAGEDDON            | PG-13  |
|     572 | METROPOLIS COMA             | PG-13  |
|     573 | MICROCOSMOS PARADISE        | PG-13  |
|     574 | MIDNIGHT WESTWARD           | G      |
|     575 | MIDSUMMER GROUNDHOG         | G      |
|     576 | MIGHTY LUCK                 | PG     |
|     577 | MILE MULAN                  | PG     |
|     578 | MILLION ACE                 | PG-13  |
|     579 | MINDS TRUMAN                | PG-13  |
|     580 | MINE TITANS                 | PG-13  |
|     581 | MINORITY KISS               | G      |
|     582 | MIRACLE VIRTUAL             | PG-13  |
|     583 | MISSION ZOOLANDER           | PG-13  |
|     584 | MIXED DOORS                 | PG-13  |
|     585 | MOB DUFFEL                  | G      |
|     586 | MOCKINGBIRD HOLLYWOOD       | PG     |
|     589 | MODERN DORADO               | PG     |
|     590 | MONEY HAROLD                | PG     |
|     591 | MONSOON CAUSE               | PG     |
|     592 | MONSTER SPARTACUS           | PG     |
|     593 | MONTEREY LABYRINTH          | G      |
|     595 | MOON BUNCH                  | PG     |
|     596 | MOONSHINE CABIN             | PG-13  |
|     597 | MOONWALKER FOOL             | G      |
|     598 | MOSQUITO ARMAGEDDON         | G      |
|     599 | MOTHER OLEANDER             | R      |
|     600 | MOTIONS DETAILS             | PG     |
|     601 | MOULIN WAKE                 | PG-13  |
|     602 | MOURNING PURPLE             | PG     |
|     603 | MOVIE SHAKESPEARE           | PG     |
|     604 | MULAN MOON                  | G      |
|     605 | MULHOLLAND BEAST            | PG     |
|     607 | MUPPET MILE                 | PG     |
|     608 | MURDER ANTITRUST            | PG     |
|     609 | MUSCLE BRIGHT               | G      |
|     610 | MUSIC BOONDOCK              | R      |
|     611 | MUSKETEERS WAIT             | PG     |
|     612 | MUSSOLINI SPOILERS          | G      |
|     614 | NAME DETECTIVE              | PG-13  |
|     615 | NASH CHOCOLAT               | PG-13  |
|     617 | NATURAL STOCK               | PG-13  |
|     618 | NECKLACE OUTBREAK           | PG     |
|     619 | NEIGHBORS CHARADE           | R      |
|     621 | NETWORK PEAK                | PG-13  |
|     622 | NEWSIES STORY               | G      |
|     623 | NEWTON LABYRINTH            | PG     |
|     624 | NIGHTMARE CHILL             | PG     |
|     626 | NOON PAPI                   | G      |
|     628 | NORTHWEST POLISH            | PG     |
|     630 | NOTTING SPEAKEASY           | PG-13  |
|     631 | NOVOCAINE FLIGHT            | G      |
|     633 | OCTOBER SUBMARINE           | PG-13  |
|     635 | OKLAHOMA JUMANJI            | PG     |
|     636 | OLEANDER CLUE               | PG     |
|     637 | OPEN AFRICAN                | PG     |
|     638 | OPERATION OPERATION         | G      |
|     639 | OPPOSITE NECKLACE           | PG     |
|     640 | OPUS ICE                    | R      |
|     641 | ORANGE GRAPES               | PG-13  |
|     642 | ORDER BETRAYED              | PG-13  |
|     643 | ORIENT CLOSER               | R      |
|     644 | OSCAR GOLD                  | PG     |
|     645 | OTHERS SOUP                 | PG     |
|     648 | OUTLAW HANKY                | PG-13  |
|     649 | OZ LIAISONS                 | R      |
|     650 | PACIFIC AMISTAD             | G      |
|     651 | PACKER MADIGAN              | PG-13  |
|     652 | PAJAMA JAWBREAKER           | R      |
|     653 | PANIC CLUB                  | G      |
|     654 | PANKY SUBMARINE             | G      |
|     656 | PAPI NECKLACE               | PG     |
|     657 | PARADISE SABRINA            | PG-13  |
|     658 | PARIS WEEKEND               | PG-13  |
|     659 | PARK CITIZEN                | PG-13  |
|     660 | PARTY KNOCK                 | PG     |
|     661 | PAST SUICIDES               | PG-13  |
|     662 | PATHS CONTROL               | PG     |
|     664 | PATRIOT ROMAN               | PG     |
|     665 | PATTON INTERVIEW            | PG     |
|     666 | PAYCHECK WAIT               | PG-13  |
|     667 | PEACH INNOCENT              | PG-13  |
|     668 | PEAK FOREVER                | PG     |
|     670 | PELICAN COMFORTS            | PG     |
|     672 | PERFECT GROOVE              | PG-13  |
|     673 | PERSONAL LADYBUGS           | PG-13  |
|     674 | PET HAUNTING                | PG     |
|     676 | PHILADELPHIA WIFE           | PG-13  |
|     678 | PICKUP DRIVING              | G      |
|     679 | PILOT HOOSIERS              | PG     |
|     680 | PINOCCHIO SIMON             | PG     |
|     681 | PIRATES ROXANNE             | PG     |
|     682 | PITTSBURGH HUNCHBACK        | PG-13  |
|     685 | PLATOON INSTINCT            | PG-13  |
|     686 | PLUTO OLEANDER              | R      |
|     688 | POLISH BROOKLYN             | PG     |
|     689 | POLLOCK DELIVERANCE         | PG     |
|     690 | POND SEATTLE                | PG-13  |
|     691 | POSEIDON FOREVER            | PG-13  |
|     692 | POTLUCK MIXED               | G      |
|     693 | POTTER CONNECTICUT          | PG     |
|     694 | PREJUDICE OLEANDER          | PG-13  |
|     695 | PRESIDENT BANG              | PG     |
|     697 | PRIMARY GLASS               | G      |
|     699 | PRIVATE DROP                | PG     |
|     700 | PRIX UNDEFEATED             | R      |
|     701 | PSYCHO SHRUNK               | PG-13  |
|     702 | PULP BEVERLY                | G      |
|     703 | PUNK DIVORCE                | PG     |
|     705 | PURPLE MOVIE                | R      |
|     706 | QUEEN LUKE                  | PG     |
|     707 | QUEST MUSSOLINI             | R      |
|     708 | QUILLS BULL                 | R      |
|     710 | RAGE GAMES                  | R      |
|     711 | RAGING AIRPLANE             | R      |
|     712 | RAIDERS ANTITRUST           | PG-13  |
|     713 | RAINBOW SHOCK               | PG     |
|     715 | RANGE MOONWALKER            | PG     |
|     716 | REAP UNFAITHFUL             | PG-13  |
|     718 | REBEL AIRPORT               | G      |
|     719 | RECORDS ZORRO               | PG     |
|     721 | REDS POCUS                  | PG-13  |
|     723 | REIGN GENTLEMEN             | PG-13  |
|     724 | REMEMBER DIARY              | R      |
|     725 | REQUIEM TYCOON              | R      |
|     726 | RESERVOIR ADAPTATION        | PG-13  |
|     727 | RESURRECTION SILVERADO      | PG     |
|     728 | REUNION WITCHES             | R      |
|     729 | RIDER CADDYSHACK            | PG     |
|     730 | RIDGEMONT SUBMARINE         | PG-13  |
|     731 | RIGHT CRANES                | PG-13  |
|     732 | RINGS HEARTBREAKERS         | G      |
|     733 | RIVER OUTLAW                | PG-13  |
|     734 | ROAD ROXANNE                | R      |
|     735 | ROBBERS JOON                | PG-13  |
|     736 | ROBBERY BRIGHT              | R      |
|     737 | ROCK INSTINCT               | G      |
|     738 | ROCKETEER MOTHER            | PG-13  |
|     739 | ROCKY WAR                   | PG-13  |
|     740 | ROLLERCOASTER BRINGING      | PG-13  |
|     742 | ROOF CHAMPION               | R      |
|     743 | ROOM ROMAN                  | PG     |
|     744 | ROOTS REMEMBER              | PG-13  |
|     745 | ROSES TREASURE              | PG-13  |
|     747 | ROXANNE REBEL               | R      |
|     748 | RUGRATS SHAKESPEARE         | PG-13  |
|     749 | RULES HUMAN                 | R      |
|     750 | RUN PACIFIC                 | R      |
|     753 | RUSH GOODFELLAS             | PG     |
|     754 | RUSHMORE MERMAID            | PG-13  |
|     755 | SABRINA MIDNIGHT            | PG     |
|     756 | SADDLE ANTITRUST            | PG-13  |
|     757 | SAGEBRUSH CLUELESS          | G      |
|     758 | SAINTS BRIDE                | G      |
|     759 | SALUTE APOLLO               | R      |
|     760 | SAMURAI LION                | G      |
|     761 | SANTA PARIS                 | PG     |
|     762 | SASSY PACKER                | G      |
|     763 | SATISFACTION CONFIDENTIAL   | G      |
|     764 | SATURDAY LAMBS              | G      |
|     765 | SATURN NAME                 | R      |
|     766 | SAVANNAH TOWN               | PG-13  |
|     768 | SCARFACE BANG               | PG-13  |
|     769 | SCHOOL JACKET               | PG-13  |
|     770 | SCISSORHANDS SLUMS          | G      |
|     772 | SEA VIRGIN                  | PG     |
|     775 | SEATTLE EXPECATIONS         | PG-13  |
|     776 | SECRET GROUNDHOG            | PG     |
|     777 | SECRETARY ROUGE             | PG     |
|     778 | SECRETS PARADISE            | G      |
|     779 | SENSE GREEK                 | R      |
|     780 | SENSIBILITY REAR            | PG     |
|     781 | SEVEN SWARM                 | R      |
|     782 | SHAKESPEARE SADDLE          | PG-13  |
|     783 | SHANE DARKNESS              | PG     |
|     784 | SHANGHAI TYCOON             | PG     |
|     785 | SHAWSHANK BUBBLE            | PG     |
|     786 | SHEPHERD MIDSUMMER          | R      |
|     787 | SHINING ROSES               | G      |
|     788 | SHIP WONDERLAND             | R      |
|     789 | SHOCK CABIN                 | PG-13  |
|     790 | SHOOTIST SUPERFLY           | PG-13  |
|     791 | SHOW LORD                   | PG-13  |
|     792 | SHREK LICENSE               | PG-13  |
|     793 | SHRUNK DIVINE               | R      |
|     794 | SIDE ARK                    | G      |
|     795 | SIEGE MADRE                 | R      |
|     797 | SILENCE KANE                | R      |
|     798 | SILVERADO GOLDFINGER        | PG     |
|     800 | SINNERS ATLANTIS            | PG-13  |
|     801 | SISTER FREDDY               | PG-13  |
|     802 | SKY MIRACLE                 | PG     |
|     803 | SLACKER LIAISONS            | R      |
|     804 | SLEEPING SUSPECTS           | PG-13  |
|     805 | SLEEPLESS MONSOON           | G      |
|     806 | SLEEPY JAPANESE             | PG     |
|     808 | SLING LUKE                  | R      |
|     809 | SLIPPER FIDELITY            | PG-13  |
|     810 | SLUMS DUCK                  | PG     |
|     811 | SMILE EARRING               | G      |
|     812 | SMOKING BARBARELLA          | PG-13  |
|     813 | SMOOCHY CONTROL             | R      |
|     814 | SNATCH SLIPPER              | PG     |
|     815 | SNATCHERS MONTEZUMA         | PG-13  |
|     816 | SNOWMAN ROLLERCOASTER       | G      |
|     817 | SOLDIERS EVOLUTION          | R      |
|     819 | SONG HEDWIG                 | PG-13  |
|     822 | SOUP WISDOM                 | R      |
|     823 | SOUTH WAIT                  | R      |
|     825 | SPEAKEASY DATE              | PG-13  |
|     826 | SPEED SUIT                  | PG-13  |
|     828 | SPIKING ELEMENT             | G      |
|     829 | SPINAL ROCKY                | PG-13  |
|     830 | SPIRIT FLINTSTONES          | R      |
|     831 | SPIRITED CASUALTIES         | PG-13  |
|     832 | SPLASH GUMP                 | PG     |
|     833 | SPLENDOR PATTON             | R      |
|     834 | SPOILERS HELLFIGHTERS       | G      |
|     835 | SPY MILE                    | PG-13  |
|     836 | SQUAD FISH                  | PG     |
|     837 | STAGE WORLD                 | PG     |
|     838 | STAGECOACH ARMAGEDDON       | R      |
|     839 | STALLION SUNDANCE           | PG-13  |
|     840 | STAMPEDE DISTURBING         | R      |
|     841 | STAR OPERATION              | PG     |
|     844 | STEERS ARMAGEDDON           | PG     |
|     847 | STOCK GLASS                 | PG     |
|     848 | STONE FIRE                  | G      |
|     850 | STORY SIDE                  | R      |
|     851 | STRAIGHT HOURS              | R      |
|     853 | STRANGER STRANGERS          | G      |
|     854 | STRANGERS GRAFFITI          | R      |
|     855 | STREAK RIDGEMONT            | PG-13  |
|     856 | STREETCAR INTENTIONS        | R      |
|     857 | STRICTLY SCARFACE           | PG-13  |
|     858 | SUBMARINE BED               | R      |
|     859 | SUGAR WONKA                 | PG     |
|     860 | SUICIDES SILENCE            | G      |
|     861 | SUIT WALLS                  | R      |
|     862 | SUMMER SCARFACE             | G      |
|     863 | SUN CONFESSIONS             | R      |
|     865 | SUNRISE LEAGUE              | PG-13  |
|     867 | SUPER WYOMING               | PG     |
|     868 | SUPERFLY TRIP               | PG     |
|     869 | SUSPECTS QUILLS             | PG     |
|     870 | SWARM GOLD                  | PG-13  |
|     871 | SWEDEN SHINING              | PG     |
|     872 | SWEET BROTHERHOOD           | R      |
|     873 | SWEETHEARTS SUSPECTS        | G      |
|     874 | TADPOLE PARK                | PG     |
|     875 | TALENTED HOMICIDE           | PG     |
|     876 | TARZAN VIDEOTAPE            | PG-13  |
|     877 | TAXI KICK                   | PG-13  |
|     878 | TEEN APOLLO                 | G      |
|     879 | TELEGRAPH VOYAGE            | PG     |
|     880 | TELEMARK HEARTBREAKERS      | PG-13  |
|     881 | TEMPLE ATTRACTION           | PG     |
|     882 | TENENBAUMS COMMAND          | PG-13  |
|     883 | TEQUILA PAST                | PG     |
|     884 | TERMINATOR CLUB             | R      |
|     886 | THEORY MERMAID              | PG-13  |
|     887 | THIEF PELICAN               | PG-13  |
|     888 | THIN SAGEBRUSH              | PG-13  |
|     889 | TIES HUNGER                 | R      |
|     890 | TIGHTS DAWN                 | R      |
|     891 | TIMBERLAND SKY              | G      |
|     892 | TITANIC BOONDOCK            | R      |
|     893 | TITANS JERK                 | PG     |
|     894 | TOMATOES HELLFIGHTERS       | PG     |
|     895 | TOMORROW HUSTLER            | R      |
|     896 | TOOTSIE PILOT               | PG     |
|     897 | TORQUE BOUND                | G      |
|     898 | TOURIST PELICAN             | PG-13  |
|     900 | TOWN ARK                    | R      |
|     901 | TRACY CIDER                 | G      |
|     902 | TRADING PINOCCHIO           | PG     |
|     903 | TRAFFIC HOBBIT              | G      |
|     904 | TRAIN BUNCH                 | R      |
|     905 | TRAINSPOTTING STRANGERS     | PG-13  |
|     906 | TRAMP OTHERS                | PG     |
|     907 | TRANSLATION SUMMER          | PG-13  |
|     908 | TRAP GUYS                   | G      |
|     909 | TREASURE COMMAND            | PG-13  |
|     910 | TREATMENT JEKYLL            | PG     |
|     911 | TRIP NEWTON                 | PG-13  |
|     912 | TROJAN TOMORROW             | PG     |
|     913 | TROOPERS METAL              | R      |
|     914 | TROUBLE DATE                | PG     |
|     915 | TRUMAN CRAZY                | G      |
|     916 | TURN STAR                   | G      |
|     917 | TUXEDO MILE                 | R      |
|     918 | TWISTED PIRATES             | PG     |
|     919 | TYCOON GATHERING            | G      |
|     920 | UNBREAKABLE KARATE          | G      |
|     921 | UNCUT SUICIDES              | PG-13  |
|     922 | UNDEFEATED DALMATIONS       | PG-13  |
|     923 | UNFAITHFUL KILL             | R      |
|     924 | UNFORGIVEN ZOOLANDER        | PG     |
|     925 | UNITED PILOT                | R      |
|     928 | UPTOWN YOUNG                | PG     |
|     929 | USUAL UNTOUCHABLES          | PG-13  |
|     930 | VACATION BOONDOCK           | R      |
|     931 | VALENTINE VANISHING         | PG-13  |
|     932 | VALLEY PACKER               | G      |
|     935 | VANISHED GARDEN             | R      |
|     938 | VELVET TERMINATOR           | R      |
|     939 | VERTIGO NORTHWEST           | R      |
|     940 | VICTORY ACADEMY             | PG-13  |
|     942 | VIETNAM SMOOCHY             | PG-13  |
|     943 | VILLAIN DESPERATE           | PG-13  |
|     944 | VIRGIN DAISY                | PG-13  |
|     945 | VIRGINIAN PLUTO             | R      |
|     947 | VISION TORQUE               | PG-13  |
|     948 | VOICE PEACH                 | PG-13  |
|     950 | VOLUME HOUSE                | PG     |
|     951 | VOYAGE LEGALLY              | PG-13  |
|     952 | WAGON JAWS                  | PG     |
|     953 | WAIT CIDER                  | PG-13  |
|     954 | WAKE JAWS                   | G      |
|     955 | WALLS ARTIST                | PG     |
|     956 | WANDA CHAMBER               | PG-13  |
|     957 | WAR NOTTING                 | G      |
|     958 | WARDROBE PHANTOM            | G      |
|     959 | WARLOCK WEREWOLF            | G      |
|     960 | WARS PLUTO                  | G      |
|     961 | WASH HEAVENLY               | R      |
|     962 | WASTELAND DIVINE            | PG     |
|     963 | WATCH TRACY                 | PG     |
|     964 | WATERFRONT DELIVERANCE      | G      |
|     965 | WATERSHIP FRONTIER          | G      |
|     966 | WEDDING APOLLO              | PG     |
|     967 | WEEKEND PERSONAL            | R      |
|     968 | WEREWOLF LOLA               | G      |
|     969 | WEST LION                   | G      |
|     971 | WHALE BIKINI                | PG-13  |
|     972 | WHISPERER GIANT             | PG-13  |
|     974 | WILD APOLLO                 | R      |
|     975 | WILLOW TRACY                | R      |
|     976 | WIND PHANTOM                | R      |
|     977 | WINDOW SIDE                 | R      |
|     978 | WISDOM WORKER               | R      |
|     980 | WIZARD COLDBLOODED          | PG     |
|     982 | WOMEN DORADO                | R      |
|     983 | WON DARES                   | PG     |
|     985 | WONDERLAND CHRISTMAS        | PG     |
|     987 | WORDS HUNTER                | PG     |
|     988 | WORKER TARZAN               | R      |
|     989 | WORKING MICROCOSMOS         | R      |
|     990 | WORLD LEATHERNECKS          | PG-13  |
|     991 | WORST BANGER                | PG     |
|     993 | WRONG BEHAVIOR              | PG-13  |
|     994 | WYOMING STORM               | PG-13  |
|     995 | YENTL IDAHO                 | R      |
|     996 | YOUNG LANGUAGE              | G      |
|     999 | ZOOLANDER FICTION           | R      |
+---------+-----------------------------+--------+
**/
-- Peliculas con un rating PG y duracion de más de 120.
select film_id, title, rating, length from film where rating='PG' and length>120;
/**
+---------+-----------------------+--------+--------+
| film_id | title                 | rating | length |
+---------+-----------------------+--------+--------+
|       6 | AGENT TRUMAN          | PG     |    169 |
|      12 | ALASKA PHANTOM        | PG     |    136 |
|      13 | ALI FOREVER           | PG     |    150 |
|      37 | ARIZONA BANG          | PG     |    121 |
|      41 | ARSENIC INDEPENDENCE  | PG     |    137 |
|      74 | BIRCH ANTITRUST       | PG     |    162 |
|      88 | BORN SPINAL           | PG     |    179 |
|      93 | BRANNIGAN SUNRISE     | PG     |    121 |
|      99 | BRINGING HYSTERICAL   | PG     |    136 |
|     103 | BUCKET BROTHERHOOD    | PG     |    133 |
|     121 | CAROL TEXAS           | PG     |    151 |
|     131 | CENTER DINOSAUR       | PG     |    152 |
|     142 | CHICKEN HELLFIGHTERS  | PG     |    122 |
|     143 | CHILL LUCK            | PG     |    142 |
|     185 | COWBOY DOOM           | PG     |    146 |
|     188 | CRAZY HOME            | PG     |    136 |
|     201 | CYCLONE FAMILY        | PG     |    176 |
|     207 | DANGEROUS UPTOWN      | PG     |    121 |
|     233 | DISCIPLE MOTHER       | PG     |    141 |
|     252 | DREAM PICKUP          | PG     |    135 |
|     265 | DYING MAKER           | PG     |    168 |
|     290 | EVERYONE CRAFT        | PG     |    163 |
|     308 | FERRIS MOTHER         | PG     |    142 |
|     317 | FIREBALL PHILADELPHIA | PG     |    148 |
|     327 | FOOL MOCKINGBIRD      | PG     |    158 |
|     345 | GABLES METROPOLIS     | PG     |    161 |
|     359 | GLADIATOR WESTWARD    | PG     |    173 |
|     380 | GREEK EVERYONE        | PG     |    176 |
|     382 | GRIT CLOCKWORK        | PG     |    137 |
|     420 | HOLES BRANNIGAN       | PG     |    128 |
|     446 | HYSTERICAL GRAIL      | PG     |    150 |
|     479 | JEDI BENEATH          | PG     |    128 |
|     495 | KENTUCKIAN GIANT      | PG     |    169 |
|     518 | LIAISONS SWEET        | PG     |    140 |
|     551 | MAIDEN HOME           | PG     |    138 |
|     552 | MAJESTIC FLOATS       | PG     |    130 |
|     555 | MALLRATS UNITED       | PG     |    133 |
|     557 | MANCHURIAN CURTAIN    | PG     |    177 |
|     564 | MASSAGE IMAGE         | PG     |    161 |
|     576 | MIGHTY LUCK           | PG     |    122 |
|     590 | MONEY HAROLD          | PG     |    135 |
|     591 | MONSOON CAUSE         | PG     |    182 |
|     600 | MOTIONS DETAILS       | PG     |    166 |
|     602 | MOURNING PURPLE       | PG     |    146 |
|     605 | MULHOLLAND BEAST      | PG     |    157 |
|     608 | MURDER ANTITRUST      | PG     |    166 |
|     618 | NECKLACE OUTBREAK     | PG     |    132 |
|     624 | NIGHTMARE CHILL       | PG     |    149 |
|     628 | NORTHWEST POLISH      | PG     |    172 |
|     636 | OLEANDER CLUE         | PG     |    161 |
|     637 | OPEN AFRICAN          | PG     |    131 |
|     656 | PAPI NECKLACE         | PG     |    128 |
|     665 | PATTON INTERVIEW      | PG     |    175 |
|     689 | POLLOCK DELIVERANCE   | PG     |    137 |
|     695 | PRESIDENT BANG        | PG     |    144 |
|     706 | QUEEN LUKE            | PG     |    163 |
|     715 | RANGE MOONWALKER      | PG     |    147 |
|     719 | RECORDS ZORRO         | PG     |    182 |
|     729 | RIDER CADDYSHACK      | PG     |    177 |
|     761 | SANTA PARIS           | PG     |    154 |
|     777 | SECRETARY ROUGE       | PG     |    158 |
|     802 | SKY MIRACLE           | PG     |    132 |
|     806 | SLEEPY JAPANESE       | PG     |    137 |
|     810 | SLUMS DUCK            | PG     |    147 |
|     832 | SPLASH GUMP           | PG     |    175 |
|     836 | SQUAD FISH            | PG     |    136 |
|     841 | STAR OPERATION        | PG     |    181 |
|     844 | STEERS ARMAGEDDON     | PG     |    140 |
|     847 | STOCK GLASS           | PG     |    160 |
|     871 | SWEDEN SHINING        | PG     |    176 |
|     874 | TADPOLE PARK          | PG     |    155 |
|     875 | TALENTED HOMICIDE     | PG     |    173 |
|     879 | TELEGRAPH VOYAGE      | PG     |    148 |
|     896 | TOOTSIE PILOT         | PG     |    157 |
|     902 | TRADING PINOCCHIO     | PG     |    170 |
|     906 | TRAMP OTHERS          | PG     |    171 |
|     918 | TWISTED PIRATES       | PG     |    152 |
|     924 | UNFORGIVEN ZOOLANDER  | PG     |    129 |
|     950 | VOLUME HOUSE          | PG     |    132 |
|     952 | WAGON JAWS            | PG     |    152 |
|     955 | WALLS ARTIST          | PG     |    135 |
|     991 | WORST BANGER          | PG     |    185 |
+---------+-----------------------+--------+--------+
**/
-- ¿Cuantos actores hay?
select COUNT(*) as "Numero de actores" from actor;
/**
+-------------------+
| Numero de actores |
+-------------------+
|               200 |
+-------------------+
**/
-- ¿Cuántas ciudades tiene el country Spain?
select COUNT(*) as "Ciudades españolas" from city as c JOIN country as co ON c.country_id=co.country_id where country='Spain';
/**
+---------------------+
| Ciudades españolas  |
+---------------------+
|                   5 |
+---------------------+
**/
-- ¿Cuántos countries hay que empiezan por a?
select * from country where country regexp '^a';
/**
+------------+----------------+---------------------+
| country_id | country        | last_update         |
+------------+----------------+---------------------+
|          1 | Afghanistan    | 2006-02-15 04:44:00 |
|          2 | Algeria        | 2006-02-15 04:44:00 |
|          3 | American Samoa | 2006-02-15 04:44:00 |
|          4 | Angola         | 2006-02-15 04:44:00 |
|          5 | Anguilla       | 2006-02-15 04:44:00 |
|          6 | Argentina      | 2006-02-15 04:44:00 |
|          7 | Armenia        | 2006-02-15 04:44:00 |
|          8 | Australia      | 2006-02-15 04:44:00 |
|          9 | Austria        | 2006-02-15 04:44:00 |
|         10 | Azerbaijan     | 2006-02-15 04:44:00 |
+------------+----------------+---------------------+
**/
-- Media de duración de peliculas con PG.
select AVG(length) as "media de duracion" from film where rating='PG';
/**
+-------------------+
| media de duracion |
+-------------------+
|          112.0052 |
+-------------------+
**/
-- Suma de rental_rate de todas las peliculas.
select SUM(rental_rate) as "suma de rentabilidad" from film;
/**
+----------------------+
| suma de rentabilidad |
+----------------------+
|              2980.00 |
+----------------------+
**/
-- Pelicula con mayor duración.
select title, length from film order by length DESC LIMIT 1;
/**
+---------------+--------+
| title         | length |
+---------------+--------+
| CHICAGO NORTH |    185 |
+---------------+--------+
**/
-- Película con menor duración.
select title, length from film order by length ASC LIMIT 1;
/**
+--------------+--------+
| title        | length |
+--------------+--------+
| ALIEN CENTER |     46 |
+--------------+--------+
**/
-- Mostrar las ciudades del country Spain (multitabla).
select c.* from city as c JOIN country as co ON c.country_id=co.country_id where country='Spain';
/**
+---------+-------------------------+------------+---------------------+
| city_id | city                    | country_id | last_update         |
+---------+-------------------------+------------+---------------------+
|       1 | A Coruña (La Coruña)    |         87 | 2006-02-15 04:45:25 |
|     146 | Donostia-San Sebastián  |         87 | 2006-02-15 04:45:25 |
|     181 | Gijón                   |         87 | 2006-02-15 04:45:25 |
|     388 | Ourense (Orense)        |         87 | 2006-02-15 04:45:25 |
|     459 | Santiago de Compostela  |         87 | 2006-02-15 04:45:25 |
+---------+-------------------------+------------+---------------------+
**/
-- Mostrar el nombre de la película y el nombre de los actores.
select first_name, film_info from actor_info;
/**
+-------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| first_name  | film_info                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
+-------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PENELOPE    | Animation: ANACONDA CONFESSIONS; Children: LANGUAGE COWBOY; Classics: COLOR PHILADELPHIA, WESTWARD SEABISCUIT; Comedy: VERTIGO NORTHWEST; Documentary: ACADEMY DINOSAUR; Family: KING EVOLUTION, SPLASH GUMP; Foreign: MULHOLLAND BEAST; Games: BULWORTH COMMANDMENTS, HUMAN GRAFFITI; Horror: ELEPHANT TROJAN, LADY STAGE, RULES HUMAN; Music: WIZARD COLDBLOODED; New: ANGELS LIFE, OKLAHOMA JUMANJI; Sci-Fi: CHEAPER CLYDE; Sports: GLEAMING JAWBREAKER                                                                                                                                                                                                                                                                                                                                                                                                     |
| NICK        | Action: BULL SHAWSHANK; Animation: FIGHT JAWBREAKER; Children: JERSEY SASSY; Classics: DRACULA CRYSTAL, GILBERT PELICAN; Comedy: MALLRATS UNITED, RUSHMORE MERMAID; Documentary: ADAPTATION HOLES; Drama: WARDROBE PHANTOM; Family: APACHE DIVINE, CHISUM BEHAVIOR, INDIAN LOVE, MAGUIRE APACHE; Foreign: BABY HALL, HAPPINESS UNITED; Games: ROOF CHAMPION; Music: LUCKY FLYING; New: DESTINY SATURDAY, FLASH WARS, JEKYLL FROGMEN, MASK PEACH; Sci-Fi: CHAINSAW UPTOWN, GOODFELLAS SALUTE; Travel: LIAISONS SWEET, SMILE EARRING                                                                                                                                                                                                                                                                                                                             |
| ED          | Action: CADDYSHACK JEDI, FORREST SONS; Classics: FROST HEAD, JEEPERS WEDDING; Documentary: ARMY FLINTSTONES, FRENCH HOLIDAY, HALLOWEEN NUTS, HUNTER ALTER, WEDDING APOLLO, YOUNG LANGUAGE; Drama: LUCK OPUS, NECKLACE OUTBREAK, SPICE SORORITY; Foreign: COWBOY DOOM, WHALE BIKINI; Music: ALONE TRIP; New: EVE RESURRECTION, PLATOON INSTINCT; Sci-Fi: WEEKEND PERSONAL; Sports: ARTIST COLDBLOODED, IMAGE PRINCESS; Travel: BOONDOCK BALLROOM                                                                                                                                                                                                                                                                                                                                                                                                                |
| JENNIFER    | Action: BAREFOOT MANCHURIAN; Animation: ANACONDA CONFESSIONS, GHOSTBUSTERS ELF; Comedy: SUBMARINE BED; Documentary: BED HIGHBALL, NATIONAL STORY, RAIDERS ANTITRUST; Drama: BLADE POLISH, GREEDY ROOTS; Family: SPLASH GUMP; Horror: TREASURE COMMAND; Music: HANOVER GALAXY, REDS POCUS; New: ANGELS LIFE, JUMANJI BLADE, OKLAHOMA JUMANJI; Sci-Fi: RANDOM GO, SILVERADO GOLDFINGER, UNFORGIVEN ZOOLANDER; Sports: INSTINCT AIRPORT, POSEIDON FOREVER; Travel: BOONDOCK BALLROOM                                                                                                                                                                                                                                                                                                                                                                              |
| JOHNNY      | Action: AMADEUS HOLY, GRAIL FRANKENSTEIN, RINGS HEARTBREAKERS; Animation: SUNRISE LEAGUE; Children: HALL CASSIDY; Comedy: DADDY PITTSBURGH; Documentary: BONNIE HOLOCAUST, METAL ARMAGEDDON, PACIFIC AMISTAD, POCUS PULP; Drama: CHITTY LOCK, CONEHEADS SMOOCHY; Games: FIRE WOLVES; Horror: COMMANDMENTS EXPRESS, LOVE SUICIDES, PATTON INTERVIEW; Music: BANGER PINOCCHIO, HEAVENLY GUN; New: FRONTIER CABIN, RIDGEMONT SUBMARINE; Sci-Fi: DAISY MENAGERIE, GOODFELLAS SALUTE, SOLDIERS EVOLUTION; Sports: GROOVE FICTION, KRAMER CHOCOLATE, STAR OPERATION; Travel: ENOUGH RAGING, ESCAPE METROPOLIS, SMILE EARRING                                                                                                                                                                                                                                         |
| BETTE       | Action: ANTITRUST TOMATOES; Animation: BIKINI BORROWERS, CROSSROADS CASUALTIES, POTLUCK MIXED, TITANIC BOONDOCK; Children: LANGUAGE COWBOY; Classics: BEAST HUNCHBACK; Documentary: COAST RAINBOW; Family: BANG KWAI; Foreign: CALENDAR GUNFIGHT, MULHOLLAND BEAST; New: WYOMING STORM; Sci-Fi: COLDBLOODED DARLING; Sports: DROP WATERFRONT, KRAMER CHOCOLATE, LESSON CLEOPATRA, LIBERTY MAGNIFICENT, TRADING PINOCCHIO; Travel: IGBY MAKER, SPEED SUIT                                                                                                                                                                                                                                                                                                                                                                                                       |
| GRACE       | Action: BERETS AGENT, EXCITEMENT EVE; Animation: SLEEPLESS MONSOON, TRACY CIDER; Children: WARLOCK WEREWOLF; Classics: MALKOVICH PET, OCTOBER SUBMARINE; Drama: CONFESSIONS MAGUIRE, DECEIVER BETRAYED, DESTINATION JERK, NECKLACE OUTBREAK, SAINTS BRIDE, SAVANNAH TOWN, TREATMENT JEKYLL; Foreign: COMMAND DARLING, HELLFIGHTERS SIERRA, SCISSORHANDS SLUMS, TOWN ARK, WAR NOTTING; Games: DAZED PUNK; Horror: ARACHNOPHOBIA ROLLERCOASTER, GASLIGHT CRUSADE; New: ANGELS LIFE, BREAKING HOME, SLEEPY JAPANESE, STING PERSONAL; Sci-Fi: OPEN AFRICAN; Sports: ANONYMOUS HUMAN, INSTINCT AIRPORT, POSEIDON FOREVER                                                                                                                                                                                                                                            |
| MATTHEW     | Action: CAMPUS REMEMBER, DANCES NONE; Animation: SUGAR WONKA; Classics: LIGHTS DEER, MALKOVICH PET, TOMORROW HUSTLER; Drama: CONQUERER NUTS, HANGING DEEP, SCORPION APOLLO; Family: INDIAN LOVE; Foreign: BABY HALL, SCHOOL JACKET; Music: CLONES PINOCCHIO, DRIVING POLISH, RUNNER MADIGAN, VANISHING ROCKY; New: FLASH WARS; Sci-Fi: CROWDS TELEMARK; Sports: DURHAM PANKY, LOSER HUSTLER                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| JOE         | Action: PRIMARY GLASS, WATERFRONT DELIVERANCE; Animation: LAWLESS VISION, SUNRISE LEAGUE; Children: CROOKED FROGMEN, SWEETHEARTS SUSPECTS, TIES HUNGER; Classics: SNATCHERS MONTEZUMA; Documentary: MAJESTIC FLOATS, PACIFIC AMISTAD, UNTOUCHABLES SUNRISE; Drama: DALMATIONS SWEDEN, LEBOWSKI SOLDIERS; Family: CHOCOLAT HARRY; Foreign: CHOCOLATE DUCK; Games: CURTAIN VIDEOTAPE; Horror: ANYTHING SAVANNAH, REEF SALUTE; Music: BIRCH ANTITRUST, RUNNER MADIGAN; New: WILD APOLLO; Sports: PERDITION FARGO; Travel: HORROR REIGN, SMILE EARRING, TRAFFIC HOBBIT                                                                                                                                                                                                                                                                                             |
| CHRISTIAN   | Action: LORD ARIZONA, WATERFRONT DELIVERANCE; Animation: PUNK DIVORCE; Children: CROOKED FROGMEN; Classics: JEEPERS WEDDING, PREJUDICE OLEANDER; Comedy: LIFE TWISTED; Documentary: ACADEMY DINOSAUR, MOD SECRETARY, WEDDING APOLLO; Drama: GOLDFINGER SENSIBILITY; Foreign: USUAL UNTOUCHABLES; Games: DIVINE RESURRECTION; Horror: ALABAMA DEVIL, REAP UNFAITHFUL; Music: JAWBREAKER BROOKLYN, WIZARD COLDBLOODED, WON DARES; New: DRAGONFLY STRANGERS; Sci-Fi: VACATION BOONDOCK; Sports: SHAKESPEARE SADDLE; Travel: TROUBLE DATE                                                                                                                                                                                                                                                                                                                          |
| ZERO        | Action: DANCES NONE, HANDICAP BOONDOCK, STORY SIDE; Animation: CANYON STOCK, HORN WORKING; Children: JERSEY SASSY, TOOTSIE PILOT, UPTOWN YOUNG; Comedy: VELVET TERMINATOR; Documentary: MOD SECRETARY, THIN SAGEBRUSH; Drama: RACER EGG, WEST LION; Family: GANDHI KWAI; Foreign: MEET CHOCOLATE; Games: ENCINO ELF, MOONWALKER FOOL; Horror: STRANGERS GRAFFITI; Music: OLEANDER CLUE; New: ENDING CROWDS, GODFATHER DIARY; Sports: HONEY TIES, IMAGE PRINCESS, LOSER HUSTLER; Travel: WORKER TARZAN                                                                                                                                                                                                                                                                                                                                                          |
| KARL        | Action: STAGECOACH ARMAGEDDON; Animation: DARES PLUTO, DOORS PRESIDENT, TELEMARK HEARTBREAKERS; Children: FURY MURDER; Classics: ARIZONA BANG, BOUND CHEAPER; Comedy: PERFECT GROOVE, SWEDEN SHINING; Documentary: HARDLY ROBBERS, INDEPENDENCE HOTEL, SMOKING BARBARELLA, VIRGINIAN PLUTO; Drama: BUNCH MINDS, REUNION WITCHES; Family: DATE SPEED; Foreign: ALLEY EVOLUTION, HIGHBALL POTTER; Horror: ARABIA DOGMA, BOWFINGER GABLES, MONTEREY LABYRINTH, REAP UNFAITHFUL; Music: ALONE TRIP, LUCKY FLYING; New: CLEOPATRA DEVIL, DAY UNFAITHFUL, OKLAHOMA JUMANJI; Sci-Fi: CONNECTICUT TRAMP; Sports: HOLES BRANNIGAN, NOVOCAINE FLIGHT; Travel: LEATHERNECKS DWARFS                                                                                                                                                                                        |
| UMA         | Action: ANTITRUST TOMATOES, CLUELESS BUCKET; Animation: CLASH FREDDY, INCH JET, SNOWMAN ROLLERCOASTER; Children: CABIN FLASH, LEGALLY SECRETARY, MODEL FISH, SPLENDOR PATTON; Classics: GALAXY SWEETHEARTS, STEEL SANTA; Comedy: GROUNDHOG UNCUT, LIFE TWISTED, LION UNCUT; Documentary: HOMEWARD CIDER, METAL ARMAGEDDON, WEDDING APOLLO; Drama: TORQUE BOUND; Family: LOLITA WORLD, SPLASH GUMP; Foreign: FRIDA SLIPPER; Games: GRINCH MASSAGE, MOONWALKER FOOL; Horror: MOTIONS DETAILS, ZHIVAGO CORE; Music: ALONE TRIP, REBEL AIRPORT; New: ATTRACTION NEWTON, CHINATOWN GLADIATOR; Sci-Fi: DAISY MENAGERIE, SOLDIERS EVOLUTION; Sports: DRIVER ANNIE, RIDER CADDYSHACK; Travel: BOONDOCK BALLROOM, LEATHERNECKS DWARFS                                                                                                                                   |
| VIVIEN      | Action: DRIFTER COMMANDMENTS, EXCITEMENT EVE, HILLS NEIGHBORS; Animation: CLASH FREDDY, DONNIE ALLEY; Children: GORGEOUS BINGO, POLISH BROOKLYN; Classics: LOVELY JINGLE, LOVER TRUMAN, WESTWARD SEABISCUIT; Drama: HOBBIT ALIEN; Foreign: TRAP GUYS; Games: DIRTY ACE, TYCOON GATHERING; Horror: DRUMS DYNAMITE, HIGH ENCINO, JAPANESE RUN, KENTUCKIAN GIANT, STREETCAR INTENTIONS; Music: DRIVING POLISH, ENEMY ODDS, IMPACT ALADDIN; New: SALUTE APOLLO, STOCK GLASS, VOICE PEACH; Sports: CRANES RESERVOIR, MUSSOLINI SPOILERS, SATURDAY LAMBS, TIGHTS DAWN; Travel: ITALIAN AFRICAN                                                                                                                                                                                                                                                                       |
| CUBA        | Action: MONTEZUMA COMMAND, WEREWOLF LOLA; Animation: BORROWERS BEDAZZLED, FLYING HOOK, LUKE MUMMY, THEORY MERMAID; Children: EMPIRE MALKOVICH, MAKER GABLES, NOON PAPI; Classics: BOUND CHEAPER, HYDE DOCTOR; Comedy: KNOCK WARLOCK; Family: APACHE DIVINE, SIEGE MADRE; Foreign: HELLFIGHTERS SIERRA, KISS GLORY; Games: DIVINE RESURRECTION, VOLCANO TEXAS; Horror: EGYPT TENENBAUMS; New: BUTCH PANTHER, OKLAHOMA JUMANJI; Sci-Fi: SOLDIERS EVOLUTION, UNFORGIVEN ZOOLANDER, WONDERLAND CHRISTMAS; Sports: ROSES TREASURE; Travel: CASSIDY WYOMING, FUGITIVE MAGUIRE, SHANE DARKNESS                                                                                                                                                                                                                                                                        |
| FRED        | Action: EASY GLADIATOR, ENTRAPMENT SATISFACTION, REAR TRADING; Animation: CAROL TEXAS, INCH JET, MIRACLE VIRTUAL, MISSION ZOOLANDER, THEORY MERMAID; Children: EMPIRE MALKOVICH; Classics: MAGNIFICENT CHITTY; Documentary: BROTHERHOOD BLANKET, DELIVERANCE MULHOLLAND; Drama: DECEIVER BETRAYED, SAINTS BRIDE; Family: BLANKET BEVERLY, EARRING INSTINCT, GABLES METROPOLIS; Foreign: IMPOSSIBLE PREJUDICE; Games: HUMAN GRAFFITI; New: CLEOPATRA DEVIL, EAGLES PANKY; Sci-Fi: CONNECTICUT TRAMP, WEEKEND PERSONAL; Sports: IMAGE PRINCESS, KRAMER CHOCOLATE, SENSE GREEK; Travel: BOONDOCK BALLROOM                                                                                                                                                                                                                                                         |
| HELEN       | Action: SIDE ARK; Animation: CLASH FREDDY, TELEMARK HEARTBREAKERS; Children: CASPER DRAGONFLY, EMPIRE MALKOVICH, LEGALLY SECRETARY, MICROCOSMOS PARADISE, STRANGER STRANGERS, SWEETHEARTS SUSPECTS, WARLOCK WEREWOLF; Classics: IRON MOON, TADPOLE PARK; Comedy: CAPER MOTIONS, CAT CONEHEADS, JAWS HARRY; Documentary: CUPBOARD SINNERS, INDEPENDENCE HOTEL, ROAD ROXANNE; Drama: LIES TREATMENT; Family: MOVIE SHAKESPEARE; Foreign: CYCLONE FAMILY, KISS GLORY, SCISSORHANDS SLUMS, WAR NOTTING; Games: DIVINE RESURRECTION, FEVER EMPIRE; Horror: FIDELITY DEVIL, SINNERS ATLANTIS; Music: GREATEST NORTH; New: BREAKING HOME, VOICE PEACH; Sports: MUMMY CREATURES                                                                                                                                                                                        |
| DAN         | Action: REAR TRADING; Animation: EARLY HOME; Children: EMPIRE MALKOVICH, TEQUILA PAST; Classics: JERK PAYCHECK, LOVELY JINGLE, SLING LUKE; Drama: CONEHEADS SMOOCHY, VIRGIN DAISY; Foreign: INNOCENT USUAL; Games: STATE WASTELAND; Music: INSIDER ARIZONA; New: CHINATOWN GLADIATOR, FLASH WARS, MASK PEACH; Sci-Fi: ATTACKS HATE, SUN CONFESSIONS; Sports: ELIZABETH SHANE, MUSSOLINI SPOILERS, TUXEDO MILE; Travel: BOILED DARES, GUMP DATE                                                                                                                                                                                                                                                                                                                                                                                                                 |
| BOB         | Action: DARN FORRESTER; Animation: DARES PLUTO, LAWLESS VISION, OSCAR GOLD; Children: CIRCUS YOUTH; Classics: DYNAMITE TARZAN; Comedy: CONTROL ANTHEM, HATE HANDICAP, SADDLE ANTITRUST; Documentary: ADAPTATION HOLES, PELICAN COMFORTS; Drama: JACKET FRISCO, SCORPION APOLLO; Family: HOMICIDE PEACH; Games: DAZED PUNK; Horror: ACE GOLDFINGER; Music: PERSONAL LADYBUGS, RUNNER MADIGAN, TAXI KICK; New: CHINATOWN GLADIATOR, JUMANJI BLADE, RUN PACIFIC; Sci-Fi: RAGING AIRPLANE; Travel: LEATHERNECKS DWARFS, SHAWSHANK BUBBLE                                                                                                                                                                                                                                                                                                                           |
| LUCILLE     | Action: REAR TRADING; Animation: DOORS PRESIDENT; Classics: HYDE DOCTOR, PAJAMA JAWBREAKER, PATIENT SISTER, WASTELAND DIVINE; Comedy: JAWS HARRY; Documentary: ACADEMY DINOSAUR, EGG IGBY, MODERN DORADO, SAGEBRUSH CLUELESS; Drama: CHITTY LOCK, GOLDFINGER SENSIBILITY, ORIENT CLOSER; Family: BEDAZZLED MARRIED, DINOSAUR SECRETARY, EARRING INSTINCT, GANDHI KWAI, KING EVOLUTION; Foreign: LOSE INCH; Horror: LOLA AGENT; Music: BANGER PINOCCHIO; New: JUNGLE CLOSER, LOVERBOY ATTACKS; Sci-Fi: CHEAPER CLYDE, COLDBLOODED DARLING, RANDOM GO, SUN CONFESSIONS; Travel: SHANGHAI TYCOON, WINDOW SIDE                                                                                                                                                                                                                                                     |
| KIRSTEN     | Action: DRIFTER COMMANDMENTS, LORD ARIZONA; Animation: THIEF PELICAN; Comedy: CLOSER BANG, PINOCCHIO SIMON; Documentary: CHICKEN HELLFIGHTERS, KILL BROTHERHOOD, ROAD ROXANNE; Drama: CONQUERER NUTS; Family: PRIX UNDEFEATED; Foreign: AGENT TRUMAN; Games: ENCINO ELF, LADYBUGS ARMAGEDDON; Horror: PULP BEVERLY, SLEEPING SUSPECTS; Music: HANOVER GALAXY, HOME PITY, WON DARES; New: FLASH WARS, PLUTO OLEANDER, UNBREAKABLE KARATE; Sci-Fi: SILVERADO GOLDFINGER, TITANS JERK; Sports: HONEY TIES, RIVER OUTLAW; Travel: BOONDOCK BALLROOM, BORN SPINAL                                                                                                                                                                                                                                                                                                   |
| ELVIS       | Action: BAREFOOT MANCHURIAN, CADDYSHACK JEDI, SKY MIRACLE, WATERFRONT DELIVERANCE; Animation: ANACONDA CONFESSIONS, BORROWERS BEDAZZLED, GANGS PRIDE, HOOK CHARIOTS; Children: JUMPING WRATH, POLISH BROOKLYN; Classics: LOVELY JINGLE, RIGHT CRANES; Drama: CHITTY LOCK, HOBBIT ALIEN, SEATTLE EXPECATIONS; Family: ODDS BOOGIE; Games: JERICHO MULAN, ROOF CHAMPION; Horror: ALABAMA DEVIL, KENTUCKIAN GIANT, MOTIONS DETAILS; Sci-Fi: GOODFELLAS SALUTE, TROJAN TOMORROW; Sports: EVOLUTION ALTER; Travel: EXPECATIONS NATURAL, OUTLAW HANKY                                                                                                                                                                                                                                                                                                                |
| SANDRA      | Action: BULL SHAWSHANK, DARN FORRESTER, MAGNOLIA FORRESTER; Animation: BLACKOUT PRIVATE, OZ LIAISONS, SONS INTERVIEW; Children: GORGEOUS BINGO, JUMPING WRATH, SPLENDOR PATTON, STRANGER STRANGERS; Classics: CANDIDATE PERDITION, LOVELY JINGLE; Documentary: STREAK RIDGEMONT; Drama: SAVANNAH TOWN; Family: HOCUS FRIDA; Foreign: AGENT TRUMAN, HELLFIGHTERS SIERRA, HOTEL HAPPINESS; Games: CANDLES GRAPES, STATE WASTELAND; Horror: SLEEPING SUSPECTS, STREETCAR INTENTIONS; Music: OLEANDER CLUE, PERSONAL LADYBUGS, YOUTH KICK; New: DESTINY SATURDAY, VANISHED GARDEN; Sci-Fi: DIVIDE MONSTER, GOLDMINE TYCOON, IDENTITY LOVER; Sports: ARTIST COLDBLOODED, DRIVER ANNIE, POSEIDON FOREVER, SHAKESPEARE SADDLE; Travel: CASSIDY WYOMING, SPEED SUIT, WOLVES DESIRE                                                                                     |
| CAMERON     | Action: CASUALTIES ENCINO, CROW GREASE; Children: LEGALLY SECRETARY; Comedy: CONNECTION MICROCOSMOS, DOOM DANCING, FREEDOM CLEOPATRA, PURE RUNNER; Documentary: ADAPTATION HOLES, COAST RAINBOW, CUPBOARD SINNERS; Drama: MOB DUFFEL, WEST LION; Family: BLUES INSTINCT, MOVIE SHAKESPEARE, SPINAL ROCKY, SPLASH GUMP; Foreign: CALENDAR GUNFIGHT, CHOCOLATE DUCK; Games: SEVEN SWARM; Horror: ELEPHANT TROJAN, PANIC CLUB; Sports: DROP WATERFRONT, INSTINCT AIRPORT; Travel: HAUNTED ANTITRUST                                                                                                                                                                                                                                                                                                                                                               |
| KEVIN       | Action: AMERICAN CIRCUS, PRIMARY GLASS; Animation: DOUBLE WRATH, MASSAGE IMAGE, MISSION ZOOLANDER; Children: POLISH BROOKLYN, SABRINA MIDNIGHT; Comedy: HATE HANDICAP, SWEDEN SHINING; Drama: CONQUERER NUTS, DALMATIONS SWEDEN; Family: DATE SPEED; Foreign: FICTION CHRISTMAS; Music: BOOGIE AMELIE, HEAVENLY GUN; New: DESTINY SATURDAY, LOVERBOY ATTACKS; Sci-Fi: CITIZEN SHREK; Sports: HOLES BRANNIGAN, MUMMY CREATURES; Travel: TROUBLE DATE                                                                                                                                                                                                                                                                                                                                                                                                            |
| RIP         | Action: AMERICAN CIRCUS, FOOL MOCKINGBIRD, FORREST SONS, RINGS HEARTBREAKERS; Animation: DONNIE ALLEY, MASSAGE IMAGE, OSCAR GOLD; Children: HALL CASSIDY, POLISH BROOKLYN; Comedy: LONELY ELEPHANT, TRAMP OTHERS; Documentary: MADISON TRAP; Drama: CRAFT OUTFIELD, DESTINATION JERK, SAINTS BRIDE; Family: CHOCOLAT HARRY, GABLES METROPOLIS, PITTSBURGH HUNCHBACK, RANGE MOONWALKER, SIEGE MADRE; Foreign: CYCLONE FAMILY, SORORITY QUEEN; Horror: ALABAMA DEVIL, ARABIA DOGMA, TEXAS WATCH, TRAIN BUNCH; New: BOULEVARD MOB, BRANNIGAN SUNRISE, FRONTIER CABIN, OKLAHOMA JUMANJI; Sci-Fi: GUYS FALCON; Sports: SATURDAY LAMBS; Travel: BUCKET BROTHERHOOD                                                                                                                                                                                                   |
| JULIA       | Action: AMADEUS HOLY, MOCKINGBIRD HOLLYWOOD; Animation: SLEEPLESS MONSOON, TELEMARK HEARTBREAKERS, WONKA SEA; Children: SWEETHEARTS SUSPECTS, TIES HUNGER; Documentary: BONNIE HOLOCAUST, CIDER DESIRE, YOUNG LANGUAGE; Drama: CONEHEADS SMOOCHY, SCORPION APOLLO; Family: EFFECT GLADIATOR, GLADIATOR WESTWARD, PILOT HOOSIERS, PITTSBURGH HUNCHBACK, PRESIDENT BANG; Foreign: KISS GLORY; Horror: ARABIA DOGMA, FREDDY STORM, HIGH ENCINO, MONTEREY LABYRINTH, SPIRIT FLINTSTONES, STRANGERS GRAFFITI, TRAIN BUNCH; Music: HANOVER GALAXY, INSIDER ARIZONA, JAWBREAKER BROOKLYN, LUCKY FLYING; Sci-Fi: OPEN AFRICAN, WEEKEND PERSONAL; Sports: KRAMER CHOCOLATE; Travel: GAMES BOWFINGER                                                                                                                                                                     |
| WOODY       | Action: ENTRAPMENT SATISFACTION, MIDNIGHT WESTWARD, SHRUNK DIVINE; Animation: DUCK RACER, ROOM ROMAN, SNOWMAN ROLLERCOASTER, WAIT CIDER; Classics: ALICE FANTASIA, GILMORE BOILED, PAJAMA JAWBREAKER; Comedy: KNOCK WARLOCK; Documentary: BEACH HEARTBREAKERS, WIFE TURN; Drama: BUNCH MINDS, SHOOTIST SUPERFLY, SPICE SORORITY; Family: ATLANTIS CAUSE, PILOT HOOSIERS; Foreign: TRAP GUYS; Games: LAMBS CINCINATTI, MOONWALKER FOOL, SPY MILE; Music: BIRCH ANTITRUST, TELEGRAPH VOYAGE; New: BREAKING HOME, MAIDEN HOME, WYOMING STORM; Sci-Fi: NONE SPIKING; Sports: DURHAM PANKY, LOSER HUSTLER, NEIGHBORS CHARADE                                                                                                                                                                                                                                        |
| ALEC        | Action: BULL SHAWSHANK; Children: CABIN FLASH, MAGIC MALLRATS, UPTOWN YOUNG; Classics: CENTER DINOSAUR, JEOPARDY ENCINO, SUMMER SCARFACE; Comedy: FREEDOM CLEOPATRA, HUSTLER PARTY; Documentary: SMOKING BARBARELLA; Drama: BLADE POLISH, CONEHEADS SMOOCHY, ENCOUNTERS CURTAIN, VIRGIN DAISY; Family: EFFECT GLADIATOR; Foreign: FICTION CHRISTMAS; Games: OUTBREAK DIVINE; Music: CHAMBER ITALIAN, INSIDER ARIZONA; New: DESTINY SATURDAY, HOURS RAGE, MONEY HAROLD; Sci-Fi: EXPRESS LONELY, IDENTITY LOVER, REIGN GENTLEMEN; Sports: ALADDIN CALENDAR, JOON NORTHWEST, LIBERTY MAGNIFICENT; Travel: FUGITIVE MAGUIRE                                                                                                                                                                                                                                        |
| SANDRA      | Action: EXCITEMENT EVE, FIREHOUSE VIETNAM, RINGS HEARTBREAKERS, STAGECOACH ARMAGEDDON; Classics: GILBERT PELICAN; Documentary: ACADEMY DINOSAUR, VIRGINIAN PLUTO; Drama: BEETHOVEN EXORCIST; Family: BANG KWAI, DUMBO LUST; Foreign: MATRIX SNOWMAN; Horror: FAMILY SWEET; Music: SILENCE KANE; New: BIRDS PERDITION, FLASH WARS; Sci-Fi: BEVERLY OUTLAW; Sports: DUDE BLINDNESS; Travel: BOONDOCK BALLROOM, ENOUGH RAGING                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| SISSY       | Action: SHRUNK DIVINE, SKY MIRACLE; Animation: TELEMARK HEARTBREAKERS; Comedy: CRAZY HOME, FERRIS MOTHER, WISDOM WORKER; Documentary: COAST RAINBOW; Drama: CHITTY LOCK, GONE TROUBLE, MOB DUFFEL, ROCKY WAR; Family: PRIX UNDEFEATED; Foreign: GREEK EVERYONE, HOOSIERS BIRDCAGE; New: CLYDE THEORY; Sci-Fi: OPEN AFRICAN; Travel: BORN SPINAL, FACTORY DRAGON                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| TIM         | Animation: PACKER MADIGAN; Children: UPTOWN YOUNG; Classics: LIGHTS DEER, SNATCHERS MONTEZUMA; Documentary: CUPBOARD SINNERS, DEEP CRUSADE, HOMEWARD CIDER; Drama: HAROLD FRENCH, MOB DUFFEL; Family: FEUD FROGMEN; Foreign: CALENDAR GUNFIGHT, HOOSIERS BIRDCAGE, MEET CHOCOLATE, PEARL DESTINY; Horror: BEHAVIOR RUNAWAY; Music: WIZARD COLDBLOODED; New: CHAPLIN LICENSE; Sci-Fi: FIDDLER LOST; Sports: CRUSADE HONEY, MUMMY CREATURES, PEACH INNOCENT; Travel: BOILED DARES, BUCKET BROTHERHOOD                                                                                                                                                                                                                                                                                                                                                            |
| MILLA       | Action: BAREFOOT MANCHURIAN, DREAM PICKUP, MIDNIGHT WESTWARD; Animation: CLASH FREDDY, JUGGLER HARDLY; Children: DAUGHTER MADIGAN, ROBBERS JOON, WRONG BEHAVIOR; Classics: PREJUDICE OLEANDER; Comedy: RUSHMORE MERMAID; Documentary: RAIDERS ANTITRUST; Drama: JACKET FRISCO, NECKLACE OUTBREAK, SEATTLE EXPECATIONS; Foreign: CALENDAR GUNFIGHT; Games: FEATHERS METAL; Horror: ROCK INSTINCT, TEMPLE ATTRACTION, WATERSHIP FRONTIER; New: FATAL HAUNTED; Sci-Fi: WHISPERER GIANT; Sports: CHANCE RESURRECTION, PEACH INNOCENT; Travel: TEEN APOLLO                                                                                                                                                                                                                                                                                                          |
| AUDREY      | Action: SIDE ARK; Children: STRANGER STRANGERS; Classics: LOATHING LEGALLY, VOLUME HOUSE; Comedy: CAPER MOTIONS, CONTROL ANTHEM, KNOCK WARLOCK; Documentary: FRENCH HOLIDAY, HALLOWEEN NUTS, SHIP WONDERLAND; Drama: CONEHEADS SMOOCHY; Family: ATLANTIS CAUSE; Foreign: KANE EXORCIST, USUAL UNTOUCHABLES, WHALE BIKINI; Games: HUMAN GRAFFITI; Music: DORADO NOTTING; New: BOULEVARD MOB, REDEMPTION COMFORTS, STING PERSONAL; Sports: GUNFIGHTER MUSSOLINI, PEAK FOREVER, SENSE GREEK, SQUAD FISH; Travel: CASSIDY WYOMING                                                                                                                                                                                                                                                                                                                                  |
| JUDY        | Action: QUEST MUSSOLINI, RINGS HEARTBREAKERS, RUGRATS SHAKESPEARE; Animation: NASH CHOCOLAT; Documentary: MODERN DORADO; Foreign: BALLROOM MOCKINGBIRD, CYCLONE FAMILY, ROCKETEER MOTHER; Horror: ARACHNOPHOBIA ROLLERCOASTER; Sci-Fi: SOLDIERS EVOLUTION; Sports: ALADDIN CALENDAR, DROP WATERFRONT, GUNFIGHTER MUSSOLINI, MUSSOLINI SPOILERS; Travel: TROUBLE DATE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| BURT        | Action: TRUMAN CRAZY; Animation: DOUBLE WRATH, MENAGERIE RUSHMORE; Classics: JERK PAYCHECK, RIGHT CRANES; Comedy: HEAVEN FREEDOM; Documentary: HOMEWARD CIDER, INTOLERABLE INTENTIONS; Family: DINOSAUR SECRETARY, KING EVOLUTION, RANGE MOONWALKER; Foreign: ALIEN CENTER, GREEK EVERYONE, KANE EXORCIST; Games: GRINCH MASSAGE, GUN BONNIE, WANDA CHAMBER; Horror: COMMANDMENTS EXPRESS, MOTIONS DETAILS, REAP UNFAITHFUL; Music: HOME PITY; New: ENDING CROWDS, MONEY HAROLD; Sci-Fi: BLINDNESS GUN, GUYS FALCON, RANDOM GO; Sports: IMAGE PRINCESS, TALENTED HOMICIDE; Travel: VALENTINE VANISHING                                                                                                                                                                                                                                                         |
| VAL         | Action: AMADEUS HOLY, DRIFTER COMMANDMENTS, PRIMARY GLASS; Animation: CANYON STOCK, WATCH TRACY; Children: JERSEY SASSY, MAKER GABLES, MODEL FISH, STRANGER STRANGERS; Classics: PATIENT SISTER, PREJUDICE OLEANDER; Comedy: CAPER MOTIONS, FIREBALL PHILADELPHIA, LONELY ELEPHANT, MALLRATS UNITED; Documentary: UNITED PILOT, WEDDING APOLLO; Drama: CHITTY LOCK, DALMATIONS SWEDEN, PATHS CONTROL; Foreign: INTRIGUE WORST, TOWN ARK; Games: LAMBS CINCINATTI, STAMPEDE DISTURBING; Horror: CARRIE BUNCH, ELEPHANT TROJAN; Music: ALASKA PHANTOM, JAWBREAKER BROOKLYN, YOUTH KICK; Sci-Fi: METROPOLIS COMA, STALLION SUNDANCE; Sports: ALADDIN CALENDAR, DUDE BLINDNESS; Travel: SHAWSHANK BUBBLE, WORKING MICROCOSMOS                                                                                                                                      |
| TOM         | Action: CADDYSHACK JEDI, KISSING DOLLS, SHRUNK DIVINE; Animation: CLUB GRAFFITI, DESIRE ALIEN, DONNIE ALLEY, MISSION ZOOLANDER; Children: IDOLS SNATCHERS, MAGIC MALLRATS, STRANGER STRANGERS; Comedy: FREEDOM CLEOPATRA; Documentary: EGG IGBY; Drama: NECKLACE OUTBREAK, SPICE SORORITY; Family: INDIAN LOVE; Foreign: GENTLEMEN STAGE, PURPLE MOVIE; Horror: ANALYZE HOOSIERS, TARZAN VIDEOTAPE; Music: LEGEND JEDI; New: IDAHO LOVE; Sci-Fi: FRISCO FORREST, STALLION SUNDANCE; Sports: CONGENIALITY QUEST, NEIGHBORS CHARADE                                                                                                                                                                                                                                                                                                                              |
| GOLDIE      | Animation: INCH JET, PRIDE ALAMO, PUNK DIVORCE; Children: COMANCHEROS ENEMY; Classics: HOLY TADPOLE, SNATCHERS MONTEZUMA; Documentary: MOD SECRETARY; Drama: PITY BOUND, SEA VIRGIN; Family: BILKO ANONYMOUS, JASON TRAP, PRIX UNDEFEATED, ROBBERY BRIGHT; Foreign: EVERYONE CRAFT, HOOSIERS BIRDCAGE, POLLOCK DELIVERANCE; Horror: DESERT POSEIDON, HIGH ENCINO; New: FLAMINGOS CONNECTICUT, UNBREAKABLE KARATE; Sci-Fi: BINGO TALENTED, DAISY MENAGERIE, MARRIED GO, SPIRITED CASUALTIES; Sports: EXORCIST STING, MOSQUITO ARMAGEDDON, MUMMY CREATURES; Travel: OUTLAW HANKY                                                                                                                                                                                                                                                                                 |
| JOHNNY      | Action: SUSPECTS QUILLS; Animation: DESIRE ALIEN, FLYING HOOK, THIEF PELICAN; Classics: ROOTS REMEMBER; Comedy: RUSHMORE MERMAID, VELVET TERMINATOR; Documentary: ACADEMY DINOSAUR, INTOLERABLE INTENTIONS; Drama: BUNCH MINDS, HANGING DEEP, LIES TREATMENT; Foreign: ALAMO VIDEOTAPE, CATCH AMISTAD; Games: ROXANNE REBEL, SPY MILE; Horror: ARABIA DOGMA, KARATE MOON, ROCK INSTINCT, SIMON NORTH; New: CLYDE THEORY, VAMPIRE WHALE; Sci-Fi: CONNECTICUT TRAMP, GRAFFITI LOVE, HAMLET WISDOM, REIGN GENTLEMEN; Sports: INSTINCT AIRPORT; Travel: DISCIPLE MOTHER, SUPERFLY TRIP                                                                                                                                                                                                                                                                             |
| JODIE       | Action: CROW GREASE, DARN FORRESTER, DREAM PICKUP; Classics: BEAST HUNCHBACK, DRACULA CRYSTAL; Comedy: CLOSER BANG, PARADISE SABRINA; Documentary: CIDER DESIRE, FRENCH HOLIDAY, MADISON TRAP; Drama: DIARY PANIC, VIETNAM SMOOCHY; Family: REMEMBER DIARY; Foreign: BROOKLYN DESERT, PET HAUNTING; Games: MOONSHINE CABIN; Horror: AFFAIR PREJUDICE, SIMON NORTH; Music: BOOGIE AMELIE, REDS POCUS; New: FATAL HAUNTED; Sci-Fi: BEVERLY OUTLAW, DAISY MENAGERIE, TROJAN TOMORROW; Sports: GROOVE FICTION, PICKUP DRIVING, SENSE GREEK; Travel: SHANGHAI TYCOON, TOMATOES HELLFIGHTERS                                                                                                                                                                                                                                                                         |
| TOM         | Animation: SUNRISE LEAGUE; Children: LABYRINTH LEAGUE; Comedy: KNOCK WARLOCK, MEMENTO ZOOLANDER, VALLEY PACKER; Documentary: POCUS PULP, RAINBOW SHOCK; Drama: TRANSLATION SUMMER; Family: CHASING FIGHT, FEUD FROGMEN, SUPER WYOMING; Foreign: KISS GLORY, ROCKETEER MOTHER; Games: MADRE GABLES, SUIT WALLS; Horror: ANALYZE HOOSIERS, LOLA AGENT, LOVE SUICIDES, PATTON INTERVIEW, TARZAN VIDEOTAPE, UNDEFEATED DALMATIONS; Music: FREAKY POCUS, PERSONAL LADYBUGS; New: FLAMINGOS CONNECTICUT; Sci-Fi: SILVERADO GOLDFINGER; Sports: TIGHTS DAWN; Travel: OUTLAW HANKY                                                                                                                                                                                                                                                                                     |
| KIRK        | Action: AMADEUS HOLY, BAREFOOT MANCHURIAN, BULL SHAWSHANK; Animation: BORROWERS BEDAZZLED, DOGMA FAMILY, FORRESTER COMANCHEROS; Children: FURY MURDER, MURDER ANTITRUST, SPLENDOR PATTON; Classics: CONSPIRACY SPIRIT; Comedy: ELEMENT FREDDY, HEAVEN FREEDOM; Drama: SPICE SORORITY, WARDROBE PHANTOM; Family: CHOCOLAT HARRY, GLADIATOR WESTWARD, GREASE YOUTH, NETWORK PEAK, RUSH GOODFELLAS; Foreign: LOST BIRD, MULHOLLAND BEAST; Music: CLUE GRAIL, INSIDER ARIZONA; Sports: ARTIST COLDBLOODED, MOSQUITO ARMAGEDDON, TUXEDO MILE                                                                                                                                                                                                                                                                                                                        |
| NICK        | Action: SPEAKEASY DATE, WOMEN DORADO; Children: TEQUILA PAST, TOOTSIE PILOT; Comedy: DOOM DANCING, MULAN MOON; Documentary: BEACH HEARTBREAKERS, WAGON JAWS; Drama: VIRGIN DAISY; Family: BRAVEHEART HUMAN, EFFECT GLADIATOR; Games: MONSOON CAUSE, PRIVATE DROP; Horror: STRANGERS GRAFFITI, ZHIVAGO CORE; New: BUTTERFLY CHOCOLAT, JUMANJI BLADE, RUNAWAY TENENBAUMS, VARSITY TRIP; Sports: CONGENIALITY QUEST, FLATLINERS KILLER, HOLES BRANNIGAN, MOSQUITO ARMAGEDDON, TALENTED HOMICIDE, TRADING PINOCCHIO; Travel: BOILED DARES, BORN SPINAL, HORROR REIGN, SHANGHAI TYCOON, TEEN APOLLO                                                                                                                                                                                                                                                                 |
| REESE       | Action: CAMPUS REMEMBER; Animation: ALTER VICTORY, FORRESTER COMANCHEROS, TRACY CIDER; Children: BENEATH RUSH; Classics: JERK PAYCHECK, LOVER TRUMAN, TOMORROW HUSTLER; Comedy: KNOCK WARLOCK, PINOCCHIO SIMON, WISDOM WORKER; Documentary: COAST RAINBOW, DEEP CRUSADE, HAWK CHILL, UNITED PILOT; Family: SECRETS PARADISE, SLUMS DUCK, WILLOW TRACY; Foreign: CRYSTAL BREAKING, HIGHBALL POTTER, INTRIGUE WORST, TOWN ARK; Games: CANDLES GRAPES, LAMBS CINCINATTI; Horror: BEHAVIOR RUNAWAY; Music: SCALAWAG DUCK, SILENCE KANE; New: UNBREAKABLE KARATE; Sci-Fi: RANDOM GO; Sports: CRANES RESERVOIR, INSTINCT AIRPORT, KRAMER CHOCOLATE                                                                                                                                                                                                                   |
| PARKER      | Action: ARK RIDGEMONT, WORST BANGER; Animation: INCH JET, SONS INTERVIEW; Children: SCARFACE BANG, TIES HUNGER; Classics: RIGHT CRANES; Comedy: JAWS HARRY; Documentary: HAWK CHILL; Drama: SAVANNAH TOWN; Family: SPINAL ROCKY; Foreign: MEET CHOCOLATE; Horror: SPIRIT FLINTSTONES; Music: BALLOON HOMEWARD, CONFIDENTIAL INTERVIEW, LUCKY FLYING, WIZARD COLDBLOODED; New: IDAHO LOVE, LOVERBOY ATTACKS; Sci-Fi: EXPRESS LONELY, FISH OPUS; Sports: DRIVER ANNIE, INSTINCT AIRPORT, SQUAD FISH                                                                                                                                                                                                                                                                                                                                                              |
| JULIA       | Action: BERETS AGENT; Animation: ARGONAUTS TOWN; Classics: JERK PAYCHECK; Comedy: GROUNDHOG UNCUT; Documentary: MIGHTY LUCK, PELICAN COMFORTS, ROAD ROXANNE, WIFE TURN; Drama: CONEHEADS SMOOCHY, SHOOTIST SUPERFLY, UNFAITHFUL KILL, VIRGIN DAISY; Family: BANG KWAI, EFFECT GLADIATOR; Foreign: SCISSORHANDS SLUMS; Games: LAMBS CINCINATTI; Horror: GASLIGHT CRUSADE, ROCK INSTINCT; New: ANGELS LIFE, TROOPERS METAL; Sci-Fi: UNFORGIVEN ZOOLANDER; Sports: SECRETARY ROUGE; Travel: DISCIPLE MOTHER, SHINING ROSES                                                                                                                                                                                                                                                                                                                                        |
| FRANCES     | Action: ENTRAPMENT SATISFACTION; Animation: CHAMPION FLATLINERS, DOUBLE WRATH, GANGS PRIDE; Comedy: BRINGING HYSTERICAL; Documentary: BROTHERHOOD BLANKET, CIDER DESIRE, COAST RAINBOW, EXPENDABLE STALLION, SAGEBRUSH CLUELESS, UNTOUCHABLES SUNRISE; Family: FINDING ANACONDA, GABLES METROPOLIS, HOMICIDE PEACH; Foreign: MADNESS ATTACKS, PURPLE MOVIE, SHREK LICENSE; Games: DARLING BREAKING; Horror: LADY STAGE, UNDEFEATED DALMATIONS; New: EAGLES PANKY; Sci-Fi: FIDDLER LOST, MARRIED GO; Sports: MERMAID INSECTS, MOTHER OLEANDER; Travel: OTHERS SOUP                                                                                                                                                                                                                                                                                              |
| ANNE        | Action: DRAGON SQUAD, LUST LOCK, MINDS TRUMAN, UPRISING UPTOWN; Animation: HORN WORKING; Children: HOLLYWOOD ANONYMOUS; Classics: IRON MOON, REQUIEM TYCOON; Documentary: HARDLY ROBBERS, HAWK CHILL; Drama: ENCOUNTERS CURTAIN, PATHS CONTROL, RACER EGG; Family: APACHE DIVINE, GANDHI KWAI, HALF OUTFIELD; Foreign: DANGEROUS UPTOWN, MOON BUNCH; Horror: LADY STAGE, REAP UNFAITHFUL; Music: WIZARD COLDBLOODED; New: MANNEQUIN WORST; Sci-Fi: CINCINATTI WHISPERER, CROWDS TELEMARK; Sports: RIDER CADDYSHACK; Travel: SMILE EARRING, WINDOW SIDE                                                                                                                                                                                                                                                                                                         |
| NATALIE     | Action: CADDYSHACK JEDI, FANTASY TROOPERS, FOOL MOCKINGBIRD, HILLS NEIGHBORS, REAR TRADING, RINGS HEARTBREAKERS; Animation: DOORS PRESIDENT; Children: TWISTED PIRATES; Comedy: CONNECTION MICROCOSMOS, PERFECT GROOVE; Documentary: DOZEN LION, EGG IGBY, MAJESTIC FLOATS; Drama: HAROLD FRENCH, KWAI HOMEWARD, TORQUE BOUND; Family: HOUSE DYNAMITE, JASON TRAP, NETWORK PEAK, SIEGE MADRE, SPINAL ROCKY; Foreign: WAR NOTTING; Games: FEATHERS METAL, MONSOON CAUSE, STAMPEDE DISTURBING; New: NUTS TIES; Sci-Fi: LICENSE WEEKEND, UNFORGIVEN ZOOLANDER; Sports: GRACELAND DYNAMITE, HOLES BRANNIGAN; Travel: ESCAPE METROPOLIS, OTHERS SOUP                                                                                                                                                                                                                |
| GARY        | Action: HANDICAP BOONDOCK; Animation: CAROL TEXAS, INSECTS STONE; Children: WRONG BEHAVIOR; Classics: LOATHING LEGALLY, TIMBERLAND SKY, TOMORROW HUSTLER; Documentary: NORTH TEQUILA, ROAD ROXANNE; Family: AFRICAN EGG, BEDAZZLED MARRIED; Foreign: CALENDAR GUNFIGHT; Games: HEAD STRANGER; Horror: ROCK INSTINCT, WORLD LEATHERNECKS; New: JUMANJI BLADE, RUN PACIFIC, STOCK GLASS, WILD APOLLO; Sci-Fi: CITIZEN SHREK; Sports: HOLES BRANNIGAN, PICKUP DRIVING, RIVER OUTLAW, VICTORY ACADEMY; Travel: BUCKET BROTHERHOOD                                                                                                                                                                                                                                                                                                                                  |
| CARMEN      | Action: PATRIOT ROMAN, TRUMAN CRAZY; Children: HOLOCAUST HIGHBALL, LEGALLY SECRETARY, ZOOLANDER FICTION; Classics: DRACULA CRYSTAL, FROST HEAD, VOYAGE LEGALLY; Comedy: GUNFIGHT MOON; Documentary: HAWK CHILL, SMOKING BARBARELLA; Foreign: GRAPES FURY, MIXED DOORS, POLLOCK DELIVERANCE; Games: MOONSHINE CABIN; Horror: BOWFINGER GABLES; Music: AMELIE HELLFIGHTERS, TELEGRAPH VOYAGE; New: BREAKING HOME, BUTCH PANTHER, PHANTOM GLORY; Sci-Fi: DAISY MENAGERIE, RANDOM GO; Sports: JADE BUNCH, LESSON CLEOPATRA; Travel: TEEN APOLLO                                                                                                                                                                                                                                                                                                                    |
| MENA        | Action: CASUALTIES ENCINO, PRIMARY GLASS; Animation: EARLY HOME; Children: MICROCOSMOS PARADISE; Classics: GILMORE BOILED, REQUIEM TYCOON; Documentary: ACADEMY DINOSAUR, BEACH HEARTBREAKERS, MIGHTY LUCK; Family: RESURRECTION SILVERADO; Foreign: VISION TORQUE, WASH HEAVENLY; Games: ICE CROSSING, LAMBS CINCINATTI; Horror: ALABAMA DEVIL, CARRIE BUNCH; Music: BALLOON HOMEWARD, WIZARD COLDBLOODED; New: BUTTERFLY CHOCOLAT, INTERVIEW LIAISONS, JUMANJI BLADE, JUNGLE CLOSER, VARSITY TRIP; Sci-Fi: ENGLISH BULWORTH; Sports: DROP WATERFRONT, MILE MULAN; Travel: CONTACT ANONYMOUS, FELLOWSHIP AUTUMN, GUMP DATE, LIAISONS SWEET                                                                                                                                                                                                                    |
| PENELOPE    | Action: EXCITEMENT EVE; Animation: JUGGLER HARDLY, LAWLESS VISION, OZ LIAISONS; Classics: CORE SUIT, WESTWARD SEABISCUIT; Comedy: LION UNCUT, RUSHMORE MERMAID, SUBMARINE BED; Documentary: CAUSE DATE, CIDER DESIRE; Family: GANDHI KWAI; Games: MADRE GABLES, STATE WASTELAND, SUIT WALLS; Horror: FAMILY SWEET, MOTIONS DETAILS, PARIS WEEKEND, WORLD LEATHERNECKS; Music: OLEANDER CLUE; New: TROOPERS METAL; Sci-Fi: ENGLISH BULWORTH; Sports: SATURDAY LAMBS; Travel: BOILED DARES, WORKER TARZAN                                                                                                                                                                                                                                                                                                                                                        |
| FAY         | Animation: WATCH TRACY; Children: JERSEY SASSY; Classics: SNATCHERS MONTEZUMA; Documentary: SECRET GROUNDHOG; Drama: HARRY IDAHO, RACER EGG, SHOOTIST SUPERFLY, SPICE SORORITY; Family: MOVIE SHAKESPEARE; Foreign: JET NEIGHBORS; Horror: AIRPORT POLLOCK; New: FLAMINGOS CONNECTICUT, FRONTIER CABIN; Sci-Fi: NEMO CAMPUS, VACATION BOONDOCK; Sports: ANONYMOUS HUMAN, CRUSADE HONEY, MUSSOLINI SPOILERS; Travel: BIRD INDEPENDENCE, FELLOWSHIP AUTUMN                                                                                                                                                                                                                                                                                                                                                                                                       |
| DAN         | Action: HILLS NEIGHBORS; Animation: TITANIC BOONDOCK; Children: GHOST GROUNDHOG; Classics: SUMMER SCARFACE; Documentary: INDEPENDENCE HOTEL; Drama: LIES TREATMENT, REUNION WITCHES; Family: BEDAZZLED MARRIED, SIEGE MADRE; Foreign: HOLIDAY GAMES, SCHOOL JACKET; Games: DIVINE RESURRECTION, SEVEN SWARM; Horror: MONTEREY LABYRINTH, WATERSHIP FRONTIER; Music: INSIDER ARIZONA, VANISHING ROCKY; New: DESTINY SATURDAY, RUN PACIFIC; Sci-Fi: EYES DRIVING, TITANS JERK; Sports: GROOVE FICTION, JADE BUNCH, STEERS ARMAGEDDON, STRAIGHT HOURS; Travel: BOONDOCK BALLROOM, FELLOWSHIP AUTUMN, SUPERFLY TRIP                                                                                                                                                                                                                                                |
| JUDE        | Action: QUEST MUSSOLINI, REAR TRADING; Animation: CHAMPION FLATLINERS; Children: STRANGELOVE DESIRE, TWISTED PIRATES; Classics: TIMBERLAND SKY; Comedy: FIREBALL PHILADELPHIA, KNOCK WARLOCK; Documentary: BROTHERHOOD BLANKET, HALLOWEEN NUTS; Family: DATE SPEED, HOUSE DYNAMITE; Foreign: ALLEY EVOLUTION, CROSSING DIVORCE, MULHOLLAND BEAST; Games: ICE CROSSING; Horror: ARABIA DOGMA, CARRIE BUNCH, DRUMS DYNAMITE, ROCK INSTINCT; Music: MONSTER SPARTACUS, SCALAWAG DUCK; New: CHINATOWN GLADIATOR, EAGLES PANKY, FRONTIER CABIN, PLATOON INSTINCT; Sci-Fi: CAMELOT VACATION, CITIZEN SHREK, OPEN AFRICAN, RANDOM GO                                                                                                                                                                                                                                  |
| CHRISTIAN   | Action: HILLS NEIGHBORS, MAGNOLIA FORRESTER; Animation: DOORS PRESIDENT, LUKE MUMMY; Children: BACKLASH UNDEFEATED, BETRAYED REAR, MAKER GABLES, SABRINA MIDNIGHT; Classics: MILLION ACE; Comedy: CAPER MOTIONS, DOOM DANCING, OPERATION OPERATION, SUBMARINE BED; Documentary: CUPBOARD SINNERS, PRINCESS GIANT; Family: CONFUSED CANDLES; Foreign: CATCH AMISTAD, INNOCENT USUAL, RESERVOIR ADAPTATION; Games: FEATHERS METAL, FIRE WOLVES; Horror: SINNERS ATLANTIS, STREETCAR INTENTIONS; Music: HOME PITY, JAWBREAKER BROOKLYN; New: MAIDEN HOME, NUTS TIES, OKLAHOMA JUMANJI; Sci-Fi: DIVIDE MONSTER, MOURNING PURPLE; Sports: CHANCE RESURRECTION, DRIVER ANNIE                                                                                                                                                                                         |
| DUSTIN      | Action: CELEBRITY HORN, DARKO DORADO; Animation: CAROL TEXAS, DONNIE ALLEY, OSCAR GOLD; Children: STRANGER STRANGERS; Classics: PREJUDICE OLEANDER, SUMMER SCARFACE; Documentary: BILL OTHERS, CAUSE DATE, EXPENDABLE STALLION, PACIFIC AMISTAD, RAINBOW SHOCK, VILLAIN DESPERATE; Drama: HOBBIT ALIEN, SEA VIRGIN; Family: AFRICAN EGG, CONVERSATION DOWNHILL, VIRTUAL SPOILERS; Foreign: POLLOCK DELIVERANCE, WONDERFUL DROP; Games: AUTUMN CROW; Horror: PULP BEVERLY, RULES HUMAN; Music: BANGER PINOCCHIO; Sci-Fi: METROPOLIS COMA; Travel: BORN SPINAL                                                                                                                                                                                                                                                                                                   |
| HENRY       | Action: DRIFTER COMMANDMENTS; Animation: DOGMA FAMILY, SLEEPLESS MONSOON, WONKA SEA; Children: HOLLYWOOD ANONYMOUS, UPTOWN YOUNG; Classics: EXTRAORDINARY CONQUERER; Comedy: RUSHMORE MERMAID; Documentary: BONNIE HOLOCAUST, CHICKEN HELLFIGHTERS, WAGON JAWS; Drama: CONQUERER NUTS, CRAFT OUTFIELD, SCORPION APOLLO; Family: APACHE DIVINE, DUMBO LUST, LOUISIANA HARRY, PILOT HOOSIERS; Foreign: GRAPES FURY, KANE EXORCIST, WHALE BIKINI; Games: SPY MILE; Horror: DESERT POSEIDON, FREDDY STORM, PARIS WEEKEND, PATTON INTERVIEW, SPIRIT FLINTSTONES; Music: CHAMBER ITALIAN; New: HOURS RAGE, MAIDEN HOME; Sci-Fi: CONNECTICUT TRAMP, DIVIDE MONSTER; Travel: FACTORY DRAGON, SHANE DARKNESS, SHANGHAI TYCOON                                                                                                                                           |
| CHRISTIAN   | Animation: HORN WORKING, OZ LIAISONS, PUNK DIVORCE; Children: HOLLYWOOD ANONYMOUS; Classics: LOVER TRUMAN; Drama: MOB DUFFEL, SAVANNAH TOWN; Family: OPPOSITE NECKLACE, SENSIBILITY REAR, SPLASH GUMP; Games: GLORY TRACY, LAMBS CINCINATTI; Horror: LOVE SUICIDES, WORLD LEATHERNECKS; Music: RUNNER MADIGAN, SCALAWAG DUCK; Sci-Fi: DIVIDE MONSTER, GRAFFITI LOVE, SPIRITED CASUALTIES; Sports: DIVORCE SHINING, GRACELAND DYNAMITE, LIBERTY MAGNIFICENT; Travel: FELLOWSHIP AUTUMN, LIAISONS SWEET, OUTLAW HANKY                                                                                                                                                                                                                                                                                                                                            |
| JAYNE       | Action: GRAIL FRANKENSTEIN, QUEST MUSSOLINI; Children: POLISH BROOKLYN; Classics: HYDE DOCTOR, VOYAGE LEGALLY; Comedy: GROUNDHOG UNCUT, HEDWIG ALTER; Documentary: BROTHERHOOD BLANKET, CAUSE DATE, EXPENDABLE STALLION, HALLOWEEN NUTS, INDEPENDENCE HOTEL; Drama: EDGE KISSING; Family: DINOSAUR SECRETARY, HOMICIDE PEACH; Foreign: AGENT TRUMAN, BROOKLYN DESERT, CRYSTAL BREAKING, FRIDA SLIPPER; Games: DARLING BREAKING, HAUNTING PIANIST; Horror: WORLD LEATHERNECKS; Music: BANGER PINOCCHIO, HANOVER GALAXY; New: INTERVIEW LIAISONS; Sports: ARTIST COLDBLOODED, RECORDS ZORRO; Travel: WOLVES DESIRE, WORKER TARZAN                                                                                                                                                                                                                                |
| CAMERON     | Animation: CHAMPION FLATLINERS, DARES PLUTO; Children: HALL CASSIDY; Classics: DRACULA CRYSTAL, OCTOBER SUBMARINE; Comedy: VALLEY PACKER; Documentary: DOZEN LION, VIRGINIAN PLUTO; Drama: DESTINATION JERK, VIRGIN DAISY; Games: SEVEN SWARM; Music: ELF MURDER; Sci-Fi: BINGO TALENTED, TITANS JERK; Sports: LESSON CLEOPATRA, SATISFACTION CONFIDENTIAL, SLIPPER FIDELITY; Travel: COMA HEAD, WOLVES DESIRE                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| RAY         | Animation: MENAGERIE RUSHMORE; Children: CASPER DRAGONFLY, EMPIRE MALKOVICH, STRANGELOVE DESIRE; Classics: ARIZONA BANG, IRON MOON, ISLAND EXORCIST, PREJUDICE OLEANDER; Comedy: FREEDOM CLEOPATRA; Documentary: ADAPTATION HOLES, NATIONAL STORY, UNITED PILOT; Family: GABLES METROPOLIS, MANCHURIAN CURTAIN, SPLASH GUMP; Games: MOONWALKER FOOL, OUTBREAK DIVINE; Horror: LADY STAGE; Music: UNCUT SUICIDES, WIZARD COLDBLOODED; New: IDAHO LOVE; Sci-Fi: METROPOLIS COMA, SUICIDES SILENCE; Sports: ALADDIN CALENDAR, CRUSADE HONEY, EVOLUTION ALTER; Travel: BOONDOCK BALLROOM, BORN SPINAL, FELLOWSHIP AUTUMN, MADIGAN DORADO                                                                                                                                                                                                                           |
| ANGELA      | Action: BRIDE INTRIGUE, GOSFORD DONNIE; Animation: LUKE MUMMY, NASH CHOCOLAT; Children: JUMPING WRATH, ROBBERS JOON, STRANGELOVE DESIRE; Classics: ISLAND EXORCIST, PREJUDICE OLEANDER, VOYAGE LEGALLY; Comedy: ELEMENT FREDDY, VELVET TERMINATOR; Documentary: METAL ARMAGEDDON; Drama: PITY BOUND; Family: JASON TRAP; Games: AUTUMN CROW, BULWORTH COMMANDMENTS, CANDLES GRAPES, MALTESE HOPE; Horror: JAPANESE RUN, PARIS WEEKEND, WATERSHIP FRONTIER; Music: CLONES PINOCCHIO, HANOVER GALAXY, LEGEND JEDI; New: FATAL HAUNTED; Sci-Fi: ARMAGEDDON LOST, FRISCO FORREST, RANDOM GO; Sports: LESSON CLEOPATRA, MILE MULAN; Travel: CASSIDY WYOMING, GAMES BOWFINGER, KICK SAVANNAH                                                                                                                                                                         |
| MARY        | Action: DEVIL DESIRE, PRIMARY GLASS, SHRUNK DIVINE, TRUMAN CRAZY; Animation: FALCON VOLUME; Children: HOLOCAUST HIGHBALL, MAKER GABLES, MURDER ANTITRUST, UPTOWN YOUNG, ZOOLANDER FICTION; Classics: REQUIEM TYCOON, VOYAGE LEGALLY; Comedy: SWEDEN SHINING; Documentary: WARS PLUTO; Drama: CHILL LUCK, DIARY PANIC, QUEEN LUKE; Family: SPINAL ROCKY; Foreign: DANGEROUS UPTOWN, GRAPES FURY, SCHOOL JACKET, WAR NOTTING; Horror: TREASURE COMMAND; New: DESTINY SATURDAY, ENDING CROWDS; Sci-Fi: BARBARELLA STREETCAR, GARDEN ISLAND; Sports: GLEAMING JAWBREAKER, PHILADELPHIA WIFE; Travel: FUGITIVE MAGUIRE, HORROR REIGN                                                                                                                                                                                                                                |
| JESSICA     | Action: BERETS AGENT, TRUMAN CRAZY; Classics: LEAGUE HELLFIGHTERS, REQUIEM TYCOON, RIGHT CRANES; Comedy: DOOM DANCING; Documentary: MIGHTY LUCK, VIRGINIAN PLUTO; Drama: SAVANNAH TOWN; Foreign: RESERVOIR ADAPTATION; Games: HEAD STRANGER, SUIT WALLS; Horror: ANALYZE HOOSIERS, SWARM GOLD; Music: DORADO NOTTING, JAWBREAKER BROOKLYN; New: CHINATOWN GLADIATOR; Sci-Fi: WHISPERER GIANT; Sports: DROP WATERFRONT; Travel: BASIC EASY, KICK SAVANNAH, MOULIN WAKE, WOLVES DESIRE                                                                                                                                                                                                                                                                                                                                                                           |
| RIP         | Action: DANCES NONE; Animation: FLOATS GARDEN; Classics: GILBERT PELICAN; Documentary: KILL BROTHERHOOD, SPOILERS HELLFIGHTERS; Drama: HANGING DEEP, QUEEN LUKE; Family: DATE SPEED, FINDING ANACONDA; Foreign: GREEK EVERYONE, HOTEL HAPPINESS, MUPPET MILE, WHALE BIKINI; Games: DAWN POND, FORWARD TEMPLE, PANKY SUBMARINE, ROXANNE REBEL, STAMPEDE DISTURBING; Horror: ALABAMA DEVIL, PATTON INTERVIEW; Music: CHAMBER ITALIAN, CLUE GRAIL, DRIVING POLISH, GREATEST NORTH; New: ATTRACTION NEWTON; Sci-Fi: EXPRESS LONELY, STALLION SUNDANCE; Sports: PERDITION FARGO; Travel: GAMES BOWFINGER, GUMP DATE                                                                                                                                                                                                                                                 |
| KENNETH     | Action: CADDYSHACK JEDI, EXCITEMENT EVE; Animation: FALCON VOLUME; Children: SANTA PARIS, SUNDANCE INVASION; Comedy: DADDY PITTSBURGH, LONELY ELEPHANT; Documentary: INTOLERABLE INTENTIONS, SHOW LORD; Drama: HANGING DEEP; Foreign: ALIEN CENTER, ILLUSION AMELIE; Games: DIVINE RESURRECTION, FEATHERS METAL; Horror: REEF SALUTE; Music: TAXI KICK; New: REDEMPTION COMFORTS; Sci-Fi: GRAFFITI LOVE; Sports: MUSSOLINI SPOILERS; Travel: BORN SPINAL, TROUBLE DATE                                                                                                                                                                                                                                                                                                                                                                                         |
| MICHELLE    | Action: SOUTH WAIT, SUSPECTS QUILLS, WATERFRONT DELIVERANCE; Animation: WAIT CIDER; Children: FARGO GANDHI, FULL FLATLINERS; Classics: DRACULA CRYSTAL, REQUIEM TYCOON; Comedy: DADDY PITTSBURGH; Documentary: INTOLERABLE INTENTIONS, SPOILERS HELLFIGHTERS; Drama: KWAI HOMEWARD; Family: BAKED CLEOPATRA, BANG KWAI; Foreign: EVERYONE CRAFT, HELLFIGHTERS SIERRA, MIXED DOORS; Games: DETAILS PACKER, PANKY SUBMARINE; Horror: BOWFINGER GABLES, STREETCAR INTENTIONS; Sports: IMAGE PRINCESS, NORTHWEST POLISH                                                                                                                                                                                                                                                                                                                                            |
| ADAM        | Action: MIDNIGHT WESTWARD; Children: IDOLS SNATCHERS, SPLENDOR PATTON, TWISTED PIRATES; Classics: TADPOLE PARK; Comedy: FIREBALL PHILADELPHIA, GROUNDHOG UNCUT, OPERATION OPERATION; Family: GLADIATOR WESTWARD; Foreign: BALLROOM MOCKINGBIRD, HAPPINESS UNITED; Games: GLORY TRACY, MARS ROMAN, WANDA CHAMBER; Sci-Fi: ANNIE IDENTITY; Sports: LOSER HUSTLER, SEABISCUIT PUNK; Travel: DISCIPLE MOTHER                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| SEAN        | Action: WATERFRONT DELIVERANCE; Animation: FLOATS GARDEN, ROOM ROMAN, SUNRISE LEAGUE; Children: IDOLS SNATCHERS; Classics: DRACULA CRYSTAL; Comedy: VELVET TERMINATOR; Documentary: SAGEBRUSH CLUELESS; Drama: WEST LION; Family: MAGUIRE APACHE; Foreign: NEWTON LABYRINTH, OPUS ICE; Games: FORWARD TEMPLE, WANDA CHAMBER; Horror: ARABIA DOGMA, PATTON INTERVIEW, STRANGERS GRAFFITI; Music: OLEANDER CLUE, REBEL AIRPORT; New: CHINATOWN GLADIATOR; Sci-Fi: EXPRESS LONELY; Sports: DIVORCE SHINING, SEABISCUIT PUNK; Travel: ENOUGH RAGING, HAUNTED ANTITRUST, MUSCLE BRIGHT                                                                                                                                                                                                                                                                              |
| GARY        | Action: QUEST MUSSOLINI, RUGRATS SHAKESPEARE, SOUTH WAIT; Animation: ARGONAUTS TOWN, DOUBLE WRATH; Classics: MAGNIFICENT CHITTY, VOLUME HOUSE; Documentary: NORTH TEQUILA; Drama: GREEDY ROOTS, PAYCHECK WAIT, SEA VIRGIN; Family: VIRTUAL SPOILERS; Foreign: CHOCOLATE DUCK, INTRIGUE WORST, MATRIX SNOWMAN; Horror: EGYPT TENENBAUMS, ZHIVAGO CORE; Music: BALLOON HOMEWARD, MASKED BUBBLE, VANISHING ROCKY; New: ATTRACTION NEWTON, BIRDS PERDITION, MASK PEACH; Sci-Fi: GRAFFITI LOVE; Sports: FLATLINERS KILLER, PEACH INNOCENT                                                                                                                                                                                                                                                                                                                           |
| MILLA       | Children: NOON PAPI; Classics: JERK PAYCHECK, LOVER TRUMAN, PATIENT SISTER; Comedy: ANTHEM LUKE, PURE RUNNER; Documentary: SPOILERS HELLFIGHTERS; Family: NATURAL STOCK, SENSIBILITY REAR; Foreign: COWBOY DOOM, CROSSING DIVORCE; Games: CANDLES GRAPES, ROXANNE REBEL, WANDA CHAMBER; Horror: HIGH ENCINO, SLEEPING SUSPECTS; New: FLASH WARS, REDEMPTION COMFORTS; Sci-Fi: ATTACKS HATE, DAISY MENAGERIE, OPEN AFRICAN; Sports: DURHAM PANKY, KRAMER CHOCOLATE, SQUAD FISH, TRADING PINOCCHIO; Travel: MADIGAN DORADO, STONE FIRE, SWEET BROTHERHOOD                                                                                                                                                                                                                                                                                                        |
| BURT        | Action: MINDS TRUMAN; Animation: LUKE MUMMY; Children: MAGIC MALLRATS; Classics: HYDE DOCTOR, ROOTS REMEMBER; Drama: CHILL LUCK; Family: KILLER INNOCENT, SENSIBILITY REAR; Foreign: COMMAND DARLING; Games: LAMBS CINCINATTI; Horror: ARABIA DOGMA, DESERT POSEIDON, FAMILY SWEET, SWARM GOLD; Music: ALASKA PHANTOM; New: HOURS RAGE, JUNGLE CLOSER, UNBREAKABLE KARATE; Sports: GRACELAND DYNAMITE, HYSTERICAL GRAIL, PEACH INNOCENT, SATURDAY LAMBS; Travel: GAMES BOWFINGER, OTHERS SOUP                                                                                                                                                                                                                                                                                                                                                                  |
| ANGELINA    | Action: STORY SIDE; Animation: DESIRE ALIEN, INTENTIONS EMPIRE; Children: BENEATH RUSH, BETRAYED REAR; Classics: BEAST HUNCHBACK, SUMMER SCARFACE; Comedy: HUSTLER PARTY, MEMENTO ZOOLANDER, MULAN MOON, SATURN NAME; Documentary: PACIFIC AMISTAD; Drama: RACER EGG, WARDROBE PHANTOM; Family: GANDHI KWAI, KILLER INNOCENT, SUNSET RACER; Games: SEVEN SWARM; Horror: CARRIE BUNCH, SWARM GOLD; New: BREAKFAST GOLDFINGER, DRAGONFLY STRANGERS, SAMURAI LION, VANISHED GARDEN; Sci-Fi: DISTURBING SCARFACE, TROJAN TOMORROW; Sports: CRANES RESERVOIR, JADE BUNCH, MUMMY CREATURES; Travel: ORDER BETRAYED, OUTLAW HANKY                                                                                                                                                                                                                                     |
| CARY        | Animation: BLACKOUT PRIVATE, DOUBLE WRATH, WATCH TRACY; Children: FULL FLATLINERS, WRONG BEHAVIOR; Classics: PREJUDICE OLEANDER; Comedy: VELVET TERMINATOR; Documentary: ARMY FLINTSTONES, DUFFEL APOCALYPSE, VILLAIN DESPERATE; Drama: WEST LION; Family: HUNTING MUSKETEERS, INDIAN LOVE; Foreign: MAUDE MOD; Horror: ALI FOREVER, RULES HUMAN; New: AMISTAD MIDSUMMER, LOVERBOY ATTACKS, OKLAHOMA JUMANJI; Sci-Fi: BINGO TALENTED, CITIZEN SHREK, DOLLS RAGE; Sports: MUSSOLINI SPOILERS; Travel: DESPERATE TRAINSPOTTING                                                                                                                                                                                                                                                                                                                                   |
| GROUCHO     | Action: LORD ARIZONA, MAGNOLIA FORRESTER, WEREWOLF LOLA; Animation: DOGMA FAMILY, TELEMARK HEARTBREAKERS, WATCH TRACY; Children: LABYRINTH LEAGUE, STRANGELOVE DESIRE; Comedy: DYING MAKER; Documentary: DUFFEL APOCALYPSE, HALLOWEEN NUTS, INDEPENDENCE HOTEL, MAJESTIC FLOATS, PELICAN COMFORTS; Family: HOMICIDE PEACH; Foreign: PET HAUNTING, POLLOCK DELIVERANCE; Games: GUN BONNIE, SASSY PACKER; Horror: FAMILY SWEET; Music: BOOGIE AMELIE, SCALAWAG DUCK; Sci-Fi: LICENSE WEEKEND; Sports: DUDE BLINDNESS, MOTHER OLEANDER; Travel: SMILE EARRING                                                                                                                                                                                                                                                                                                     |
| MAE         | Action: DANCES NONE; Animation: HOOK CHARIOTS, TURN STAR; Children: STRANGER STRANGERS; Comedy: DOOM DANCING; Documentary: ARMY FLINTSTONES, SECRET GROUNDHOG, SHIP WONDERLAND; Drama: APOLLO TEEN, DIARY PANIC, JACKET FRISCO; Family: DUMBO LUST, EARRING INSTINCT, HOMICIDE PEACH, ODDS BOOGIE, RESURRECTION SILVERADO, RUSH GOODFELLAS; Foreign: MUPPET MILE, SCHOOL JACKET; Games: CHICAGO NORTH, OUTBREAK DIVINE, STAMPEDE DISTURBING; New: APOCALYPSE FLAMINGOS, EAGLES PANKY, RUN PACIFIC; Sci-Fi: GOLDMINE TYCOON; Sports: NORTHWEST POLISH; Travel: FACTORY DRAGON                                                                                                                                                                                                                                                                                   |
| RALPH       | Action: DARN FORRESTER; Animation: CANYON STOCK; Children: CASPER DRAGONFLY, EMPIRE MALKOVICH, FULL FLATLINERS, MAKER GABLES, POLISH BROOKLYN; Classics: FROST HEAD; Comedy: PINOCCHIO SIMON, SUBMARINE BED; Documentary: NEWSIES STORY, POCUS PULP, SHIP WONDERLAND, THIN SAGEBRUSH; Drama: RACER EGG, WITCHES PANIC; Family: CONFUSED CANDLES, DUMBO LUST; Foreign: DANGEROUS UPTOWN; Games: GLORY TRACY, SLEUTH ORIENT, VIDEOTAPE ARSENIC; Horror: JAPANESE RUN; New: HOURS RAGE; Sci-Fi: BEVERLY OUTLAW; Sports: DUDE BLINDNESS, NEIGHBORS CHARADE; Travel: FUGITIVE MAGUIRE                                                                                                                                                                                                                                                                               |
| SCARLETT    | Action: CROW GREASE, MINDS TRUMAN; Animation: BORROWERS BEDAZZLED, EARLY HOME, MASSAGE IMAGE, POTLUCK MIXED; Children: BEAR GRACELAND, FARGO GANDHI, LABYRINTH LEAGUE, SANTA PARIS; Classics: MILLION ACE; Comedy: CONNECTION MICROCOSMOS, FRANKENSTEIN STRANGER, MYSTIC TRUMAN; Documentary: DEEP CRUSADE; Drama: CRAFT OUTFIELD, ORIENT CLOSER, SPICE SORORITY, TREATMENT JEKYLL; Family: INDIAN LOVE, RAGE GAMES; Foreign: ALAMO VIDEOTAPE, MADNESS ATTACKS; Games: DAWN POND, DIRTY ACE, LAMBS CINCINATTI; Horror: AFFAIR PREJUDICE, LOLA AGENT; Music: HANOVER GALAXY; New: EAGLES PANKY, INTERVIEW LIAISONS; Sports: DUDE BLINDNESS, GUNFIGHTER MUSSOLINI, IMAGE PRINCESS, NEIGHBORS CHARADE, RIDER CADDYSHACK                                                                                                                                           |
| WOODY       | Action: SKY MIRACLE, STAGECOACH ARMAGEDDON, TRIP NEWTON; Children: FURY MURDER, INVASION CYCLONE; Classics: JEEPERS WEDDING; Comedy: CRAZY HOME, DOOM DANCING, DOWNHILL ENOUGH, WISDOM WORKER; Documentary: KILL BROTHERHOOD; Drama: APOLLO TEEN, CHILL LUCK; Foreign: BUGSY SONG, EVERYONE CRAFT; Games: FEATHERS METAL, FIRE WOLVES; Horror: LOLA AGENT, SWARM GOLD; Music: ALONE TRIP, TAXI KICK; New: MAIDEN HOME, MASK PEACH, RUN PACIFIC, WAKE JAWS; Sci-Fi: STALLION SUNDANCE, TITANS JERK, WONDERLAND CHRISTMAS; Sports: IMAGE PRINCESS, KRAMER CHOCOLATE; Travel: SHINING ROSES                                                                                                                                                                                                                                                                       |
| BEN         | Animation: CAROL TEXAS, EARLY HOME, NASH CHOCOLAT; Children: CABIN FLASH, SPLENDOR PATTON, SWEETHEARTS SUSPECTS; Classics: DRACULA CRYSTAL; Comedy: DOWNHILL ENOUGH, LONELY ELEPHANT, PERFECT GROOVE, VALLEY PACKER; Documentary: BEACH HEARTBREAKERS, HEAVYWEIGHTS BEAST; Foreign: BALLROOM MOCKINGBIRD; Games: DAZED PUNK, ENCINO ELF; New: FRONTIER CABIN, PLUTO OLEANDER; Sci-Fi: BADMAN DAWN, COLDBLOODED DARLING, GOODFELLAS SALUTE, PANTHER REDS; Sports: CARIBBEAN LIBERTY, CHANCE RESURRECTION, DURHAM PANKY, ELIZABETH SHANE, LIBERTY MAGNIFICENT, NOVOCAINE FLIGHT, RECORDS ZORRO, SATURDAY LAMBS, SECRETARY ROUGE; Travel: FROGMEN BREAKING, SHANGHAI TYCOON                                                                                                                                                                                       |
| JAMES       | Action: AMADEUS HOLY, MIDNIGHT WESTWARD; Animation: PUNK DIVORCE, THIEF PELICAN; Children: DOCTOR GRAIL, JUMPING WRATH; Classics: STEEL SANTA; Comedy: FIREBALL PHILADELPHIA, HEDWIG ALTER, LONELY ELEPHANT; Documentary: MODERN DORADO, NATIONAL STORY, YOUNG LANGUAGE; Family: CONFUSED CANDLES, JEDI BENEATH, WILLOW TRACY; Foreign: EVERYONE CRAFT, HELLFIGHTERS SIERRA, INNOCENT USUAL, MAUDE MOD; Games: AUTUMN CROW, ENCINO ELF, OUTBREAK DIVINE; Horror: SPIRIT FLINTSTONES; Music: LUCKY FLYING; Sci-Fi: ARMAGEDDON LOST, FIDDLER LOST; Sports: RIDER CADDYSHACK, SATURDAY LAMBS, SHAKESPEARE SADDLE, SLIPPER FIDELITY                                                                                                                                                                                                                                |
| MINNIE      | Action: SUSPECTS QUILLS; Animation: INSECTS STONE; Children: SANTA PARIS; Classics: ALICE FANTASIA, EXTRAORDINARY CONQUERER, TOMORROW HUSTLER; Comedy: JAWS HARRY, LIFE TWISTED; Documentary: BILL OTHERS, BONNIE HOLOCAUST, SMOKING BARBARELLA, WARS PLUTO; Drama: NOTTING SPEAKEASY; Foreign: CHOCOLATE DUCK, EVERYONE CRAFT, FRIDA SLIPPER, HOLIDAY GAMES, WAR NOTTING; Games: MONSOON CAUSE; Horror: ACE GOLDFINGER, BOWFINGER GABLES, JAPANESE RUN; New: DAY UNFAITHFUL, MANNEQUIN WORST; Sci-Fi: EXPRESS LONELY, RAGING AIRPLANE; Sports: GROOVE FICTION, HYSTERICAL GRAIL, PICKUP DRIVING, TALENTED HOMICIDE; Travel: MADIGAN DORADO                                                                                                                                                                                                                    |
| GREG        | Action: FANTASY TROOPERS; Classics: CRUELTY UNFORGIVEN, DRACULA CRYSTAL, HOPE TOOTSIE, JEOPARDY ENCINO, MAGNIFICENT CHITTY, SLING LUKE; Comedy: STRICTLY SCARFACE, TRAINSPOTTING STRANGERS; Drama: UNFAITHFUL KILL; Family: HALF OUTFIELD; Foreign: JET NEIGHBORS, NEWTON LABYRINTH, USUAL UNTOUCHABLES; Games: FORWARD TEMPLE; Music: OLEANDER CLUE, RUNNER MADIGAN; New: CLYDE THEORY, DAY UNFAITHFUL, GODFATHER DIARY, SAMURAI LION; Sci-Fi: CHARADE DUFFEL, LICENSE WEEKEND, TITANS JERK; Sports: LIBERTY MAGNIFICENT, NOVOCAINE FLIGHT; Travel: TEEN APOLLO                                                                                                                                                                                                                                                                                               |
| SPENCER     | Action: DRAGON SQUAD, DRIFTER COMMANDMENTS; Children: BACKLASH UNDEFEATED, CLOCKWORK PARADISE; Documentary: CUPBOARD SINNERS, WAGON JAWS; Drama: QUEEN LUKE; Family: PILOT HOOSIERS; Foreign: DANGEROUS UPTOWN, HOLIDAY GAMES, WASH HEAVENLY; Games: PANKY SUBMARINE; Horror: SPIRIT FLINTSTONES, SWARM GOLD; Music: CLUE GRAIL, REBEL AIRPORT, REDS POCUS; Sci-Fi: FIDDLER LOST; Sports: MERMAID INSECTS, MOTHER OLEANDER, MUMMY CREATURES                                                                                                                                                                                                                                                                                                                                                                                                                    |
| KENNETH     | Action: REAR TRADING, WEREWOLF LOLA; Animation: CROSSROADS CASUALTIES; Children: FARGO GANDHI; Foreign: CATCH AMISTAD, COMMAND DARLING, TRAP GUYS, USUAL UNTOUCHABLES; Horror: AFFAIR PREJUDICE, TEMPLE ATTRACTION; Music: BIRDCAGE CASPER, SONG HEDWIG; Sci-Fi: DISTURBING SCARFACE, MOURNING PURPLE, NEMO CAMPUS, STALLION SUNDANCE; Sports: PEAK FOREVER, VICTORY ACADEMY; Travel: BOONDOCK BALLROOM, SHAWSHANK BUBBLE                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| CHARLIZE    | Action: CLUELESS BUCKET, DARN FORRESTER, LUST LOCK, PRIMARY GLASS; Animation: MASSAGE IMAGE; Children: SPLENDOR PATTON, SUNDANCE INVASION; Classics: DYNAMITE TARZAN, WESTWARD SEABISCUIT; Comedy: CONTROL ANTHEM, HEAVEN FREEDOM, LONELY ELEPHANT; Drama: JACKET FRISCO; Foreign: BABY HALL; Games: CANDLES GRAPES, FEATHERS METAL, HAUNTING PIANIST, WIND PHANTOM; Sports: CRANES RESERVOIR, DRIVER ANNIE, HYSTERICAL GRAIL, JOON NORTHWEST; Travel: BUCKET BROTHERHOOD, FUGITIVE MAGUIRE                                                                                                                                                                                                                                                                                                                                                                    |
| SEAN        | Action: DARN FORRESTER, FANTASY TROOPERS, LUST LOCK, MOCKINGBIRD HOLLYWOOD, STAGECOACH ARMAGEDDON; Animation: FORRESTER COMANCHEROS, HORN WORKING, TELEMARK HEARTBREAKERS, TRACY CIDER; Classics: OCTOBER SUBMARINE, PATIENT SISTER; Comedy: GROUNDHOG UNCUT, LONELY ELEPHANT, SUBMARINE BED; Documentary: STREAK RIDGEMONT, UNITED PILOT; Drama: SCORPION APOLLO; Family: DUMBO LUST, HALF OUTFIELD, HUNTING MUSKETEERS; Foreign: ALAMO VIDEOTAPE, BROOKLYN DESERT; Games: HAUNTING PIANIST; Horror: ACE GOLDFINGER; Music: GO PURPLE, GROSSE WONDERFUL; Sci-Fi: GRAFFITI LOVE, LICENSE WEEKEND, SOLDIERS EVOLUTION; Sports: CRUSADE HONEY, PHILADELPHIA WIFE; Travel: IGBY MAKER, SUPERFLY TRIP                                                                                                                                                              |
| CHRISTOPHER | Action: LAWRENCE LOVE, WOMEN DORADO; Animation: STORM HAPPINESS, SUGAR WONKA; Children: BACKLASH UNDEFEATED, LANGUAGE COWBOY, MURDER ANTITRUST; Classics: CREEPERS KANE, JEEPERS WEDDING; Comedy: FREEDOM CLEOPATRA; Family: SPINAL ROCKY; Foreign: HIGHBALL POTTER, KANE EXORCIST; Games: ICE CROSSING, SLEUTH ORIENT, VIDEOTAPE ARSENIC; Horror: ALI FOREVER; New: ANGELS LIFE; Sports: CONGENIALITY QUEST; Travel: CONTACT ANONYMOUS                                                                                                                                                                                                                                                                                                                                                                                                                        |
| KIRSTEN     | Action: DEVIL DESIRE, SKY MIRACLE, SPEAKEASY DATE, STAGECOACH ARMAGEDDON, WORST BANGER; Animation: ISHTAR ROCKETEER, MASSAGE IMAGE; Children: LABYRINTH LEAGUE, MAGIC MALLRATS, MAKER GABLES, TIES HUNGER; Classics: LEAGUE HELLFIGHTERS; Comedy: HURRICANE AFFAIR, MEMENTO ZOOLANDER; Documentary: RAIDERS ANTITRUST; Drama: NECKLACE OUTBREAK, PATHS CONTROL, REUNION WITCHES; Family: BRAVEHEART HUMAN; Foreign: BUGSY SONG, DANGEROUS UPTOWN, MADNESS ATTACKS, USUAL UNTOUCHABLES; Games: GRINCH MASSAGE, PRIVATE DROP; New: BOULEVARD MOB, HOURS RAGE, PLUTO OLEANDER; Sci-Fi: CHARADE DUFFEL, FRISCO FORREST; Sports: IMAGE PRINCESS; Travel: BUCKET BROTHERHOOD, CASABLANCA SUPER, MADIGAN DORADO                                                                                                                                                       |
| ELLEN       | Action: WOMEN DORADO; Animation: FLOATS GARDEN, OSCAR GOLD, TURN STAR; Children: CASPER DRAGONFLY, EMPIRE MALKOVICH, MICROCOSMOS PARADISE, SCARFACE BANG; Classics: HYDE DOCTOR, ROOTS REMEMBER, TADPOLE PARK; Comedy: PINOCCHIO SIMON; Documentary: HOMEWARD CIDER; Drama: JACKET FRISCO; Family: BILKO ANONYMOUS, NETWORK PEAK; Games: PRIVATE DROP, SPY MILE; Horror: STREETCAR INTENTIONS, TREASURE COMMAND; Sports: CARIBBEAN LIBERTY, IMAGE PRINCESS, PICKUP DRIVING, SECRETARY ROUGE; Travel: FROGMEN BREAKING                                                                                                                                                                                                                                                                                                                                          |
| KENNETH     | Animation: CROSSROADS CASUALTIES, HARPER DYING; Children: GHOST GROUNDHOG; Classics: BEAST HUNCHBACK, DETECTIVE VISION, LEAGUE HELLFIGHTERS, MAGNIFICENT CHITTY, VOLUME HOUSE; Documentary: DANCING FEVER, INDEPENDENCE HOTEL, RAIDERS ANTITRUST, RAINBOW SHOCK, SHIP WONDERLAND; Drama: JACKET FRISCO, LIES TREATMENT, SEATTLE EXPECATIONS; Family: HOMICIDE PEACH, REMEMBER DIARY; Foreign: FRIDA SLIPPER, LOST BIRD; Horror: ALI FOREVER, CARRIE BUNCH, EGYPT TENENBAUMS, JAPANESE RUN; Music: BIRDCAGE CASPER, LUCKY FLYING; New: EARTH VISION, FLAMINGOS CONNECTICUT, MAIDEN HOME; Sci-Fi: CITIZEN SHREK; Sports: FLATLINERS KILLER, LESSON CLEOPATRA; Travel: WORKING MICROCOSMOS                                                                                                                                                                        |
| DARYL       | Action: CASUALTIES ENCINO, FORREST SONS, GRAIL FRANKENSTEIN, RUGRATS SHAKESPEARE; Animation: DOUBLE WRATH, POND SEATTLE; Children: HOLOCAUST HIGHBALL; Classics: SPIKING ELEMENT; Comedy: LIFE TWISTED; Documentary: NORTH TEQUILA, STREAK RIDGEMONT; Drama: UNFAITHFUL KILL; Family: KILLER INNOCENT; Foreign: BABY HALL, BALLROOM MOCKINGBIRD, DANGEROUS UPTOWN, GENTLEMEN STAGE, HOOSIERS BIRDCAGE; Games: MADRE GABLES; Horror: ARACHNOPHOBIA ROLLERCOASTER, BEHAVIOR RUNAWAY, FAMILY SWEET; Music: BIRCH ANTITRUST; New: AMISTAD MIDSUMMER, MAIDEN HOME; Sci-Fi: FIDDLER LOST; Sports: HOLES BRANNIGAN, NEIGHBORS CHARADE, SMOOCHY CONTROL; Travel: EXPECATIONS NATURAL, TRAFFIC HOBBIT                                                                                                                                                                   |
| GENE        | Action: WEREWOLF LOLA; Animation: ARGONAUTS TOWN, CHAMPION FLATLINERS, HOOK CHARIOTS; Children: BENEATH RUSH; Classics: TADPOLE PARK; Documentary: ARMY FLINTSTONES, BEACH HEARTBREAKERS, VIRGINIAN PLUTO; Drama: DARKNESS WAR; Family: SECRETS PARADISE, SPLASH GUMP; Foreign: ILLUSION AMELIE, JET NEIGHBORS, PAST SUICIDES; Horror: AIRPORT POLLOCK; Music: BANGER PINOCCHIO, DORADO NOTTING, WORDS HUNTER; New: FLAMINGOS CONNECTICUT, MONEY HAROLD, STING PERSONAL; Sci-Fi: METROPOLIS COMA                                                                                                                                                                                                                                                                                                                                                               |
| MEG         | Children: GORGEOUS BINGO, MAKER GABLES, SABRINA MIDNIGHT; Classics: GILMORE BOILED, SUMMER SCARFACE, VOYAGE LEGALLY; Comedy: CRAZY HOME; Documentary: INTOLERABLE INTENTIONS, SAGEBRUSH CLUELESS; Drama: CHILL LUCK, REUNION WITCHES; Family: GANDHI KWAI, HOUSE DYNAMITE; Foreign: ORANGE GRAPES, VISION TORQUE; New: MASK PEACH, VAMPIRE WHALE; Sci-Fi: CONNECTICUT TRAMP, FIDDLER LOST, VACATION BOONDOCK; Sports: CRUSADE HONEY, DROP WATERFRONT, HYSTERICAL GRAIL; Travel: FUGITIVE MAGUIRE, LIAISONS SWEET, PAPI NECKLACE, SPEED SUIT                                                                                                                                                                                                                                                                                                                    |
| CHRIS       | Action: CROW GREASE, DARN FORRESTER; Children: BENEATH RUSH, WALLS ARTIST; Classics: EXTRAORDINARY CONQUERER, REQUIEM TYCOON; Comedy: SATURN NAME; Documentary: BILL OTHERS, ROAD ROXANNE; Drama: BUNCH MINDS; Family: CONVERSATION DOWNHILL, ODDS BOOGIE, RAGE GAMES, SPARTACUS CHEAPER, SPINAL ROCKY; Foreign: MUPPET MILE, PURPLE MOVIE, ROCKETEER MOTHER; Horror: WORLD LEATHERNECKS; Music: REDS POCUS; New: PLUTO OLEANDER; Sci-Fi: BLINDNESS GUN, TROJAN TOMORROW, WONDERLAND CHRISTMAS; Sports: CARIBBEAN LIBERTY, SHAKESPEARE SADDLE; Travel: BOONDOCK BALLROOM                                                                                                                                                                                                                                                                                       |
| JIM         | Action: DRAGON SQUAD, WOMEN DORADO; Animation: FLOATS GARDEN; Classics: LEAGUE HELLFIGHTERS; Comedy: AIRPLANE SIERRA, PERFECT GROOVE, WISDOM WORKER; Documentary: NEWSIES STORY; Drama: NECKLACE OUTBREAK; Foreign: HELLFIGHTERS SIERRA, RESERVOIR ADAPTATION; Games: GRINCH MASSAGE, SPY MILE; Horror: JAPANESE RUN, MOTIONS DETAILS; Music: LUCKY FLYING, OLEANDER CLUE, ROMAN PUNK; New: JUMANJI BLADE; Sci-Fi: METROPOLIS COMA, NEMO CAMPUS, WEEKEND PERSONAL; Sports: ANONYMOUS HUMAN, FLATLINERS KILLER, SIERRA DIVIDE; Travel: BOILED DARES                                                                                                                                                                                                                                                                                                             |
| SPENCER     | Action: DRAGON SQUAD, STORY SIDE, WORST BANGER; Animation: CANYON STOCK; Classics: SNATCHERS MONTEZUMA; Documentary: WRATH MILE; Drama: VIRGIN DAISY, WITCHES PANIC; Foreign: HELLFIGHTERS SIERRA; Games: MASSACRE USUAL, TYCOON GATHERING; Horror: TREASURE COMMAND; Music: ALONE TRIP, HEAVENLY GUN, REBEL AIRPORT, TAXI KICK; New: SALUTE APOLLO, STING PERSONAL; Sci-Fi: RANDOM GO, WEEKEND PERSONAL; Sports: SENSE GREEK; Travel: LEATHERNECKS DWARFS, ORDER BETRAYED, SWEET BROTHERHOOD                                                                                                                                                                                                                                                                                                                                                                  |
| SUSAN       | Action: DRAGON SQUAD, LAWRENCE LOVE; Children: BENEATH RUSH, JUMPING WRATH, MURDER ANTITRUST, UPTOWN YOUNG; Classics: BEAST HUNCHBACK, SPIKING ELEMENT; Comedy: MEMENTO ZOOLANDER, SEARCHERS WAIT, VALLEY PACKER, WISDOM WORKER; Documentary: BONNIE HOLOCAUST; Drama: CHITTY LOCK, PATHS CONTROL, SAINTS BRIDE; Family: NATURAL STOCK, PRIX UNDEFEATED; Foreign: WONDERFUL DROP; Games: CREATURES SHAKESPEARE, VIDEOTAPE ARSENIC; Horror: EGYPT TENENBAUMS, KARATE MOON, PULP BEVERLY; Music: DRIVING POLISH, VANISHING ROCKY, WIZARD COLDBLOODED; New: EVE RESURRECTION; Sci-Fi: PANTHER REDS; Sports: DURHAM PANKY, STAR OPERATION; Travel: SHINING ROSES, WORKER TARZAN                                                                                                                                                                                    |
| WALTER      | Action: CROW GREASE, DANCES NONE, FORREST SONS, SKY MIRACLE; Animation: EARLY HOME, FLYING HOOK; Children: CASPER DRAGONFLY, JERSEY SASSY, STRANGELOVE DESIRE; Classics: ROOTS REMEMBER, SPIKING ELEMENT; Comedy: LONELY ELEPHANT, STAGE WORLD; Documentary: MADISON TRAP, RAIDERS ANTITRUST; Drama: HOBBIT ALIEN, LIES TREATMENT, REUNION WITCHES, WARDROBE PHANTOM, WITCHES PANIC; Family: BANG KWAI, SLUMS DUCK; Foreign: HOOSIERS BIRDCAGE, MULHOLLAND BEAST, STEPMOM DREAM; Games: CURTAIN VIDEOTAPE, LAMBS CINCINATTI, NIGHTMARE CHILL; Horror: ARABIA DOGMA, FREDDY STORM, GASLIGHT CRUSADE, MOTIONS DETAILS; Music: AMELIE HELLFIGHTERS, WIZARD COLDBLOODED; Sports: HYSTERICAL GRAIL, LESSON CLEOPATRA, MUMMY CREATURES, NOVOCAINE FLIGHT, SIERRA DIVIDE; Travel: CASABLANCA SUPER, LOCK REAR                                                         |
| MATTHEW     | Action: CELEBRITY HORN, EASY GLADIATOR, FIREHOUSE VIETNAM, GLASS DYING; Animation: CANYON STOCK, POTLUCK MIXED; Children: GIANT TROOPERS, ROBBERS JOON; Classics: TOMORROW HUSTLER; Documentary: CUPBOARD SINNERS, DANCING FEVER, DELIVERANCE MULHOLLAND; Drama: MOB DUFFEL, ORIENT CLOSER, VIETNAM SMOOCHY; Family: AFRICAN EGG, FINDING ANACONDA, HOUSE DYNAMITE, OPPOSITE NECKLACE, SOUP WISDOM; Games: DAWN POND, WANDA CHAMBER; Music: FREAKY POCUS, GREATEST NORTH; Sci-Fi: ENGLISH BULWORTH, TROJAN TOMORROW; Sports: CRUSADE HONEY; Travel: GAMES BOWFINGER, MUSCLE BRIGHT, TRAFFIC HOBBIT                                                                                                                                                                                                                                                             |
| PENELOPE    | Action: AMADEUS HOLY, ENTRAPMENT SATISFACTION; Animation: BIKINI BORROWERS, DUCK RACER, MISSION ZOOLANDER, TITANIC BOONDOCK; Children: BEAR GRACELAND, ZOOLANDER FICTION; Classics: CORE SUIT; Comedy: PARADISE SABRINA; Documentary: ARMY FLINTSTONES, CLERKS ANGELS, UNTOUCHABLES SUNRISE, VIRGINIAN PLUTO; Drama: HAROLD FRENCH, ROCKY WAR; Family: FEUD FROGMEN; Foreign: CRYSTAL BREAKING, MUPPET MILE, WONDERFUL DROP; Horror: FIDELITY DEVIL, LADY STAGE, MOTIONS DETAILS, TRAIN BUNCH; Music: LEGEND JEDI; New: CHAPLIN LICENSE, PIANIST OUTFIELD; Sci-Fi: ARMAGEDDON LOST, HAMLET WISDOM; Sports: INSTINCT AIRPORT; Travel: DISCIPLE MOTHER                                                                                                                                                                                                           |
| SIDNEY      | Action: AMERICAN CIRCUS, ANTITRUST TOMATOES, LORD ARIZONA, TRUMAN CRAZY; Animation: DOGMA FAMILY, OZ LIAISONS; Children: EMPIRE MALKOVICH, SUNDANCE INVASION, WRONG BEHAVIOR; Classics: CANDIDATE PERDITION; Comedy: SUBMARINE BED, TRAMP OTHERS; Drama: TREATMENT JEKYLL; Family: FINDING ANACONDA, GREASE YOUTH, SIEGE MADRE; Foreign: ALIEN CENTER; Games: SPY MILE; Horror: WORLD LEATHERNECKS; Music: ALASKA PHANTOM, CLONES PINOCCHIO, FREAKY POCUS; New: ENDING CROWDS, MANNEQUIN WORST, MASK PEACH, PLUTO OLEANDER, RUN PACIFIC, WAKE JAWS, WYOMING STORM; Sci-Fi: SPIRITED CASUALTIES, TITANS JERK; Sports: ARTIST COLDBLOODED, GRACELAND DYNAMITE, MUMMY CREATURES                                                                                                                                                                                   |
| GROUCHO     | Action: CASUALTIES ENCINO, CROW GREASE, DEVIL DESIRE, PARK CITIZEN; Animation: DONNIE ALLEY; Children: LABYRINTH LEAGUE; Classics: COLOR PHILADELPHIA, IRON MOON; Comedy: GOLD RIVER, SUBMARINE BED; Documentary: INDEPENDENCE HOTEL, POCUS PULP; Drama: DALMATIONS SWEDEN, HUNCHBACK IMPOSSIBLE, MOB DUFFEL; Family: BLUES INSTINCT, GABLES METROPOLIS, OPPOSITE NECKLACE, SENSIBILITY REAR, SUNSET RACER; Foreign: HAPPINESS UNITED, KISS GLORY, MAUDE MOD; Games: CREATURES SHAKESPEARE, PANKY SUBMARINE, VANILLA DAY; Horror: TEMPLE ATTRACTION; Music: RUNNER MADIGAN; New: BUTCH PANTHER, CHAPLIN LICENSE, PHANTOM GLORY; Sci-Fi: ATTACKS HATE, MARRIED GO; Sports: SATISFACTION CONFIDENTIAL; Travel: TOMATOES HELLFIGHTERS                                                                                                                             |
| GINA        | Action: CLUELESS BUCKET, EXCITEMENT EVE, MIDNIGHT WESTWARD; Animation: DOGMA FAMILY, HOOK CHARIOTS, STORM HAPPINESS, SUGAR WONKA; Children: HALL CASSIDY, HEARTBREAKERS BRIGHT; Classics: HYDE DOCTOR, MAGNIFICENT CHITTY; Comedy: GUNFIGHT MOON, SEARCHERS WAIT, TRAINSPOTTING STRANGERS; Documentary: BED HIGHBALL, METAL ARMAGEDDON, WIFE TURN; Drama: CONEHEADS SMOOCHY, DARKNESS WAR; Family: GANDHI KWAI, INDIAN LOVE, LOUISIANA HARRY, MOVIE SHAKESPEARE; Foreign: CALENDAR GUNFIGHT, INTRIGUE WORST; Games: SEVEN SWARM; Horror: ELEPHANT TROJAN; Music: CHAMBER ITALIAN, DEER VIRGINIAN, IMPACT ALADDIN, TELEGRAPH VOYAGE; New: CHAPLIN LICENSE; Sci-Fi: CHARIOTS CONSPIRACY, COLDBLOODED DARLING, FRISCO FORREST, GOODFELLAS SALUTE, LICENSE WEEKEND, OPEN AFRICAN, SPIRITED CASUALTIES; Sports: MUMMY CREATURES, SIERRA DIVIDE; Travel: WINDOW SIDE |
| WARREN      | Animation: DARES PLUTO, POTTER CONNECTICUT, PRIDE ALAMO, THIEF PELICAN, TITANIC BOONDOCK; Classics: PAJAMA JAWBREAKER, ROOTS REMEMBER; Comedy: DOOM DANCING; Documentary: ACADEMY DINOSAUR, DEEP CRUSADE, WEDDING APOLLO; Drama: GREEDY ROOTS, WARDROBE PHANTOM; Foreign: AGENT TRUMAN, MEET CHOCOLATE; Games: FANTASIA PARK, LADYBUGS ARMAGEDDON; Horror: ALABAMA DEVIL, KENTUCKIAN GIANT, PULP BEVERLY; Music: ELF MURDER, GREATEST NORTH, PERSONAL LADYBUGS, REDS POCUS, ROMAN PUNK; New: MASK PEACH, UNBREAKABLE KARATE; Sci-Fi: CHARADE DUFFEL, GARDEN ISLAND, PANTHER REDS; Sports: LESSON CLEOPATRA, RIVER OUTLAW; Travel: OUTLAW HANKY, TOMATOES HELLFIGHTERS                                                                                                                                                                                          |
| SYLVESTER   | Action: RINGS HEARTBREAKERS; Animation: DOORS PRESIDENT; Children: BACKLASH UNDEFEATED, CLOCKWORK PARADISE, SHEPHERD MIDSUMMER, WALLS ARTIST; Classics: CREEPERS KANE, PREJUDICE OLEANDER; Comedy: PARADISE SABRINA; Documentary: HALLOWEEN NUTS, NEWSIES STORY; Family: PRIX UNDEFEATED, RUSH GOODFELLAS; Games: ENCINO ELF; Horror: TEXAS WATCH; Music: ALASKA PHANTOM, CONFIDENTIAL INTERVIEW; New: BIRDS PERDITION; Sci-Fi: SUN CONFESSIONS, WEEKEND PERSONAL; Sports: INSTINCT AIRPORT; Travel: SHAWSHANK BUBBLE                                                                                                                                                                                                                                                                                                                                          |
| SUSAN       | Action: CASUALTIES ENCINO, EXCITEMENT EVE, GLASS DYING; Children: FULL FLATLINERS, SISTER FREDDY; Classics: LOATHING LEGALLY; Documentary: BED HIGHBALL, CLERKS ANGELS, PACIFIC AMISTAD; Drama: LUCK OPUS; Foreign: HOTEL HAPPINESS, MADNESS ATTACKS, WASH HEAVENLY; Horror: AIRPORT POLLOCK; Music: WORDS HUNTER; Sci-Fi: GOODFELLAS SALUTE, NONE SPIKING, TROJAN TOMORROW; Sports: ANONYMOUS HUMAN, CARIBBEAN LIBERTY; Travel: LEATHERNECKS DWARFS                                                                                                                                                                                                                                                                                                                                                                                                           |
| CAMERON     | Action: CLUELESS BUCKET, CROW GREASE, RINGS HEARTBREAKERS; Animation: BLACKOUT PRIVATE, FLOATS GARDEN, JUGGLER HARDLY; Children: MURDER ANTITRUST; Classics: RIGHT CRANES, ROOTS REMEMBER, WASTELAND DIVINE; Comedy: MALLRATS UNITED, PINOCCHIO SIMON; Documentary: HAWK CHILL, WIFE TURN; Drama: BEAUTY GREASE, BRIGHT ENCOUNTERS, CONQUERER NUTS, HARRY IDAHO, ORIENT CLOSER; Family: GLADIATOR WESTWARD, MOVIE SHAKESPEARE, PILOT HOOSIERS; Foreign: HELLFIGHTERS SIERRA, PEARL DESTINY; Games: GRIT CLOCKWORK, LAMBS CINCINATTI, PRIVATE DROP, TYCOON GATHERING; Horror: ROCK INSTINCT; New: STOCK GLASS; Sports: JADE BUNCH, SECRETARY ROUGE; Travel: TOMATOES HELLFIGHTERS                                                                                                                                                                               |
| RUSSELL     | Action: SUSPECTS QUILLS; Animation: SUNRISE LEAGUE; Children: IDOLS SNATCHERS; Classics: ARIZONA BANG; Comedy: CRAZY HOME, HURRICANE AFFAIR; Drama: CONFESSIONS MAGUIRE, PAYCHECK WAIT, REUNION WITCHES, SEA VIRGIN; Family: DINOSAUR SECRETARY, MOVIE SHAKESPEARE, PRIX UNDEFEATED, SPINAL ROCKY; Foreign: MATRIX SNOWMAN; Games: PANKY SUBMARINE; Horror: ARABIA DOGMA, STREETCAR INTENTIONS; Sci-Fi: CINCINATTI WHISPERER, FIDDLER LOST, SOLDIERS EVOLUTION; Sports: FLATLINERS KILLER, MUMMY CREATURES, SIERRA DIVIDE; Travel: WORKER TARZAN                                                                                                                                                                                                                                                                                                               |
| MORGAN      | Action: EXCITEMENT EVE, RINGS HEARTBREAKERS, RUGRATS SHAKESPEARE, STAGECOACH ARMAGEDDON; Classics: CANDIDATE PERDITION, DRACULA CRYSTAL, LOATHING LEGALLY; Comedy: PINOCCHIO SIMON; Drama: DECEIVER BETRAYED, HARRY IDAHO, WEST LION; Family: PRIX UNDEFEATED; Foreign: GENTLEMEN STAGE, PET HAUNTING, RESERVOIR ADAPTATION; Horror: ARACHNOPHOBIA ROLLERCOASTER, DRUMS DYNAMITE; Music: UNCUT SUICIDES; Sci-Fi: REIGN GENTLEMEN; Sports: FLATLINERS KILLER, RECORDS ZORRO, TIGHTS DAWN; Travel: BOILED DARES, CONTACT ANONYMOUS, ORDER BETRAYED, PAPI NECKLACE, WOLVES DESIRE                                                                                                                                                                                                                                                                                 |
| MORGAN      | Action: CLUELESS BUCKET, CROW GREASE, DARKO DORADO; Children: BETRAYED REAR, WRONG BEHAVIOR; Classics: HOLY TADPOLE; Comedy: CRAZY HOME; Documentary: SAGEBRUSH CLUELESS; Drama: SPICE SORORITY; Family: SUNSET RACER; Foreign: ILLUSION AMELIE, WASH HEAVENLY; Games: SLEUTH ORIENT, SUIT WALLS; Horror: ALI FOREVER; New: BOULEVARD MOB, FATAL HAUNTED, LOVERBOY ATTACKS, TROOPERS METAL; Sports: DIVORCE SHINING, DRIVER ANNIE, HOLES BRANNIGAN, NEIGHBORS CHARADE, STAR OPERATION; Travel: FROGMEN BREAKING                                                                                                                                                                                                                                                                                                                                                |
| HARRISON    | Animation: DOUBLE WRATH, NASH CHOCOLAT, PUNK DIVORCE, THIEF PELICAN; Children: WALLS ARTIST; Comedy: RUSHMORE MERMAID; Documentary: WAGON JAWS, WEDDING APOLLO; Drama: GREEDY ROOTS; Family: HALF OUTFIELD, HOMICIDE PEACH; Foreign: BALLROOM MOCKINGBIRD, DOUBTFIRE LABYRINTH, LOSE INCH, MUPPET MILE, PAST SUICIDES; Games: FANTASIA PARK; Horror: ELEPHANT TROJAN, LADY STAGE, ROLLERCOASTER BRINGING; New: PLUTO OLEANDER, STING PERSONAL, WYOMING STORM; Sci-Fi: BADMAN DAWN, RANDOM GO, WONDERLAND CHRISTMAS; Sports: GROOVE FICTION, PERDITION FARGO                                                                                                                                                                                                                                                                                                    |
| DAN         | Action: BULL SHAWSHANK; Animation: ARGONAUTS TOWN; Children: BACKLASH UNDEFEATED; Comedy: VERTIGO NORTHWEST; Documentary: FRENCH HOLIDAY, HEAVYWEIGHTS BEAST, NEWSIES STORY; Foreign: CATCH AMISTAD, MIXED DOORS; Games: ROOF CHAMPION, WANDA CHAMBER; Horror: PANIC CLUB; Music: GROSSE WONDERFUL, OUTFIELD MASSACRE; New: BOULEVARD MOB, JEKYLL FROGMEN, JUNGLE CLOSER; Sci-Fi: FRISCO FORREST; Sports: HOLES BRANNIGAN, MUMMY CREATURES, STEERS ARMAGEDDON; Travel: BORN SPINAL, IGBY MAKER, SHANGHAI TYCOON                                                                                                                                                                                                                                                                                                                                                |
| RENEE       | Action: HANDICAP BOONDOCK, QUEST MUSSOLINI; Animation: THIEF PELICAN; Children: HOLLYWOOD ANONYMOUS, INVASION CYCLONE, SUNDANCE INVASION; Classics: CREEPERS KANE, HOPE TOOTSIE, MILLION ACE; Comedy: CONNECTION MICROCOSMOS; Documentary: SMOKING BARBARELLA, UNTOUCHABLES SUNRISE; Drama: ROCKY WAR; Family: EFFECT GLADIATOR, MAGUIRE APACHE, RAGE GAMES, SECRETS PARADISE; Foreign: ALIEN CENTER, DOUBTFIRE LABYRINTH, FRIDA SLIPPER, INFORMER DOUBLE, ROCKETEER MOTHER; Games: FIRE WOLVES; Music: SILENCE KANE; Sci-Fi: EYES DRIVING, SPIRITED CASUALTIES; Sports: ALADDIN CALENDAR, ARTIST COLDBLOODED, CRUSADE HONEY; Travel: COMA HEAD, DESPERATE TRAINSPOTTING, SHANE DARKNESS, SHAWSHANK BUBBLE                                                                                                                                                     |
| CUBA        | Children: MAKER GABLES, ROBBERS JOON, STRANGELOVE DESIRE; Comedy: VELVET TERMINATOR; Documentary: SHIP WONDERLAND; Drama: WEST LION; Family: KING EVOLUTION, PRESIDENT BANG; Foreign: FICTION CHRISTMAS, HAPPINESS UNITED, ORANGE GRAPES, WAR NOTTING; Games: CHICAGO NORTH; Horror: ARACHNOPHOBIA ROLLERCOASTER; Music: GROSSE WONDERFUL; New: CHAPLIN LICENSE, MANNEQUIN WORST; Sci-Fi: ARMAGEDDON LOST, BADMAN DAWN, BARBARELLA STREETCAR, CINCINATTI WHISPERER, METROPOLIS COMA; Sports: LESSON CLEOPATRA; Travel: ARSENIC INDEPENDENCE, PAPI NECKLACE                                                                                                                                                                                                                                                                                                     |
| WARREN      | Action: AMERICAN CIRCUS, SKY MIRACLE; Animation: OZ LIAISONS, POTTER CONNECTICUT; Children: LANGUAGE COWBOY, SHEPHERD MIDSUMMER; Comedy: SUBMARINE BED, VERTIGO NORTHWEST; Documentary: HEAVYWEIGHTS BEAST, SHIP WONDERLAND; Drama: BEETHOVEN EXORCIST, CHILL LUCK, CONEHEADS SMOOCHY, CONFESSIONS MAGUIRE, HOBBIT ALIEN, LIES TREATMENT; Foreign: MEET CHOCOLATE, ROCKETEER MOTHER, TOWN ARK; Games: GRINCH MASSAGE, NAME DETECTIVE; Horror: COMMANDMENTS EXPRESS; Music: IMPACT ALADDIN, MONSTER SPARTACUS, OLEANDER CLUE; New: RUNAWAY TENENBAUMS; Sci-Fi: BADMAN DAWN, HAMLET WISDOM; Sports: MERMAID INSECTS, SHAKESPEARE SADDLE; Travel: BOONDOCK BALLROOM, SUPERFLY TRIP                                                                                                                                                                                |
| PENELOPE    | Action: PARK CITIZEN, REAR TRADING, TRIP NEWTON; Animation: DARES PLUTO, JUGGLER HARDLY; Children: CHRISTMAS MOONSHINE, DOCTOR GRAIL, HOLOCAUST HIGHBALL; Family: BEDAZZLED MARRIED, DINOSAUR SECRETARY, PITTSBURGH HUNCHBACK, RANGE MOONWALKER; Foreign: HELLFIGHTERS SIERRA, ORANGE GRAPES; Games: ROUGE SQUAD; Horror: REEF SALUTE, SPIRIT FLINTSTONES; Music: DRIVING POLISH; New: CHINATOWN GLADIATOR, MONEY HAROLD, WYOMING STORM; Sports: POSEIDON FOREVER, TOURIST PELICAN; Travel: BASIC EASY, LEATHERNECKS DWARFS, ORDER BETRAYED, TOMATOES HELLFIGHTERS                                                                                                                                                                                                                                                                                             |
| LIZA        | Animation: CLASH FREDDY; Classics: EXTRAORDINARY CONQUERER, OCTOBER SUBMARINE; Documentary: WEDDING APOLLO; Drama: CRAFT OUTFIELD, PAYCHECK WAIT, SCORPION APOLLO; Family: JEDI BENEATH, SENSIBILITY REAR; Foreign: COMMAND DARLING, CRYSTAL BREAKING, GENTLEMEN STAGE; Games: CHICAGO NORTH, PANKY SUBMARINE; Horror: DESERT POSEIDON, PARIS WEEKEND, TEXAS WATCH; Music: CLUE GRAIL, DEER VIRGINIAN, ENEMY ODDS, TERMINATOR CLUB; New: STOCK GLASS; Sci-Fi: FRISCO FORREST, IDENTITY LOVER; Sports: LESSON CLEOPATRA                                                                                                                                                                                                                                                                                                                                         |
| SALMA       | Action: ANTITRUST TOMATOES, LUST LOCK; Animation: FALCON VOLUME, ISHTAR ROCKETEER, JUGGLER HARDLY, OZ LIAISONS; Children: CLOCKWORK PARADISE, DOCTOR GRAIL, JUMPING WRATH; Classics: COLOR PHILADELPHIA; Family: BLUES INSTINCT, SIEGE MADRE; Foreign: WAR NOTTING, WASH HEAVENLY; Games: DETAILS PACKER, PANKY SUBMARINE; Horror: ZHIVAGO CORE; Music: BIRDCAGE CASPER, CLONES PINOCCHIO, GO PURPLE, PERSONAL LADYBUGS, REBEL AIRPORT; New: AMISTAD MIDSUMMER; Sci-Fi: NEMO CAMPUS; Travel: FELLOWSHIP AUTUMN                                                                                                                                                                                                                                                                                                                                                 |
| JULIANNE    | Action: BERETS AGENT, BULL SHAWSHANK, LORD ARIZONA; Animation: DESIRE ALIEN, DOUBLE WRATH, TITANIC BOONDOCK; Children: SHEPHERD MIDSUMMER; Classics: DYNAMITE TARZAN, JEEPERS WEDDING, REQUIEM TYCOON; Documentary: ADAPTATION HOLES, MIGHTY LUCK, MODERN DORADO, UNTOUCHABLES SUNRISE; Family: ATLANTIS CAUSE, HUNTING MUSKETEERS, JEDI BENEATH; Foreign: CHOCOLATE DUCK, COWBOY DOOM, DOUBTFIRE LABYRINTH; Horror: KARATE MOON, MONTEREY LABYRINTH; New: RIDGEMONT SUBMARINE; Sci-Fi: CINCINATTI WHISPERER, DISTURBING SCARFACE, SUICIDES SILENCE; Sports: HONEY TIES, HYSTERICAL GRAIL, KRAMER CHOCOLATE, MILE MULAN; Travel: ENOUGH RAGING, WORKER TARZAN                                                                                                                                                                                                  |
| SCARLETT    | Children: FULL FLATLINERS, INVASION CYCLONE; Classics: CREEPERS KANE; Comedy: SNATCH SLIPPER, SUBMARINE BED; Drama: BEETHOVEN EXORCIST, LUCK OPUS, SEATTLE EXPECATIONS, TENENBAUMS COMMAND; Foreign: DOUBTFIRE LABYRINTH, RESERVOIR ADAPTATION; Games: BULWORTH COMMANDMENTS, FEATHERS METAL, ROOF CHAMPION; Music: WORDS HUNTER, YOUTH KICK; New: AMISTAD MIDSUMMER, EVE RESURRECTION; Sci-Fi: FIDDLER LOST, IDENTITY LOVER; Sports: CALIFORNIA BIRDS, DUDE BLINDNESS, DURHAM PANKY, FLATLINERS KILLER; Travel: MOULIN WAKE, SHAWSHANK BUBBLE                                                                                                                                                                                                                                                                                                                 |
| ALBERT      | Action: DRAGON SQUAD, HANDICAP BOONDOCK, PATRIOT ROMAN; Children: DOCTOR GRAIL, IDOLS SNATCHERS; Comedy: CRAZY HOME, FLINTSTONES HAPPINESS, MEMENTO ZOOLANDER; Documentary: BED HIGHBALL, KILL BROTHERHOOD; Drama: BRIGHT ENCOUNTERS, DALMATIONS SWEDEN, PITY BOUND; Family: CONFUSED CANDLES, HOMICIDE PEACH, MANCHURIAN CURTAIN, RAGE GAMES; Foreign: BROOKLYN DESERT, HELLFIGHTERS SIERRA, MIXED DOORS, NEWTON LABYRINTH, TRAP GUYS; Games: VOLCANO TEXAS; Horror: WATERSHIP FRONTIER; Music: TAXI KICK; Sci-Fi: CAMELOT VACATION, FRISCO FORREST, GOLDMINE TYCOON, MOURNING PURPLE; Sports: GLEAMING JAWBREAKER, HONEY TIES                                                                                                                                                                                                                                |
| FRANCES     | Action: AMERICAN CIRCUS, CROW GREASE; Animation: CROSSROADS CASUALTIES; Children: GORGEOUS BINGO, INVASION CYCLONE; Classics: IRON MOON; Comedy: FIREBALL PHILADELPHIA; Documentary: BEACH HEARTBREAKERS, BONNIE HOLOCAUST, CUPBOARD SINNERS; Family: ATLANTIS CAUSE, HOCUS FRIDA; Foreign: MADNESS ATTACKS; Horror: ARABIA DOGMA; New: BREAKING HOME, PLATOON INSTINCT; Sci-Fi: GOODFELLAS SALUTE, SUICIDES SILENCE; Sports: DROP WATERFRONT, DURHAM PANKY, SQUAD FISH; Travel: ESCAPE METROPOLIS, GAMES BOWFINGER                                                                                                                                                                                                                                                                                                                                            |
| KEVIN       | Action: TRIP NEWTON; Animation: ARGONAUTS TOWN, WAIT CIDER; Children: BACKLASH UNDEFEATED, CLOCKWORK PARADISE, GHOST GROUNDHOG, MAKER GABLES, MICROCOSMOS PARADISE; Classics: WESTWARD SEABISCUIT; Comedy: CAPER MOTIONS, DADDY PITTSBURGH, GUNFIGHT MOON, MYSTIC TRUMAN; Documentary: SHOW LORD; Drama: BLADE POLISH, GOLDFINGER SENSIBILITY, SCORPION APOLLO; Family: NATURAL STOCK, RAGE GAMES, RESURRECTION SILVERADO; Foreign: BABY HALL, INFORMER DOUBLE, ORANGE GRAPES; Games: CHICAGO NORTH, GRIT CLOCKWORK; Horror: RULES HUMAN; Music: FREAKY POCUS, HEAVENLY GUN, SONG HEDWIG; New: STING PERSONAL; Sci-Fi: STALLION SUNDANCE; Sports: SATISFACTION CONFIDENTIAL; Travel: ENOUGH RAGING                                                                                                                                                             |
| CATE        | Action: DARN FORRESTER; Animation: FLYING HOOK, MASSAGE IMAGE, POTTER CONNECTICUT, PRIDE ALAMO; Children: COMANCHEROS ENEMY, DOCTOR GRAIL, JERSEY SASSY; Classics: TOWERS HURRICANE; Comedy: CAPER MOTIONS, SEARCHERS WAIT, SNATCH SLIPPER; Documentary: FRENCH HOLIDAY, HAWK CHILL, PACIFIC AMISTAD; Drama: VIRGIN DAISY; Family: BLOOD ARGONAUTS, GABLES METROPOLIS; Games: NAME DETECTIVE, VOLCANO TEXAS; Horror: PATTON INTERVIEW, WATERSHIP FRONTIER; Music: INSIDER ARIZONA, LEGEND JEDI; New: SALUTE APOLLO; Sci-Fi: ANNIE IDENTITY, FIDDLER LOST, TROJAN TOMORROW; Sports: PERDITION FARGO; Travel: FACTORY DRAGON                                                                                                                                                                                                                                     |
| DARYL       | Action: BAREFOOT MANCHURIAN; Animation: BORROWERS BEDAZZLED, SLEEPLESS MONSOON; Classics: COLOR PHILADELPHIA, DRACULA CRYSTAL, ISLAND EXORCIST, WASTELAND DIVINE; Comedy: DADDY PITTSBURGH, DOWNHILL ENOUGH, STRICTLY SCARFACE, VELVET TERMINATOR; Documentary: BROTHERHOOD BLANKET, SPOILERS HELLFIGHTERS; Drama: DIARY PANIC, HOBBIT ALIEN, TREATMENT JEKYLL; Family: GANDHI KWAI, HALF OUTFIELD; Foreign: HOOSIERS BIRDCAGE, ILLUSION AMELIE, OPUS ICE, PEARL DESTINY, PURPLE MOVIE; Games: MOONWALKER FOOL, PIZZA JUMANJI; New: UNBREAKABLE KARATE; Sci-Fi: GOLDMINE TYCOON, LICENSE WEEKEND, MOURNING PURPLE; Travel: SPEED SUIT                                                                                                                                                                                                                          |
| GRETA       | Action: GRAIL FRANKENSTEIN, MAGNOLIA FORRESTER, SUSPECTS QUILLS; Animation: DARES PLUTO, FLYING HOOK; Classics: ARIZONA BANG, LOATHING LEGALLY, REQUIEM TYCOON; Comedy: JAWS HARRY; Drama: BUNCH MINDS; Family: ATLANTIS CAUSE; Foreign: CALENDAR GUNFIGHT, HIGHBALL POTTER, HOOSIERS BIRDCAGE, ILLUSION AMELIE; Games: LADYBUGS ARMAGEDDON; Horror: ALABAMA DEVIL, PULP BEVERLY; Music: MONSTER SPARTACUS; Sci-Fi: ANNIE IDENTITY, BADMAN DAWN, VACATION BOONDOCK; Sports: IMAGE PRINCESS, SATURDAY LAMBS, SLIPPER FIDELITY; Travel: BASIC EASY, WOLVES DESIRE                                                                                                                                                                                                                                                                                                |
| JANE        | Animation: POTTER CONNECTICUT; Children: BACKLASH UNDEFEATED, BENEATH RUSH, IDOLS SNATCHERS, LEGALLY SECRETARY; Classics: HOPE TOOTSIE; Documentary: DANCING FEVER, RAINBOW SHOCK; Drama: LUCK OPUS; Family: BRAVEHEART HUMAN, CHOCOLAT HARRY, JEDI BENEATH; Foreign: SCISSORHANDS SLUMS; Horror: KARATE MOON, TEMPLE ATTRACTION; Music: OUTFIELD MASSACRE, UNCUT SUICIDES; New: FLAMINGOS CONNECTICUT, HOURS RAGE, MONEY HAROLD; Sci-Fi: SILVERADO GOLDFINGER; Sports: CARIBBEAN LIBERTY, GROOVE FICTION, SLIPPER FIDELITY, TALENTED HOMICIDE                                                                                                                                                                                                                                                                                                                 |
| ADAM        | Action: CLUELESS BUCKET, MOCKINGBIRD HOLLYWOOD; Children: NOON PAPI; Classics: TOWERS HURRICANE; Comedy: HEAVEN FREEDOM, SADDLE ANTITRUST; Documentary: CLERKS ANGELS, PRINCESS GIANT; Drama: TORQUE BOUND; Family: BLOOD ARGONAUTS, GABLES METROPOLIS, GREASE YOUTH; Foreign: FICTION CHRISTMAS; Horror: TRAIN BUNCH; Music: CHAMBER ITALIAN, MASKED BUBBLE, WORDS HUNTER; New: LOVERBOY ATTACKS, SLEEPY JAPANESE; Sci-Fi: BLINDNESS GUN, OPEN AFRICAN, VACATION BOONDOCK                                                                                                                                                                                                                                                                                                                                                                                     |
| RICHARD     | Action: DARKO DORADO, MONTEZUMA COMMAND; Children: EMPIRE MALKOVICH, MODEL FISH; Classics: PAJAMA JAWBREAKER; Comedy: AIRPLANE SIERRA, GROUNDHOG UNCUT, HEAVEN FREEDOM; Documentary: WAGON JAWS; Drama: CONEHEADS SMOOCHY, GONE TROUBLE, LEBOWSKI SOLDIERS, TENENBAUMS COMMAND; Family: RESURRECTION SILVERADO; Foreign: ILLUSION AMELIE; Horror: GASLIGHT CRUSADE; Music: BALLOON HOMEWARD, CHAMBER ITALIAN; New: EARTH VISION, OKLAHOMA JUMANJI, SLEEPY JAPANESE, VAMPIRE WHALE; Sci-Fi: FRISCO FORREST, GUYS FALCON, HANKY OCTOBER; Sports: INSTINCT AIRPORT; Travel: ENOUGH RAGING, FUGITIVE MAGUIRE, SUPERFLY TRIP, TOMATOES HELLFIGHTERS                                                                                                                                                                                                                 |
| GENE        | Action: DRAGON SQUAD, TRUMAN CRAZY, UPRISING UPTOWN; Animation: DOORS PRESIDENT, POND SEATTLE; Children: MODEL FISH, TOOTSIE PILOT; Classics: FROST HEAD; Comedy: HEDWIG ALTER; Documentary: DEEP CRUSADE; Drama: PITY BOUND, TORQUE BOUND; Family: CHISUM BEHAVIOR; Games: NIGHTMARE CHILL, SUIT WALLS; Music: CLUE GRAIL, ELF MURDER, VANISHING ROCKY; New: MANNEQUIN WORST; Sci-Fi: CHAINSAW UPTOWN, PANTHER REDS; Travel: GUMP DATE                                                                                                                                                                                                                                                                                                                                                                                                                        |
| RITA        | Animation: LUKE MUMMY; Children: MAKER GABLES; Classics: GILBERT PELICAN, JERK PAYCHECK; Comedy: SNATCH SLIPPER, TRAINSPOTTING STRANGERS; Documentary: NATIONAL STORY; Family: EARRING INSTINCT, INDIAN LOVE; Foreign: COMMAND DARLING, GENTLEMEN STAGE, IMPOSSIBLE PREJUDICE; Horror: ARACHNOPHOBIA ROLLERCOASTER, BEHAVIOR RUNAWAY; New: FLAMINGOS CONNECTICUT, GODFATHER DIARY; Sports: NORTHWEST POLISH, RECORDS ZORRO; Travel: ARSENIC INDEPENDENCE, BORN SPINAL                                                                                                                                                                                                                                                                                                                                                                                          |
| ED          | Action: BAREFOOT MANCHURIAN, DEVIL DESIRE, EASY GLADIATOR, LUST LOCK; Animation: CROSSROADS CASUALTIES, DOORS PRESIDENT, FALCON VOLUME, OZ LIAISONS; Children: DAUGHTER MADIGAN, JERSEY SASSY, WRONG BEHAVIOR; Classics: SLING LUKE; Documentary: MAJESTIC FLOATS; Drama: APOLLO TEEN, BEAUTY GREASE, HAROLD FRENCH, SOMETHING DUCK; Family: DUMBO LUST; Foreign: HELLFIGHTERS SIERRA; Games: SEVEN SWARM, STATE WASTELAND; Music: AMELIE HELLFIGHTERS; New: ANGELS LIFE, GODFATHER DIARY, PLUTO OLEANDER, SLEEPY JAPANESE, VAMPIRE WHALE; Sci-Fi: NEMO CAMPUS; Sports: DROP WATERFRONT, HOLES BRANNIGAN, JADE BUNCH; Travel: ESCAPE METROPOLIS                                                                                                                                                                                                                |
| MORGAN      | Action: BAREFOOT MANCHURIAN, LORD ARIZONA; Animation: CLUB GRAFFITI, EARLY HOME, HORN WORKING, JUGGLER HARDLY, MASSAGE IMAGE, PUNK DIVORCE; Children: FARGO GANDHI, POLISH BROOKLYN; Classics: ALICE FANTASIA, DRACULA CRYSTAL; Comedy: HEAVEN FREEDOM; Drama: SAINTS BRIDE; Family: MOVIE SHAKESPEARE, MUSIC BOONDOCK, SPLASH GUMP; Foreign: AGENT TRUMAN; New: BREAKING HOME; Sci-Fi: GUYS FALCON; Sports: DRIVER ANNIE, DURHAM PANKY, HYSTERICAL GRAIL, ROSES TREASURE, STAR OPERATION, TUXEDO MILE; Travel: DESPERATE TRAINSPOTTING                                                                                                                                                                                                                                                                                                                        |
| LUCILLE     | Animation: MISSION ZOOLANDER; Children: CLOCKWORK PARADISE, DAUGHTER MADIGAN, MAKER GABLES; Classics: WESTWARD SEABISCUIT; Documentary: NORTH TEQUILA; Drama: BEAUTY GREASE, HARRY IDAHO, UNFAITHFUL KILL; Family: OPPOSITE NECKLACE, PRESIDENT BANG; Foreign: BALLROOM MOCKINGBIRD, GRAPES FURY; Games: LAMBS CINCINATTI, ROXANNE REBEL; Horror: AIRPORT POLLOCK, DRUMS DYNAMITE, TEXAS WATCH; Music: TELEGRAPH VOYAGE; New: MASK PEACH; Sports: HYSTERICAL GRAIL, IMAGE PRINCESS; Travel: CASSIDY WYOMING, WORKING MICROCOSMOS                                                                                                                                                                                                                                                                                                                               |
| EWAN        | Action: DEVIL DESIRE; Animation: JUGGLER HARDLY, TITANIC BOONDOCK; Children: GRADUATE LORD; Classics: DYNAMITE TARZAN, ROOTS REMEMBER, SUMMER SCARFACE; Comedy: LONELY ELEPHANT; Documentary: DUFFEL APOCALYPSE; Drama: BUNCH MINDS, ENCOUNTERS CURTAIN, QUEEN LUKE; Family: DUMBO LUST; Foreign: COMMAND DARLING, MULHOLLAND BEAST; Games: CURTAIN VIDEOTAPE, ICE CROSSING, ROUGE SQUAD; Horror: ARACHNOPHOBIA ROLLERCOASTER; Music: AMELIE HELLFIGHTERS, BIRCH ANTITRUST, ENEMY ODDS, LUCKY FLYING, OLEANDER CLUE; New: BOULEVARD MOB, CLEOPATRA DEVIL; Sci-Fi: MOURNING PURPLE; Sports: MERMAID INSECTS, POSEIDON FOREVER, RECORDS ZORRO; Travel: BASIC EASY, CONTACT ANONYMOUS, DISCIPLE MOTHER                                                                                                                                                            |
| WHOOPI      | Animation: POTTER CONNECTICUT, SONS INTERVIEW; Children: GORGEOUS BINGO, GRADUATE LORD, LANGUAGE COWBOY, MURDER ANTITRUST, ZOOLANDER FICTION; Classics: RIGHT CRANES; Comedy: STRICTLY SCARFACE; Documentary: MIGHTY LUCK, MOD SECRETARY, PELICAN COMFORTS; Drama: UNFAITHFUL KILL; Family: KILLER INNOCENT, ROBBERY BRIGHT, SECRETS PARADISE; Foreign: CALENDAR GUNFIGHT, COWBOY DOOM; Games: ROOF CHAMPION, SPY MILE, VANILLA DAY; Horror: DRUMS DYNAMITE, PATTON INTERVIEW, PULP BEVERLY, SPIRIT FLINTSTONES; Music: OUTFIELD MASSACRE; New: BIRDS PERDITION, RIDGEMONT SUBMARINE; Sports: ANONYMOUS HUMAN, CHANCE RESURRECTION, MOTHER OLEANDER, RIDER CADDYSHACK                                                                                                                                                                                          |
| CATE        | Action: BERETS AGENT, HANDICAP BOONDOCK; Animation: DESIRE ALIEN, STORM HAPPINESS; Children: CROOKED FROGMEN, JUMPING WRATH, SCARFACE BANG; Classics: FROST HEAD, GILMORE BOILED, SUMMER SCARFACE; Comedy: CRAZY HOME; Documentary: MODERN DORADO, WRATH MILE; Drama: SEA VIRGIN; Family: ATLANTIS CAUSE, SPINAL ROCKY; Foreign: DANGEROUS UPTOWN, GREEK EVERYONE, INTRIGUE WORST, MUPPET MILE, SORORITY QUEEN; Games: STAMPEDE DISTURBING; Horror: ROLLERCOASTER BRINGING, TREASURE COMMAND; Music: PERSONAL LADYBUGS, RUNNER MADIGAN; Sci-Fi: SUN CONFESSIONS; Travel: SHINING ROSES                                                                                                                                                                                                                                                                         |
| JADA        | Action: GOSFORD DONNIE, KISSING DOLLS, SIDE ARK; Animation: ALTER VICTORY, ISHTAR ROCKETEER, SUGAR WONKA; Children: FOREVER CANDIDATE, MURDER ANTITRUST, ROBBERS JOON, ZOOLANDER FICTION; Classics: MALKOVICH PET; Comedy: TRAMP OTHERS; Documentary: CUPBOARD SINNERS, DOZEN LION, MIDSUMMER GROUNDHOG, RAIDERS ANTITRUST; Drama: BUNCH MINDS, CRAFT OUTFIELD, KWAI HOMEWARD; Family: CHASING FIGHT, RAGE GAMES; Games: STATE WASTELAND; Horror: KARATE MOON; Music: LUCKY FLYING; New: JEKYLL FROGMEN, SALUTE APOLLO; Sci-Fi: GARDEN ISLAND, SUN CONFESSIONS; Sports: ALADDIN CALENDAR, TALENTED HOMICIDE; Travel: TROUBLE DATE                                                                                                                                                                                                                              |
| RIVER       | Action: PARK CITIZEN; Animation: DOGMA FAMILY, POND SEATTLE; Children: JERSEY SASSY; Comedy: HATE HANDICAP, MYSTIC TRUMAN, PARTY KNOCK, PINOCCHIO SIMON, TRAMP OTHERS; Documentary: INDEPENDENCE HOTEL, KILL BROTHERHOOD, MIGHTY LUCK, POCUS PULP; Drama: BLADE POLISH, QUEEN LUKE, WARDROBE PHANTOM; Family: CONFUSED CANDLES, MOVIE SHAKESPEARE; Foreign: BABY HALL, SHREK LICENSE, SORORITY QUEEN; Games: CHICAGO NORTH, DIRTY ACE, FIRE WOLVES, MARS ROMAN; Horror: SPIRIT FLINTSTONES; Sports: GLEAMING JAWBREAKER; Travel: FROGMEN BREAKING, GUMP DATE, SWEET BROTHERHOOD, TEEN APOLLO                                                                                                                                                                                                                                                                   |
| ANGELA      | Action: BERETS AGENT, BULL SHAWSHANK, CELEBRITY HORN; Animation: ALTER VICTORY, WAIT CIDER; Classics: CORE SUIT, DETECTIVE VISION; Comedy: BRINGING HYSTERICAL, CAT CONEHEADS; Documentary: COAST RAINBOW, HALLOWEEN NUTS, SECRET GROUNDHOG; Drama: BLADE POLISH, EDGE KISSING, HANGING DEEP, JACKET FRISCO, KWAI HOMEWARD; Family: RUSH GOODFELLAS; Foreign: STEPMOM DREAM; Games: SASSY PACKER; Horror: PULP BEVERLY; Music: LUCKY FLYING; New: BOULEVARD MOB, DAY UNFAITHFUL; Sci-Fi: FIDDLER LOST; Sports: CHANCE RESURRECTION, DUDE BLINDNESS, EVOLUTION ALTER, EXORCIST STING, MOTHER OLEANDER, PEAK FOREVER; Travel: CASABLANCA SUPER, CASSIDY WYOMING, SHAWSHANK BUBBLE, TOMATOES HELLFIGHTERS                                                                                                                                                         |
| KIM         | Action: PATRIOT ROMAN, RUGRATS SHAKESPEARE; Animation: CLASH FREDDY, DOORS PRESIDENT, HARPER DYING, POTLUCK MIXED, WAIT CIDER; Children: HEARTBREAKERS BRIGHT; Classics: JINGLE SAGEBRUSH; Documentary: INDEPENDENCE HOTEL, NOTORIOUS REUNION, RAINBOW SHOCK; Drama: UNFAITHFUL KILL; Family: SOUP WISDOM; Foreign: ORANGE GRAPES, PAST SUICIDES, RESERVOIR ADAPTATION; Horror: JAPANESE RUN, KARATE MOON, LOLA AGENT; Music: MONSTER SPARTACUS; New: BUTTERFLY CHOCOLAT, CLEOPATRA DEVIL; Sci-Fi: ARMAGEDDON LOST, NONE SPIKING, TITANS JERK; Sports: CARIBBEAN LIBERTY, EXORCIST STING                                                                                                                                                                                                                                                                       |
| ALBERT      | Animation: FIGHT JAWBREAKER, HARPER DYING; Children: CROOKED FROGMEN, WALLS ARTIST; Classics: LEAGUE HELLFIGHTERS, RIGHT CRANES; Comedy: HEAVEN FREEDOM, SWEDEN SHINING; Documentary: HOMEWARD CIDER, METAL ARMAGEDDON, ROAD ROXANNE, VIRGINIAN PLUTO, WEDDING APOLLO; Drama: APOLLO TEEN, DECEIVER BETRAYED, LEBOWSKI SOLDIERS, WEST LION; Foreign: ALLEY EVOLUTION, DANGEROUS UPTOWN; Games: CANDLES GRAPES, MONSOON CAUSE; Horror: TREASURE COMMAND, UNDEFEATED DALMATIONS; Music: ALASKA PHANTOM, ELF MURDER, GROSSE WONDERFUL; New: FLAMINGOS CONNECTICUT, REDEMPTION COMFORTS; Sci-Fi: CONNECTICUT TRAMP, EXPRESS LONELY; Sports: CRUSADE HONEY, GRACELAND DYNAMITE, HONEY TIES                                                                                                                                                                          |
| FAY         | Action: FIREHOUSE VIETNAM; Animation: HARPER DYING, OZ LIAISONS; Children: POLISH BROOKLYN, SUNDANCE INVASION; Classics: CENTER DINOSAUR, FROST HEAD, MALKOVICH PET; Comedy: CONNECTION MICROCOSMOS, HEAVEN FREEDOM, HURRICANE AFFAIR; Documentary: BONNIE HOLOCAUST, EXPENDABLE STALLION, QUILLS BULL; Family: CHASING FIGHT, CHISUM BEHAVIOR; Foreign: HOOSIERS BIRDCAGE, WAR NOTTING; Games: FEVER EMPIRE, LAMBS CINCINATTI, MASSACRE USUAL; Horror: AFFAIR PREJUDICE, GASLIGHT CRUSADE; Music: FREAKY POCUS, WORDS HUNTER; New: DRAGONFLY STRANGERS, FATAL HAUNTED; Sci-Fi: EYES DRIVING, HAMLET WISDOM; Sports: DRIVER ANNIE; Travel: HAUNTED ANTITRUST                                                                                                                                                                                                   |
| EMILY       | Children: CHRISTMAS MOONSHINE, INVASION CYCLONE, SCARFACE BANG; Classics: OCTOBER SUBMARINE; Drama: GONE TROUBLE, SEA VIRGIN; Foreign: SHREK LICENSE; Music: CHAMBER ITALIAN, REBEL AIRPORT; New: DESTINY SATURDAY; Sci-Fi: HOLLOW JEOPARDY; Sports: ANONYMOUS HUMAN; Travel: BASIC EASY, FUGITIVE MAGUIRE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| RUSSELL     | Animation: CANYON STOCK, CROSSROADS CASUALTIES; Children: GHOST GROUNDHOG, SANTA PARIS; Classics: TOWERS HURRICANE; Comedy: CLOSER BANG, CONNECTION MICROCOSMOS, CRAZY HOME, GOLD RIVER, TRAINSPOTTING STRANGERS; Documentary: BILL OTHERS, PELICAN COMFORTS, WRATH MILE; Drama: CHITTY LOCK; Family: BANG KWAI, CHASING FIGHT, INDIAN LOVE, SLUMS DUCK; Foreign: VISION TORQUE; Games: GLORY TRACY, VOLCANO TEXAS; Music: UNCUT SUICIDES; New: BREAKFAST GOLDFINGER, PLATOON INSTINCT, TROOPERS METAL; Sci-Fi: CITIZEN SHREK; Sports: NOVOCAINE FLIGHT, SHAKESPEARE SADDLE; Travel: COMFORTS RUSH, FROGMEN BREAKING, SMILE EARRING                                                                                                                                                                                                                            |
| JAYNE       | Action: BULL SHAWSHANK, LUST LOCK, PRIMARY GLASS; Animation: ANACONDA CONFESSIONS, HORN WORKING, TELEMARK HEARTBREAKERS, THIEF PELICAN, TITANIC BOONDOCK, WAIT CIDER; Children: COMANCHEROS ENEMY, INVASION CYCLONE, SWEETHEARTS SUSPECTS, TIES HUNGER; Classics: CREEPERS KANE, WASTELAND DIVINE; Comedy: PERFECT GROOVE; Documentary: DANCING FEVER, NOTORIOUS REUNION; Drama: REUNION WITCHES; Family: BEDAZZLED MARRIED, BRAVEHEART HUMAN; Games: FEATHERS METAL, ICE CROSSING, LAMBS CINCINATTI; Horror: STRANGERS GRAFFITI; Music: OUTFIELD MASSACRE; New: EARTH VISION, MAIDEN HOME; Sci-Fi: ENGLISH BULWORTH; Sports: HYSTERICAL GRAIL, SECRETARY ROUGE; Travel: BIRD INDEPENDENCE, DISCIPLE MOTHER, GUMP DATE                                                                                                                                         |
| GEOFFREY    | Action: KISSING DOLLS, MIDNIGHT WESTWARD; Animation: PUNK DIVORCE, TELEMARK HEARTBREAKERS, TITANIC BOONDOCK; Children: GORGEOUS BINGO; Classics: CENTER DINOSAUR, JEOPARDY ENCINO, TOMORROW HUSTLER; Drama: LUCK OPUS; Family: ODDS BOOGIE; Foreign: COMMAND DARLING; Games: DAZED PUNK, DIRTY ACE, GRIT CLOCKWORK; Horror: LOLA AGENT, PARIS WEEKEND, PATTON INTERVIEW; New: CHINATOWN GLADIATOR; Sci-Fi: GOLDMINE TYCOON; Sports: INSTINCT AIRPORT, MERMAID INSECTS; Travel: COMA HEAD, FUGITIVE MAGUIRE, IGBY MAKER, WORKING MICROCOSMOS                                                                                                                                                                                                                                                                                                                    |
| BEN         | Action: FIREHOUSE VIETNAM, UPRISING UPTOWN, WATERFRONT DELIVERANCE, WEREWOLF LOLA; Animation: NASH CHOCOLAT; Children: BEAR GRACELAND, SCARFACE BANG; Classics: MILLION ACE, MUSKETEERS WAIT, TIMBERLAND SKY; Comedy: FRANKENSTEIN STRANGER, PINOCCHIO SIMON; Documentary: DOZEN LION; Family: JASON TRAP; Foreign: MUPPET MILE, PET HAUNTING, SORORITY QUEEN; Games: DAZED PUNK; Horror: JAPANESE RUN; New: STING PERSONAL; Sci-Fi: CITIZEN SHREK; Sports: RIDER CADDYSHACK, TOURIST PELICAN                                                                                                                                                                                                                                                                                                                                                                  |
| MINNIE      | Action: RINGS HEARTBREAKERS; Classics: CONSPIRACY SPIRIT, JEEPERS WEDDING, LOVELY JINGLE; Comedy: HUSTLER PARTY, SADDLE ANTITRUST, VELVET TERMINATOR; Documentary: NORTH TEQUILA; Drama: BEETHOVEN EXORCIST, SAVANNAH TOWN; Family: DINOSAUR SECRETARY, JASON TRAP; Foreign: BABY HALL, JET NEIGHBORS; Games: TYCOON GATHERING; New: CHAPLIN LICENSE, STOCK GLASS; Sci-Fi: DAISY MENAGERIE, SOLDIERS EVOLUTION; Travel: WORKER TARZAN                                                                                                                                                                                                                                                                                                                                                                                                                          |
| MERYL       | Action: CADDYSHACK JEDI, SKY MIRACLE; Animation: CROSSROADS CASUALTIES, DARES PLUTO, FIGHT JAWBREAKER, JUGGLER HARDLY; Children: MODEL FISH; Comedy: ELEMENT FREDDY, PINOCCHIO SIMON; Documentary: EGG IGBY, PRINCESS GIANT; Drama: ENCOUNTERS CURTAIN, HANGING DEEP; Foreign: COMMAND DARLING, HAPPINESS UNITED, HOLIDAY GAMES, HUNGER ROOF, INTRIGUE WORST; Games: CHICAGO NORTH, STATE WASTELAND; Music: CLONES PINOCCHIO; New: WAKE JAWS; Sci-Fi: MOURNING PURPLE; Sports: ANONYMOUS HUMAN, JADE BUNCH; Travel: COMFORTS RUSH, FACTORY DRAGON, WORKER TARZAN                                                                                                                                                                                                                                                                                               |
| IAN         | Action: BERETS AGENT, FANTASY TROOPERS; Animation: STORM HAPPINESS; Children: POLISH BROOKLYN, SCARFACE BANG; Classics: DRACULA CRYSTAL; Comedy: ZORRO ARK; Documentary: HAWK CHILL, HOMEWARD CIDER, SAGEBRUSH CLUELESS, WEDDING APOLLO; Drama: NOTTING SPEAKEASY; Family: GLADIATOR WESTWARD; Foreign: CATCH AMISTAD, INFORMER DOUBLE, MIXED DOORS; Games: GUN BONNIE, VIDEOTAPE ARSENIC; Horror: TEXAS WATCH; Music: AMELIE HELLFIGHTERS, DEER VIRGINIAN, WORDS HUNTER, YOUTH KICK; New: MONEY HAROLD; Sci-Fi: CITIZEN SHREK, FIDDLER LOST; Sports: GLEAMING JAWBREAKER, GROOVE FICTION, TIGHTS DAWN; Travel: LEATHERNECKS DWARFS, SHAWSHANK BUBBLE                                                                                                                                                                                                          |
| FAY         | Animation: GANGS PRIDE; Classics: EXTRAORDINARY CONQUERER; Comedy: RUSHMORE MERMAID; Drama: GREEDY ROOTS, KWAI HOMEWARD, SEATTLE EXPECATIONS; Family: BANG KWAI, DUMBO LUST; Foreign: CRYSTAL BREAKING, INTRIGUE WORST, PURPLE MOVIE; Games: OUTBREAK DIVINE; Horror: FAMILY SWEET, MONTEREY LABYRINTH; Music: DORADO NOTTING, INSIDER ARIZONA; New: CLEOPATRA DEVIL, IDAHO LOVE; Sci-Fi: ENGLISH BULWORTH; Sports: DURHAM PANKY, STEERS ARMAGEDDON; Travel: LIAISONS SWEET                                                                                                                                                                                                                                                                                                                                                                                    |
| GRETA       | Action: DARKO DORADO, FANTASY TROOPERS, MIDNIGHT WESTWARD, SKY MIRACLE; Animation: FLYING HOOK, PRIDE ALAMO; Children: MICROCOSMOS PARADISE; Classics: TADPOLE PARK; Comedy: CLOSER BANG, MULAN MOON; Documentary: HARDLY ROBBERS, NATIONAL STORY, RAINBOW SHOCK, WIFE TURN; Family: CONVERSATION DOWNHILL; Foreign: GENTLEMEN STAGE, HOOSIERS BIRDCAGE, PAST SUICIDES; Games: DAZED PUNK, HAUNTING PIANIST, SPY MILE; Horror: ANALYZE HOOSIERS, ARABIA DOGMA, CARRIE BUNCH, LOVE SUICIDES; New: FLASH WARS, TROOPERS METAL; Sci-Fi: WEEKEND PERSONAL; Sports: ALADDIN CALENDAR, EVOLUTION ALTER; Travel: KICK SAVANNAH, ORDER BETRAYED                                                                                                                                                                                                                        |
| VIVIEN      | Action: SUSPECTS QUILLS, WEREWOLF LOLA; Animation: CAROL TEXAS, DONNIE ALLEY, TELEMARK HEARTBREAKERS; Children: BENEATH RUSH, NOON PAPI, TOOTSIE PILOT; Comedy: CONNECTION MICROCOSMOS, CRAZY HOME, MALLRATS UNITED; Documentary: NATIONAL STORY, SMOKING BARBARELLA; Drama: BEETHOVEN EXORCIST, JACKET FRISCO; Family: HOUSE DYNAMITE, SPARTACUS CHEAPER; Foreign: BABY HALL; Games: DAWN POND, JERICHO MULAN, STAMPEDE DISTURBING; Horror: SIMON NORTH, SPIRIT FLINTSTONES, WORLD LEATHERNECKS; Music: MINORITY KISS, TELEGRAPH VOYAGE; New: APOCALYPSE FLAMINGOS; Sci-Fi: CONNECTICUT TRAMP, OPEN AFRICAN, WEEKEND PERSONAL; Sports: BUBBLE GROSSE, EXORCIST STING, LOSER HUSTLER; Travel: MOULIN WAKE, TOMATOES HELLFIGHTERS                                                                                                                               |
| LAURA       | Action: MAGNOLIA FORRESTER, SKY MIRACLE; Animation: DARES PLUTO, DESIRE ALIEN; Children: FULL FLATLINERS, FURY MURDER; Comedy: CAT CONEHEADS, PINOCCHIO SIMON, WISDOM WORKER; Documentary: DANCING FEVER, DOZEN LION; Drama: HOBBIT ALIEN, SOMETHING DUCK, TRANSLATION SUMMER; Family: BLOOD ARGONAUTS; Foreign: PET HAUNTING, SHOCK CABIN; Horror: MOTIONS DETAILS, SINNERS ATLANTIS, TARZAN VIDEOTAPE; Music: AMELIE HELLFIGHTERS; New: GODFATHER DIARY, MASK PEACH; Sports: CRANES RESERVOIR; Travel: FUGITIVE MAGUIRE, SHANGHAI TYCOON                                                                                                                                                                                                                                                                                                                     |
| CHRIS       | Action: MINDS TRUMAN, SIDE ARK; Children: SABRINA MIDNIGHT, TEQUILA PAST; Classics: IRON MOON, JERK PAYCHECK, VOLUME HOUSE; Comedy: DOOM DANCING, PARTY KNOCK; Drama: GONE TROUBLE; Family: ATLANTIS CAUSE; Foreign: IMPOSSIBLE PREJUDICE, SCHOOL JACKET; Horror: ACE GOLDFINGER, EGYPT TENENBAUMS; Music: ALONE TRIP, SCALAWAG DUCK; New: EAGLES PANKY, WAKE JAWS; Travel: SPEED SUIT                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| HARVEY      | Action: SPEAKEASY DATE, STORY SIDE, UPRISING UPTOWN; Animation: BORROWERS BEDAZZLED, OSCAR GOLD, TELEMARK HEARTBREAKERS; Children: MODEL FISH; Classics: HOLY TADPOLE, IRON MOON; Comedy: CRAZY HOME, DOWNHILL ENOUGH; Documentary: BEACH HEARTBREAKERS; Drama: HAROLD FRENCH; Family: ATLANTIS CAUSE, EARRING INSTINCT; Foreign: GENTLEMEN STAGE, HELLFIGHTERS SIERRA, PEARL DESTINY; Games: ENCINO ELF, PIZZA JUMANJI, SLEUTH ORIENT; Horror: PANIC CLUB, RULES HUMAN; Music: UNCUT SUICIDES; New: BOULEVARD MOB, FRONTIER CABIN, UNBREAKABLE KARATE; Sci-Fi: PANTHER REDS, RANDOM GO, UNFORGIVEN ZOOLANDER; Sports: CARIBBEAN LIBERTY; Travel: LOCK REAR                                                                                                                                                                                                    |
| OPRAH       | Action: MIDNIGHT WESTWARD, PARK CITIZEN, WEREWOLF LOLA; Animation: ALTER VICTORY, CAROL TEXAS; Children: HEARTBREAKERS BRIGHT, SHEPHERD MIDSUMMER; Comedy: AIRPLANE SIERRA, ANTHEM LUKE, HEAVEN FREEDOM; Documentary: ACADEMY DINOSAUR, BONNIE HOLOCAUST, COAST RAINBOW, EGG IGBY; Drama: APOLLO TEEN; Foreign: KISS GLORY; Horror: AFFAIR PREJUDICE, HIGH ENCINO, TREASURE COMMAND; Music: OLEANDER CLUE; New: APOCALYPSE FLAMINGOS; Sports: ELIZABETH SHANE, MUSSOLINI SPOILERS, STEERS ARMAGEDDON; Travel: ARSENIC INDEPENDENCE                                                                                                                                                                                                                                                                                                                             |
| CHRISTOPHER | Action: FANTASY TROOPERS; Animation: DOGMA FAMILY; Children: FARGO GANDHI, HEARTBREAKERS BRIGHT, SPLENDOR PATTON; Classics: COLOR PHILADELPHIA, CONSPIRACY SPIRIT, TIMBERLAND SKY; Comedy: HUSTLER PARTY, LIFE TWISTED; Documentary: YOUNG LANGUAGE; Foreign: VISION TORQUE; Horror: ANYTHING SAVANNAH, TEMPLE ATTRACTION; New: ATTRACTION NEWTON, ENDING CROWDS; Sci-Fi: HAMLET WISDOM; Sports: RECORDS ZORRO; Travel: FELLOWSHIP AUTUMN, HORROR REIGN, SHAWSHANK BUBBLE                                                                                                                                                                                                                                                                                                                                                                                      |
| HUMPHREY    | Action: DREAM PICKUP; Animation: ANACONDA CONFESSIONS, SONS INTERVIEW; Children: SISTER FREDDY; Classics: IRON MOON; Comedy: FLINTSTONES HAPPINESS, MYSTIC TRUMAN; Documentary: PRINCESS GIANT, SPOILERS HELLFIGHTERS; Family: MUSIC BOONDOCK, SPLASH GUMP; Foreign: ALIEN CENTER, CHOCOLATE DUCK, HOOSIERS BIRDCAGE, MADNESS ATTACKS, TRAP GUYS, WAR NOTTING, WONDERFUL DROP; Music: PERSONAL LADYBUGS, TERMINATOR CLUB; New: IDAHO LOVE; Sci-Fi: GOLDMINE TYCOON; Sports: PIRATES ROXANNE, STRAIGHT HOURS; Travel: COMFORTS RUSH, GAMES BOWFINGER                                                                                                                                                                                                                                                                                                            |
| AL          | Action: DRIFTER COMMANDMENTS, GLASS DYING, GRAIL FRANKENSTEIN, HANDICAP BOONDOCK, PARK CITIZEN; Animation: OSCAR GOLD, POTTER CONNECTICUT; Children: SPLENDOR PATTON; Classics: WASTELAND DIVINE; Documentary: BILL OTHERS; Drama: CHITTY LOCK, DALMATIONS SWEDEN, JACKET FRISCO; Family: HOUSE DYNAMITE, SPLASH GUMP; Foreign: HOLIDAY GAMES, MUPPET MILE, VISION TORQUE; Games: SLEUTH ORIENT; Horror: ROCK INSTINCT; New: BREAKFAST GOLDFINGER, VOICE PEACH; Sci-Fi: SILVERADO GOLDFINGER; Sports: SENSE GREEK, SLIPPER FIDELITY; Travel: ENOUGH RAGING                                                                                                                                                                                                                                                                                                     |
| NICK        | Action: ARK RIDGEMONT; Animation: FLYING HOOK; Children: BETRAYED REAR; Classics: EXTRAORDINARY CONQUERER; Comedy: ZORRO ARK; Documentary: NEWSIES STORY, SHIP WONDERLAND; Drama: BEAUTY GREASE, CHITTY LOCK, GOLDFINGER SENSIBILITY, VIRGIN DAISY; Family: SUPER WYOMING; Foreign: PET HAUNTING; Games: FEATHERS METAL; Music: BOOGIE AMELIE, DRIVING POLISH, HOME PITY; New: ANGELS LIFE, MINE TITANS; Sci-Fi: BARBARELLA STREETCAR, RANDOM GO; Sports: GLEAMING JAWBREAKER                                                                                                                                                                                                                                                                                                                                                                                  |
| LAURENCE    | Action: REAR TRADING, SIDE ARK, SKY MIRACLE; Animation: POTLUCK MIXED; Children: CROOKED FROGMEN, NOON PAPI, SUNDANCE INVASION; Classics: FROST HEAD, MALKOVICH PET; Comedy: PERFECT GROOVE; Documentary: BILL OTHERS, ROAD ROXANNE; Drama: BUNCH MINDS, TENENBAUMS COMMAND, UNFAITHFUL KILL; Family: BEDAZZLED MARRIED; Horror: SINNERS ATLANTIS, STREETCAR INTENTIONS; Music: ALONE TRIP; New: ANGELS LIFE; Sci-Fi: FISH OPUS; Sports: CARIBBEAN LIBERTY, NORTHWEST POLISH; Travel: EXPECATIONS NATURAL, FROGMEN BREAKING, KICK SAVANNAH                                                                                                                                                                                                                                                                                                                     |
| WILL        | Action: BAREFOOT MANCHURIAN, CAMPUS REMEMBER, UPRISING UPTOWN; Animation: DARES PLUTO, DONNIE ALLEY, HORN WORKING, THEORY MERMAID, TITANIC BOONDOCK; Children: NOON PAPI, TIES HUNGER, WARLOCK WEREWOLF; Classics: CRUELTY UNFORGIVEN, PAJAMA JAWBREAKER; Comedy: CRAZY HOME; Documentary: FRENCH HOLIDAY; Games: GUN BONNIE, HUMAN GRAFFITI, SLEUTH ORIENT; Horror: BOWFINGER GABLES, SLEEPING SUSPECTS; Music: DRIVING POLISH; New: APOCALYPSE FLAMINGOS, FATAL HAUNTED, PLATOON INSTINCT; Sci-Fi: MOURNING PURPLE; Sports: DIVORCE SHINING, LIBERTY MAGNIFICENT, NEIGHBORS CHARADE, PICKUP DRIVING, STAR OPERATION; Travel: SPEED SUIT                                                                                                                                                                                                                      |
| KENNETH     | Animation: BLACKOUT PRIVATE, FLYING HOOK, GANGS PRIDE, MASSAGE IMAGE, STORM HAPPINESS; Children: LABYRINTH LEAGUE; Classics: PREJUDICE OLEANDER, SNATCHERS MONTEZUMA; Documentary: DOZEN LION, METAL ARMAGEDDON, WRATH MILE; Drama: TORQUE BOUND; Family: ODDS BOOGIE, RESURRECTION SILVERADO, SECRETS PARADISE; Foreign: AGENT TRUMAN, DOUBTFIRE LABYRINTH; Horror: FAMILY SWEET, ZHIVAGO CORE; Music: HANOVER GALAXY, PERSONAL LADYBUGS; New: BRANNIGAN SUNRISE, EVE RESURRECTION, STOCK GLASS, WAKE JAWS; Sports: GRACELAND DYNAMITE; Travel: HORROR REIGN, ORDER BETRAYED, TOMATOES HELLFIGHTERS                                                                                                                                                                                                                                                           |
| MENA        | Action: DARN FORRESTER; Animation: THEORY MERMAID; Children: WRONG BEHAVIOR; Classics: CONSPIRACY SPIRIT, CORE SUIT, GILMORE BOILED, LOVER TRUMAN; Comedy: AIRPLANE SIERRA; Documentary: UNITED PILOT, YOUNG LANGUAGE; Drama: APOLLO TEEN, SAINTS BRIDE; Family: CHASING FIGHT; Foreign: ALIEN CENTER, HIGHBALL POTTER, PURPLE MOVIE; Games: LAMBS CINCINATTI; Music: TAXI KICK; Sports: ANONYMOUS HUMAN, BUBBLE GROSSE, FLATLINERS KILLER, SATURDAY LAMBS; Travel: FACTORY DRAGON, SUPERFLY TRIP                                                                                                                                                                                                                                                                                                                                                              |
| OLYMPIA     | Action: FIREHOUSE VIETNAM, MAGNOLIA FORRESTER; Animation: STORM HAPPINESS, TITANIC BOONDOCK, WAIT CIDER; Children: IDOLS SNATCHERS, MURDER ANTITRUST, SANTA PARIS; Classics: COLOR PHILADELPHIA; Documentary: DEEP CRUSADE, INTOLERABLE INTENTIONS; Drama: CHITTY LOCK; Family: EFFECT GLADIATOR; Foreign: MAUDE MOD; Games: ICE CROSSING, MARS ROMAN, PSYCHO SHRUNK; Sci-Fi: BADMAN DAWN, EXPRESS LONELY, HANKY OCTOBER, NONE SPIKING; Sports: SENSE GREEK, TOURIST PELICAN; Travel: CONTACT ANONYMOUS, FUGITIVE MAGUIRE, OTHERS SOUP, SWEET BROTHERHOOD, TRAFFIC HOBBIT                                                                                                                                                                                                                                                                                      |
| GROUCHO     | Animation: OZ LIAISONS; Children: HOLLYWOOD ANONYMOUS, SPLENDOR PATTON, WARLOCK WEREWOLF; Classics: JINGLE SAGEBRUSH, ROOTS REMEMBER; Comedy: GROUNDHOG UNCUT, LONELY ELEPHANT; Drama: GONE TROUBLE, SAINTS BRIDE, SCORPION APOLLO; Family: GABLES METROPOLIS, OPPOSITE NECKLACE, RAGE GAMES; Foreign: BROOKLYN DESERT, CHOCOLATE DUCK, KANE EXORCIST, MEET CHOCOLATE, PAST SUICIDES; Games: DAWN POND, FANTASIA PARK; New: LOVERBOY ATTACKS; Sports: PEACH INNOCENT; Travel: BASIC EASY, MUSCLE BRIGHT                                                                                                                                                                                                                                                                                                                                                        |
| ALAN        | Action: CLUELESS BUCKET; Animation: CLASH FREDDY, MASSAGE IMAGE; Children: JUMPING WRATH, POLISH BROOKLYN, STRANGELOVE DESIRE, UPTOWN YOUNG; Comedy: CRAZY HOME, LONELY ELEPHANT, STRICTLY SCARFACE; Documentary: METAL ARMAGEDDON, SAGEBRUSH CLUELESS; Drama: GREEDY ROOTS; Family: BLANKET BEVERLY, MAGUIRE APACHE, RUSH GOODFELLAS; Games: BULWORTH COMMANDMENTS; Horror: FIDELITY DEVIL; Music: BIRCH ANTITRUST, MONSTER SPARTACUS, UNCUT SUICIDES; New: VAMPIRE WHALE; Sci-Fi: BADMAN DAWN, BARBARELLA STREETCAR, DIVIDE MONSTER; Travel: HAUNTED ANTITRUST, KICK SAVANNAH                                                                                                                                                                                                                                                                                |
| MICHAEL     | Action: PARK CITIZEN, WOMEN DORADO; Children: COMANCHEROS ENEMY, STRANGELOVE DESIRE, STRANGER STRANGERS; Documentary: NEWSIES STORY; Drama: BEAUTY GREASE, NECKLACE OUTBREAK, SPICE SORORITY; Family: HUNTING MUSKETEERS, MUSIC BOONDOCK, SENSIBILITY REAR; Foreign: ALAMO VIDEOTAPE, PURPLE MOVIE; Games: GATHERING CALENDAR; Horror: REEF SALUTE, SPIRIT FLINTSTONES; Music: SILENCE KANE, TELEGRAPH VOYAGE; New: PIANIST OUTFIELD; Sci-Fi: EYES DRIVING; Sports: SLIPPER FIDELITY; Travel: IGBY MAKER, KICK SAVANNAH                                                                                                                                                                                                                                                                                                                                        |
| WILLIAM     | Action: ANTITRUST TOMATOES, BERETS AGENT; Children: CROOKED FROGMEN, HOLOCAUST HIGHBALL; Classics: CREEPERS KANE, SPIKING ELEMENT; Comedy: WISDOM WORKER; Documentary: CAUSE DATE, NATIONAL STORY; Drama: HUNCHBACK IMPOSSIBLE, SEA VIRGIN; Family: HUNTING MUSKETEERS, SECRETS PARADISE; Foreign: TRAP GUYS; Games: GLORY TRACY, JERICHO MULAN, MONSOON CAUSE, MOONSHINE CABIN, STATE WASTELAND; Horror: ALABAMA DEVIL, ZHIVAGO CORE; New: CLEOPATRA DEVIL; Sports: RECORDS ZORRO, RIDER CADDYSHACK, TIGHTS DAWN; Travel: HAUNTED ANTITRUST, WINDOW SIDE                                                                                                                                                                                                                                                                                                      |
| JON         | Action: CLUELESS BUCKET, DREAM PICKUP, FANTASY TROOPERS, HILLS NEIGHBORS, SKY MIRACLE; Animation: BORROWERS BEDAZZLED, INSECTS STONE, SUGAR WONKA; Children: DOCTOR GRAIL, MICROCOSMOS PARADISE; Documentary: CIDER DESIRE, HUNTER ALTER; Drama: HAROLD FRENCH, LIES TREATMENT, SAINTS BRIDE, SPICE SORORITY; Family: INDIAN LOVE, VIRTUAL SPOILERS; Foreign: RESERVOIR ADAPTATION; Games: PRIVATE DROP, ROUGE SQUAD; Horror: ALI FOREVER, ROLLERCOASTER BRINGING; New: FLAMINGOS CONNECTICUT; Sci-Fi: BINGO TALENTED, STALLION SUNDANCE; Sports: LESSON CLEOPATRA; Travel: MADIGAN DORADO, SWEET BROTHERHOOD                                                                                                                                                                                                                                                  |
| GENE        | Animation: HORN WORKING, OZ LIAISONS; Comedy: CRAZY HOME, LIFE TWISTED; Drama: HAROLD FRENCH, PITY BOUND, SPICE SORORITY, TREATMENT JEKYLL; Family: CONFUSED CANDLES, INDIAN LOVE; Foreign: BALLROOM MOCKINGBIRD, RESERVOIR ADAPTATION; Games: MASSACRE USUAL, PIZZA JUMANJI, WANDA CHAMBER; Music: ALASKA PHANTOM, BOOGIE AMELIE, GO PURPLE; New: EVE RESURRECTION, RUNAWAY TENENBAUMS; Sci-Fi: ARMAGEDDON LOST, BARBARELLA STREETCAR, DIVIDE MONSTER; Sports: DIVORCE SHINING, SATISFACTION CONFIDENTIAL, SATURDAY LAMBS; Travel: MADIGAN DORADO                                                                                                                                                                                                                                                                                                             |
| LISA        | Action: CROW GREASE; Animation: CLUB GRAFFITI; Classics: LOVER TRUMAN, ROOTS REMEMBER; Comedy: ZORRO ARK; Documentary: COAST RAINBOW, MOD SECRETARY, QUILLS BULL; Drama: CHITTY LOCK; Family: EFFECT GLADIATOR; Foreign: FICTION CHRISTMAS; Games: JERICHO MULAN, SASSY PACKER; Horror: ANYTHING SAVANNAH, ARABIA DOGMA; Music: WON DARES; New: BUTTERFLY CHOCOLAT, WILD APOLLO; Sci-Fi: HANKY OCTOBER, VACATION BOONDOCK; Sports: CRUSADE HONEY, LESSON CLEOPATRA, RIVER OUTLAW                                                                                                                                                                                                                                                                                                                                                                               |
| ED          | Action: DRAGON SQUAD, RINGS HEARTBREAKERS; Animation: CROSSROADS CASUALTIES, JUGGLER HARDLY; Children: INVASION CYCLONE, MODEL FISH, STRANGELOVE DESIRE; Classics: CENTER DINOSAUR; Comedy: CLOSER BANG; Documentary: BONNIE HOLOCAUST, PACIFIC AMISTAD, PRINCESS GIANT, WARS PLUTO; Foreign: GENTLEMEN STAGE, MAUDE MOD, SCHOOL JACKET; Games: WIND PHANTOM; Horror: ANALYZE HOOSIERS, BEHAVIOR RUNAWAY, HIGH ENCINO, ROCK INSTINCT; New: BUTTERFLY CHOCOLAT; Sci-Fi: SOLDIERS EVOLUTION, UNFORGIVEN ZOOLANDER; Sports: ANONYMOUS HUMAN, EVOLUTION ALTER, INSTINCT AIRPORT; Travel: SMILE EARRING, VALENTINE VANISHING                                                                                                                                                                                                                                        |
| JEFF        | Action: RINGS HEARTBREAKERS, SUSPECTS QUILLS; Animation: SONS INTERVIEW, WATCH TRACY; Children: WALLS ARTIST; Classics: TADPOLE PARK; Comedy: PARADISE SABRINA; Documentary: HUNTER ALTER, NEWSIES STORY; Drama: APOLLO TEEN; Family: REMEMBER DIARY, SPARTACUS CHEAPER; Horror: DRUMS DYNAMITE, LADY STAGE; Music: ALASKA PHANTOM; New: CHINATOWN GLADIATOR, MASK PEACH, STOCK GLASS; Sci-Fi: CROWDS TELEMARK; Sports: NORTHWEST POLISH, RIDER CADDYSHACK, SECRETARY ROUGE, SLIPPER FIDELITY; Travel: MUSCLE BRIGHT, SMILE EARRING                                                                                                                                                                                                                                                                                                                            |
| MATTHEW     | Action: LUST LOCK, MINDS TRUMAN, TRIP NEWTON, WORST BANGER; Animation: BLACKOUT PRIVATE, INCH JET, SNOWMAN ROLLERCOASTER, TITANIC BOONDOCK; Children: CIRCUS YOUTH, HEARTBREAKERS BRIGHT; Classics: ROOTS REMEMBER, TADPOLE PARK; Comedy: LIFE TWISTED, MULAN MOON; Documentary: ARMY FLINTSTONES; Drama: HARRY IDAHO, LUCK OPUS, TRANSLATION SUMMER; Family: AFRICAN EGG, BLUES INSTINCT, HOUSE DYNAMITE; Foreign: FICTION CHRISTMAS; Games: GRINCH MASSAGE, GUN BONNIE, LADYBUGS ARMAGEDDON, MADRE GABLES, MOONSHINE CABIN; Horror: FAMILY SWEET, SWARM GOLD; Music: BIRCH ANTITRUST, UNCUT SUICIDES; Sci-Fi: CROWDS TELEMARK, NONE SPIKING; Sports: HOLES BRANNIGAN, SQUAD FISH; Travel: DISCIPLE MOTHER, ENOUGH RAGING, MUSCLE BRIGHT, SUPERFLY TRIP                                                                                                       |
| DEBBIE      | Animation: CLUB GRAFFITI; Children: SUNDANCE INVASION; Classics: GALAXY SWEETHEARTS, SPIKING ELEMENT; Comedy: FLINTSTONES HAPPINESS, HEDWIG ALTER; Drama: APOLLO TEEN; Family: HALF OUTFIELD, HOUSE DYNAMITE, OPPOSITE NECKLACE, PILOT HOOSIERS, PRESIDENT BANG; Foreign: HOLIDAY GAMES, STEPMOM DREAM; Games: GLORY TRACY; Horror: FAMILY SWEET, WORLD LEATHERNECKS; Music: SONG HEDWIG; New: MONEY HAROLD, PIANIST OUTFIELD, REDEMPTION COMFORTS; Sci-Fi: RANDOM GO; Sports: PEAK FOREVER, VICTORY ACADEMY                                                                                                                                                                                                                                                                                                                                                   |
| RUSSELL     | Action: STORY SIDE; Classics: SUMMER SCARFACE; Comedy: GUNFIGHT MOON; Documentary: ARMY FLINTSTONES, MIGHTY LUCK; Family: BILKO ANONYMOUS, RANGE MOONWALKER; Games: VIDEOTAPE ARSENIC, VOLCANO TEXAS; Horror: FIDELITY DEVIL, KENTUCKIAN GIANT; Music: OLEANDER CLUE, WON DARES; New: APOCALYPSE FLAMINGOS; Sci-Fi: GUYS FALCON, LICENSE WEEKEND; Sports: CALIFORNIA BIRDS, GUNFIGHTER MUSSOLINI; Travel: TROUBLE DATE                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| HUMPHREY    | Action: GOSFORD DONNIE, MIDNIGHT WESTWARD; Animation: NASH CHOCOLAT; Children: WARLOCK WEREWOLF; Documentary: DELIVERANCE MULHOLLAND, FRENCH HOLIDAY, PACIFIC AMISTAD, WEDDING APOLLO; Drama: CHITTY LOCK, SEA VIRGIN, WEST LION; Family: SUPER WYOMING; Foreign: ILLUSION AMELIE, JET NEIGHBORS, KISS GLORY, OPUS ICE, PAST SUICIDES; Games: MOONWALKER FOOL, PIZZA JUMANJI; Horror: ARACHNOPHOBIA ROLLERCOASTER; New: JUNGLE CLOSER, MINE TITANS; Sci-Fi: WEEKEND PERSONAL, WONDERLAND CHRISTMAS; Sports: ROSES TREASURE; Travel: BOONDOCK BALLROOM, COMFORTS RUSH, ORDER BETRAYED, SHINING ROSES                                                                                                                                                                                                                                                            |
| MICHAEL     | Action: GLASS DYING; Animation: LAWLESS VISION, TELEMARK HEARTBREAKERS; Children: SANTA PARIS; Classics: MALKOVICH PET, PREJUDICE OLEANDER; Comedy: AIRPLANE SIERRA, DYING MAKER; Documentary: HOMEWARD CIDER, METAL ARMAGEDDON, WIFE TURN; Drama: SOMETHING DUCK, TENENBAUMS COMMAND; Family: HOUSE DYNAMITE; Foreign: MIXED DOORS, STEPMOM DREAM; Games: MARS ROMAN, TYCOON GATHERING; Horror: KARATE MOON, PATTON INTERVIEW, WATERSHIP FRONTIER; Music: HEAVENLY GUN; New: BREAKFAST GOLDFINGER, IDAHO LOVE, RIDGEMONT SUBMARINE, UNBREAKABLE KARATE; Sci-Fi: CHARIOTS CONSPIRACY; Sports: NOVOCAINE FLIGHT; Travel: ENOUGH RAGING, LIAISONS SWEET                                                                                                                                                                                                          |
| JULIA       | Action: MINDS TRUMAN; Animation: DARES PLUTO; Classics: DETECTIVE VISION, JEOPARDY ENCINO; Documentary: MAJESTIC FLOATS; Games: LAMBS CINCINATTI, PANKY SUBMARINE; Music: WON DARES; New: BREAKFAST GOLDFINGER, WYOMING STORM; Sci-Fi: HOLLOW JEOPARDY, OPEN AFRICAN; Sports: CRANES RESERVOIR, DIVORCE SHINING, RIDER CADDYSHACK; Travel: OUTLAW HANKY                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| RENEE       | Action: ANTITRUST TOMATOES, HILLS NEIGHBORS, PATRIOT ROMAN; Children: CABIN FLASH, COMANCHEROS ENEMY, GHOST GROUNDHOG, SCARFACE BANG; Classics: EXTRAORDINARY CONQUERER, MAGNIFICENT CHITTY; Comedy: CAT CONEHEADS, TRAMP OTHERS; Documentary: HUNTER ALTER; Drama: BRIGHT ENCOUNTERS, GREEDY ROOTS, UNFAITHFUL KILL; Family: KING EVOLUTION, NATURAL STOCK; Foreign: HOTEL HAPPINESS; Games: WIND PHANTOM; Horror: DESERT POSEIDON; Music: ALONE TRIP, BALLOON HOMEWARD, BIRDCAGE CASPER; New: ANGELS LIFE, LOVERBOY ATTACKS, MASK PEACH; Sci-Fi: BINGO TALENTED, NONE SPIKING; Sports: JADE BUNCH, PERDITION FARGO, SENSE GREEK; Travel: DESPERATE TRAINSPOTTING, TROUBLE DATE                                                                                                                                                                               |
| ROCK        | Action: CADDYSHACK JEDI; Animation: DESIRE ALIEN, STORM HAPPINESS; Classics: ALICE FANTASIA, SNATCHERS MONTEZUMA; Comedy: LONELY ELEPHANT, SEARCHERS WAIT; Documentary: ACADEMY DINOSAUR, DANCING FEVER, HEAVYWEIGHTS BEAST, UNITED PILOT; Drama: CHITTY LOCK, HANGING DEEP, PATHS CONTROL; Foreign: FICTION CHRISTMAS, MAUDE MOD, SCISSORHANDS SLUMS; Horror: LADY STAGE, MONTEREY LABYRINTH; Music: BALLOON HOMEWARD; New: EVE RESURRECTION; Sci-Fi: FRISCO FORREST; Sports: ALADDIN CALENDAR, BUBBLE GROSSE, FLATLINERS KILLER, LESSON CLEOPATRA, MUMMY CREATURES, SEABISCUIT PUNK; Travel: WORKER TARZAN, WORKING MICROCOSMOS                                                                                                                                                                                                                              |
| CUBA        | Action: RUGRATS SHAKESPEARE; Animation: SONS INTERVIEW; Children: LANGUAGE COWBOY, STRANGER STRANGERS, TOOTSIE PILOT; Classics: DYNAMITE TARZAN, LEAGUE HELLFIGHTERS, MAGNIFICENT CHITTY, TOWERS HURRICANE; Documentary: ROAD ROXANNE, SHIP WONDERLAND; Drama: EDGE KISSING, TENENBAUMS COMMAND; Family: ATLANTIS CAUSE, BLOOD ARGONAUTS, FINDING ANACONDA; Foreign: LOST BIRD; Games: MARS ROMAN; Horror: COMMANDMENTS EXPRESS; Music: GREATEST NORTH; New: JUNGLE CLOSER; Sports: LIBERTY MAGNIFICENT, NORTHWEST POLISH, VICTORY ACADEMY                                                                                                                                                                                                                                                                                                                     |
| AUDREY      | Action: ARK RIDGEMONT, DRIFTER COMMANDMENTS, MAGNOLIA FORRESTER, SKY MIRACLE; Animation: POTTER CONNECTICUT; Children: WARLOCK WEREWOLF; Classics: TADPOLE PARK; Documentary: BED HIGHBALL, QUILLS BULL; Drama: CONFESSIONS MAGUIRE; Family: PILOT HOOSIERS, PITTSBURGH HUNCHBACK, PRESIDENT BANG; Foreign: NEWTON LABYRINTH, PURPLE MOVIE; Games: FEVER EMPIRE; Music: BANGER PINOCCHIO, ELF MURDER, HEAVENLY GUN, HOME PITY, MASKED BUBBLE; New: SLEEPY JAPANESE; Sci-Fi: DISTURBING SCARFACE, GRAFFITI LOVE; Sports: MUMMY CREATURES; Travel: BOONDOCK BALLROOM, ITALIAN AFRICAN                                                                                                                                                                                                                                                                            |
| GREGORY     | Animation: INSECTS STONE, POTLUCK MIXED, STORM HAPPINESS; Children: SISTER FREDDY, WRONG BEHAVIOR; Comedy: HEAVEN FREEDOM, OPERATION OPERATION, SUBMARINE BED; Documentary: DEEP CRUSADE, MADISON TRAP, SPOILERS HELLFIGHTERS; Drama: SEATTLE EXPECATIONS, SPICE SORORITY, WARDROBE PHANTOM, WEST LION; Foreign: ALLEY EVOLUTION, COWBOY DOOM, WHALE BIKINI; Games: MOONSHINE CABIN; Horror: SPIRIT FLINTSTONES; Music: GREATEST NORTH, SONG HEDWIG; New: MAIDEN HOME; Sci-Fi: ARMAGEDDON LOST, EXPRESS LONELY; Sports: EXORCIST STING, HOLES BRANNIGAN, PEAK FOREVER; Travel: BOILED DARES, TROUBLE DATE                                                                                                                                                                                                                                                      |
| JOHN        | Animation: ISHTAR ROCKETEER, LUKE MUMMY; Children: DAUGHTER MADIGAN, JERSEY SASSY; Classics: COLOR PHILADELPHIA, MILLION ACE; Comedy: PINOCCHIO SIMON; Documentary: NEWSIES STORY, QUILLS BULL; Drama: CONQUERER NUTS, NECKLACE OUTBREAK; Family: PITTSBURGH HUNCHBACK; Foreign: ALLEY EVOLUTION, PET HAUNTING; Games: CANDLES GRAPES, NAME DETECTIVE, ROXANNE REBEL; Horror: JAPANESE RUN; Music: HOME PITY, MONSTER SPARTACUS, SONG HEDWIG; New: CLEOPATRA DEVIL, INTERVIEW LIAISONS, PIANIST OUTFIELD; Sci-Fi: BEVERLY OUTLAW, GOLDMINE TYCOON, RAGING AIRPLANE; Sports: GLEAMING JAWBREAKER, SATISFACTION CONFIDENTIAL                                                                                                                                                                                                                                     |
| BURT        | Animation: WAIT CIDER; Classics: GILMORE BOILED, SPIKING ELEMENT; Comedy: CAPER MOTIONS; Documentary: COAST RAINBOW, HEAVYWEIGHTS BEAST, SPOILERS HELLFIGHTERS, WARS PLUTO; Drama: RACER EGG; Family: BLANKET BEVERLY; Foreign: GRAPES FURY, POLLOCK DELIVERANCE; Games: CHICAGO NORTH, GATHERING CALENDAR, SLEUTH ORIENT; Music: INSIDER ARIZONA; New: BUTTERFLY CHOCOLAT, VARSITY TRIP; Sci-Fi: ATTACKS HATE; Sports: EVOLUTION ALTER, ROSES TREASURE, STRAIGHT HOURS; Travel: BUCKET BROTHERHOOD                                                                                                                                                                                                                                                                                                                                                            |
| MERYL       | Action: BERETS AGENT; Children: SHEPHERD MIDSUMMER; Comedy: VELVET TERMINATOR; Drama: BRIGHT ENCOUNTERS; Family: KILLER INNOCENT; Foreign: JET NEIGHBORS, LOSE INCH, ROCKETEER MOTHER; Games: DAWN POND, DIRTY ACE, GATHERING CALENDAR; Horror: ALABAMA DEVIL, HIGH ENCINO; Music: BOOGIE AMELIE, CLUE GRAIL; New: CLYDE THEORY; Sports: ARTIST COLDBLOODED, CHANCE RESURRECTION, RECORDS ZORRO, VICTORY ACADEMY; Travel: BORN SPINAL, SWEET BROTHERHOOD                                                                                                                                                                                                                                                                                                                                                                                                       |
| JAYNE       | Action: CELEBRITY HORN, SIDE ARK, SUSPECTS QUILLS; Animation: OZ LIAISONS; Children: HALL CASSIDY; Classics: WASTELAND DIVINE; Documentary: CAUSE DATE; Drama: HARRY IDAHO, QUEEN LUKE; Family: GLADIATOR WESTWARD, LOUISIANA HARRY; Foreign: ROCKETEER MOTHER, SCHOOL JACKET; Games: CHICAGO NORTH, MARS ROMAN, SEVEN SWARM; Horror: KARATE MOON, PARIS WEEKEND, TEXAS WATCH; Music: MONSTER SPARTACUS, PERSONAL LADYBUGS; New: CHINATOWN GLADIATOR, PIANIST OUTFIELD; Sci-Fi: EYES DRIVING, LICENSE WEEKEND; Sports: GLEAMING JAWBREAKER, SMOOCHY CONTROL                                                                                                                                                                                                                                                                                                    |
| BELA        | Action: FANTASY TROOPERS; Animation: LUKE MUMMY, NASH CHOCOLAT; Children: HOLLYWOOD ANONYMOUS, LEGALLY SECRETARY, SPLENDOR PATTON; Classics: JERK PAYCHECK, SNATCHERS MONTEZUMA; Comedy: ELEMENT FREDDY, FLINTSTONES HAPPINESS, LION UNCUT, STAGE WORLD, TRAMP OTHERS, VERTIGO NORTHWEST; Documentary: CLERKS ANGELS, MIDSUMMER GROUNDHOG, MIGHTY LUCK, MOD SECRETARY; Drama: BEETHOVEN EXORCIST, JACKET FRISCO; Family: SIEGE MADRE; Foreign: TRAP GUYS; Games: MARS ROMAN, PIZZA JUMANJI, TYCOON GATHERING; Horror: CARRIE BUNCH; Music: ENEMY ODDS; New: OKLAHOMA JUMANJI; Sci-Fi: WHISPERER GIANT; Travel: COMFORTS RUSH                                                                                                                                                                                                                                   |
| REESE       | Action: ANTITRUST TOMATOES; Animation: DOORS PRESIDENT, TURN STAR; Children: GORGEOUS BINGO; Classics: DRACULA CRYSTAL, MALKOVICH PET, SNATCHERS MONTEZUMA, VOLUME HOUSE; Comedy: LIFE TWISTED; Documentary: CAUSE DATE, COAST RAINBOW; Drama: HOBBIT ALIEN, SAINTS BRIDE, WITCHES PANIC; Family: BEDAZZLED MARRIED, CHOCOLAT HARRY, REMEMBER DIARY; Foreign: AGENT TRUMAN, LOSE INCH, SCHOOL JACKET; Games: CREATURES SHAKESPEARE, ROUGE SQUAD; Horror: DRUMS DYNAMITE, YENTL IDAHO; Music: RUNNER MADIGAN; New: GODFATHER DIARY, WILD APOLLO; Sci-Fi: GOODFELLAS SALUTE, WEEKEND PERSONAL; Sports: MOSQUITO ARMAGEDDON, NORTHWEST POLISH, POSEIDON FOREVER; Travel: CASABLANCA SUPER                                                                                                                                                                         |
| MARY        | Action: FANTASY TROOPERS, FORREST SONS, HANDICAP BOONDOCK; Animation: INTENTIONS EMPIRE, LUKE MUMMY, THEORY MERMAID, TITANIC BOONDOCK; Children: IDOLS SNATCHERS, MODEL FISH; Classics: JEOPARDY ENCINO, LOVELY JINGLE, STEEL SANTA; Comedy: MALLRATS UNITED, MEMENTO ZOOLANDER, SUBMARINE BED, SWEDEN SHINING; Documentary: ACADEMY DINOSAUR, WAGON JAWS; Drama: CRAFT OUTFIELD, GREEDY ROOTS, SAINTS BRIDE; Family: DUMBO LUST, FEUD FROGMEN, KING EVOLUTION; Foreign: FICTION CHRISTMAS, MADNESS ATTACKS; Games: DWARFS ALTER, HAUNTING PIANIST, MOONWALKER FOOL; Music: YOUTH KICK; New: BUTTERFLY CHOCOLAT, SLEEPY JAPANESE; Sci-Fi: SOLDIERS EVOLUTION, UNFORGIVEN ZOOLANDER; Sports: MERMAID INSECTS, NORTHWEST POLISH, ROSES TREASURE, SIERRA DIVIDE; Travel: CASSIDY WYOMING, GAMES BOWFINGER                                                         |
| JULIA       | Action: BERETS AGENT; Animation: LUKE MUMMY, THEORY MERMAID, WAIT CIDER; Classics: HOPE TOOTSIE; Comedy: CLOSER BANG, MULAN MOON; Family: CHISUM BEHAVIOR; Foreign: OPUS ICE, POLLOCK DELIVERANCE; New: DAY UNFAITHFUL, RIDGEMONT SUBMARINE; Travel: BOILED DARES, SHANGHAI TYCOON, SHAWSHANK BUBBLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| THORA       | Animation: CAROL TEXAS; Children: CHRISTMAS MOONSHINE, WRONG BEHAVIOR; Classics: CANDIDATE PERDITION, GALAXY SWEETHEARTS, LOVER TRUMAN; Documentary: MADISON TRAP, VIRGINIAN PLUTO; Drama: WARDROBE PHANTOM; Family: AFRICAN EGG, BLANKET BEVERLY, HOCUS FRIDA; Music: INSIDER ARIZONA, TELEGRAPH VOYAGE; New: INTERVIEW LIAISONS, LOVERBOY ATTACKS; Sci-Fi: BADMAN DAWN, RANDOM GO, TROJAN TOMORROW; Sports: JADE BUNCH                                                                                                                                                                                                                                                                                                                                                                                                                                       |
+-------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
**/
-- Mostrar el nombre de la película y el de sus categorías.
select f.title, c.name from film as f JOIN film_category as fc ON f.film_id=fc.film_id
JOIN category as c ON c.category_id=fc.category_id;
/**
+-----------------------------+-------------+
| title                       | name        |
+-----------------------------+-------------+
| AMADEUS HOLY                | Action      |
| AMERICAN CIRCUS             | Action      |
| ANTITRUST TOMATOES          | Action      |
| ARK RIDGEMONT               | Action      |
| BAREFOOT MANCHURIAN         | Action      |
| BERETS AGENT                | Action      |
| BRIDE INTRIGUE              | Action      |
| BULL SHAWSHANK              | Action      |
| CADDYSHACK JEDI             | Action      |
| CAMPUS REMEMBER             | Action      |
| CASUALTIES ENCINO           | Action      |
| CELEBRITY HORN              | Action      |
| CLUELESS BUCKET             | Action      |
| CROW GREASE                 | Action      |
| DANCES NONE                 | Action      |
| DARKO DORADO                | Action      |
| DARN FORRESTER              | Action      |
| DEVIL DESIRE                | Action      |
| DRAGON SQUAD                | Action      |
| DREAM PICKUP                | Action      |
| DRIFTER COMMANDMENTS        | Action      |
| EASY GLADIATOR              | Action      |
| ENTRAPMENT SATISFACTION     | Action      |
| EXCITEMENT EVE              | Action      |
| FANTASY TROOPERS            | Action      |
| FIREHOUSE VIETNAM           | Action      |
| FOOL MOCKINGBIRD            | Action      |
| FORREST SONS                | Action      |
| GLASS DYING                 | Action      |
| GOSFORD DONNIE              | Action      |
| GRAIL FRANKENSTEIN          | Action      |
| HANDICAP BOONDOCK           | Action      |
| HILLS NEIGHBORS             | Action      |
| KISSING DOLLS               | Action      |
| LAWRENCE LOVE               | Action      |
| LORD ARIZONA                | Action      |
| LUST LOCK                   | Action      |
| MAGNOLIA FORRESTER          | Action      |
| MIDNIGHT WESTWARD           | Action      |
| MINDS TRUMAN                | Action      |
| MOCKINGBIRD HOLLYWOOD       | Action      |
| MONTEZUMA COMMAND           | Action      |
| PARK CITIZEN                | Action      |
| PATRIOT ROMAN               | Action      |
| PRIMARY GLASS               | Action      |
| QUEST MUSSOLINI             | Action      |
| REAR TRADING                | Action      |
| RINGS HEARTBREAKERS         | Action      |
| RUGRATS SHAKESPEARE         | Action      |
| SHRUNK DIVINE               | Action      |
| SIDE ARK                    | Action      |
| SKY MIRACLE                 | Action      |
| SOUTH WAIT                  | Action      |
| SPEAKEASY DATE              | Action      |
| STAGECOACH ARMAGEDDON       | Action      |
| STORY SIDE                  | Action      |
| SUSPECTS QUILLS             | Action      |
| TRIP NEWTON                 | Action      |
| TRUMAN CRAZY                | Action      |
| UPRISING UPTOWN             | Action      |
| WATERFRONT DELIVERANCE      | Action      |
| WEREWOLF LOLA               | Action      |
| WOMEN DORADO                | Action      |
| WORST BANGER                | Action      |
| ALTER VICTORY               | Animation   |
| ANACONDA CONFESSIONS        | Animation   |
| ARGONAUTS TOWN              | Animation   |
| BIKINI BORROWERS            | Animation   |
| BLACKOUT PRIVATE            | Animation   |
| BORROWERS BEDAZZLED         | Animation   |
| CANYON STOCK                | Animation   |
| CAROL TEXAS                 | Animation   |
| CHAMPION FLATLINERS         | Animation   |
| CLASH FREDDY                | Animation   |
| CLUB GRAFFITI               | Animation   |
| CROSSROADS CASUALTIES       | Animation   |
| DARES PLUTO                 | Animation   |
| DESIRE ALIEN                | Animation   |
| DOGMA FAMILY                | Animation   |
| DONNIE ALLEY                | Animation   |
| DOORS PRESIDENT             | Animation   |
| DOUBLE WRATH                | Animation   |
| DUCK RACER                  | Animation   |
| EARLY HOME                  | Animation   |
| FALCON VOLUME               | Animation   |
| FIGHT JAWBREAKER            | Animation   |
| FLOATS GARDEN               | Animation   |
| FLYING HOOK                 | Animation   |
| FORRESTER COMANCHEROS       | Animation   |
| GANGS PRIDE                 | Animation   |
| GHOSTBUSTERS ELF            | Animation   |
| HARPER DYING                | Animation   |
| HOOK CHARIOTS               | Animation   |
| HORN WORKING                | Animation   |
| INCH JET                    | Animation   |
| INSECTS STONE               | Animation   |
| INTENTIONS EMPIRE           | Animation   |
| ISHTAR ROCKETEER            | Animation   |
| JUGGLER HARDLY              | Animation   |
| LAWLESS VISION              | Animation   |
| LUKE MUMMY                  | Animation   |
| MASSAGE IMAGE               | Animation   |
| MENAGERIE RUSHMORE          | Animation   |
| MIRACLE VIRTUAL             | Animation   |
| MISSION ZOOLANDER           | Animation   |
| NASH CHOCOLAT               | Animation   |
| OSCAR GOLD                  | Animation   |
| OZ LIAISONS                 | Animation   |
| PACKER MADIGAN              | Animation   |
| POND SEATTLE                | Animation   |
| POTLUCK MIXED               | Animation   |
| POTTER CONNECTICUT          | Animation   |
| PRIDE ALAMO                 | Animation   |
| PUNK DIVORCE                | Animation   |
| ROOM ROMAN                  | Animation   |
| SLEEPLESS MONSOON           | Animation   |
| SNOWMAN ROLLERCOASTER       | Animation   |
| SONS INTERVIEW              | Animation   |
| STORM HAPPINESS             | Animation   |
| SUGAR WONKA                 | Animation   |
| SUNRISE LEAGUE              | Animation   |
| TELEMARK HEARTBREAKERS      | Animation   |
| THEORY MERMAID              | Animation   |
| THIEF PELICAN               | Animation   |
| TITANIC BOONDOCK            | Animation   |
| TRACY CIDER                 | Animation   |
| TURN STAR                   | Animation   |
| WAIT CIDER                  | Animation   |
| WATCH TRACY                 | Animation   |
| WONKA SEA                   | Animation   |
| BACKLASH UNDEFEATED         | Children    |
| BEAR GRACELAND              | Children    |
| BENEATH RUSH                | Children    |
| BETRAYED REAR               | Children    |
| CABIN FLASH                 | Children    |
| CASPER DRAGONFLY            | Children    |
| CHRISTMAS MOONSHINE         | Children    |
| CIRCUS YOUTH                | Children    |
| CLOCKWORK PARADISE          | Children    |
| COMANCHEROS ENEMY           | Children    |
| CROOKED FROGMEN             | Children    |
| DAUGHTER MADIGAN            | Children    |
| DOCTOR GRAIL                | Children    |
| EMPIRE MALKOVICH            | Children    |
| FARGO GANDHI                | Children    |
| FOREVER CANDIDATE           | Children    |
| FULL FLATLINERS             | Children    |
| FURY MURDER                 | Children    |
| GHOST GROUNDHOG             | Children    |
| GIANT TROOPERS              | Children    |
| GORGEOUS BINGO              | Children    |
| GRADUATE LORD               | Children    |
| HALL CASSIDY                | Children    |
| HEARTBREAKERS BRIGHT        | Children    |
| HOLLYWOOD ANONYMOUS         | Children    |
| HOLOCAUST HIGHBALL          | Children    |
| IDOLS SNATCHERS             | Children    |
| INVASION CYCLONE            | Children    |
| JERSEY SASSY                | Children    |
| JUMPING WRATH               | Children    |
| LABYRINTH LEAGUE            | Children    |
| LANGUAGE COWBOY             | Children    |
| LEGALLY SECRETARY           | Children    |
| MAGIC MALLRATS              | Children    |
| MAKER GABLES                | Children    |
| MICROCOSMOS PARADISE        | Children    |
| MODEL FISH                  | Children    |
| MURDER ANTITRUST            | Children    |
| NOON PAPI                   | Children    |
| POLISH BROOKLYN             | Children    |
| ROBBERS JOON                | Children    |
| SABRINA MIDNIGHT            | Children    |
| SANTA PARIS                 | Children    |
| SCARFACE BANG               | Children    |
| SHEPHERD MIDSUMMER          | Children    |
| SISTER FREDDY               | Children    |
| SPLENDOR PATTON             | Children    |
| STRANGELOVE DESIRE          | Children    |
| STRANGER STRANGERS          | Children    |
| SUNDANCE INVASION           | Children    |
| SWEETHEARTS SUSPECTS        | Children    |
| TEQUILA PAST                | Children    |
| TIES HUNGER                 | Children    |
| TOOTSIE PILOT               | Children    |
| TWISTED PIRATES             | Children    |
| UPTOWN YOUNG                | Children    |
| WALLS ARTIST                | Children    |
| WARLOCK WEREWOLF            | Children    |
| WRONG BEHAVIOR              | Children    |
| ZOOLANDER FICTION           | Children    |
| ALICE FANTASIA              | Classics    |
| ARIZONA BANG                | Classics    |
| BEAST HUNCHBACK             | Classics    |
| BOUND CHEAPER               | Classics    |
| CANDIDATE PERDITION         | Classics    |
| CENTER DINOSAUR             | Classics    |
| COLOR PHILADELPHIA          | Classics    |
| CONSPIRACY SPIRIT           | Classics    |
| CORE SUIT                   | Classics    |
| CREEPERS KANE               | Classics    |
| CRUELTY UNFORGIVEN          | Classics    |
| DETECTIVE VISION            | Classics    |
| DRACULA CRYSTAL             | Classics    |
| DYNAMITE TARZAN             | Classics    |
| EXTRAORDINARY CONQUERER     | Classics    |
| FROST HEAD                  | Classics    |
| GALAXY SWEETHEARTS          | Classics    |
| GILBERT PELICAN             | Classics    |
| GILMORE BOILED              | Classics    |
| HOLY TADPOLE                | Classics    |
| HOPE TOOTSIE                | Classics    |
| HYDE DOCTOR                 | Classics    |
| IRON MOON                   | Classics    |
| ISLAND EXORCIST             | Classics    |
| JEEPERS WEDDING             | Classics    |
| JEOPARDY ENCINO             | Classics    |
| JERK PAYCHECK               | Classics    |
| JINGLE SAGEBRUSH            | Classics    |
| LEAGUE HELLFIGHTERS         | Classics    |
| LIGHTS DEER                 | Classics    |
| LOATHING LEGALLY            | Classics    |
| LOVELY JINGLE               | Classics    |
| LOVER TRUMAN                | Classics    |
| MAGNIFICENT CHITTY          | Classics    |
| MALKOVICH PET               | Classics    |
| MILLION ACE                 | Classics    |
| MUSKETEERS WAIT             | Classics    |
| OCTOBER SUBMARINE           | Classics    |
| PAJAMA JAWBREAKER           | Classics    |
| PATIENT SISTER              | Classics    |
| PREJUDICE OLEANDER          | Classics    |
| REQUIEM TYCOON              | Classics    |
| RIGHT CRANES                | Classics    |
| ROOTS REMEMBER              | Classics    |
| SLING LUKE                  | Classics    |
| SNATCHERS MONTEZUMA         | Classics    |
| SPIKING ELEMENT             | Classics    |
| STEEL SANTA                 | Classics    |
| SUMMER SCARFACE             | Classics    |
| TADPOLE PARK                | Classics    |
| TIMBERLAND SKY              | Classics    |
| TOMORROW HUSTLER            | Classics    |
| TOWERS HURRICANE            | Classics    |
| VOLUME HOUSE                | Classics    |
| VOYAGE LEGALLY              | Classics    |
| WASTELAND DIVINE            | Classics    |
| WESTWARD SEABISCUIT         | Classics    |
| AIRPLANE SIERRA             | Comedy      |
| ANTHEM LUKE                 | Comedy      |
| BRINGING HYSTERICAL         | Comedy      |
| CAPER MOTIONS               | Comedy      |
| CAT CONEHEADS               | Comedy      |
| CLOSER BANG                 | Comedy      |
| CONNECTION MICROCOSMOS      | Comedy      |
| CONTROL ANTHEM              | Comedy      |
| CRAZY HOME                  | Comedy      |
| DADDY PITTSBURGH            | Comedy      |
| DOOM DANCING                | Comedy      |
| DOWNHILL ENOUGH             | Comedy      |
| DYING MAKER                 | Comedy      |
| ELEMENT FREDDY              | Comedy      |
| FERRIS MOTHER               | Comedy      |
| FIREBALL PHILADELPHIA       | Comedy      |
| FLINTSTONES HAPPINESS       | Comedy      |
| FRANKENSTEIN STRANGER       | Comedy      |
| FREEDOM CLEOPATRA           | Comedy      |
| GOLD RIVER                  | Comedy      |
| GROUNDHOG UNCUT             | Comedy      |
| GUNFIGHT MOON               | Comedy      |
| HATE HANDICAP               | Comedy      |
| HEAVEN FREEDOM              | Comedy      |
| HEDWIG ALTER                | Comedy      |
| HURRICANE AFFAIR            | Comedy      |
| HUSTLER PARTY               | Comedy      |
| JAWS HARRY                  | Comedy      |
| KNOCK WARLOCK               | Comedy      |
| LIFE TWISTED                | Comedy      |
| LION UNCUT                  | Comedy      |
| LONELY ELEPHANT             | Comedy      |
| MALLRATS UNITED             | Comedy      |
| MEMENTO ZOOLANDER           | Comedy      |
| MULAN MOON                  | Comedy      |
| MYSTIC TRUMAN               | Comedy      |
| OPERATION OPERATION         | Comedy      |
| PARADISE SABRINA            | Comedy      |
| PARTY KNOCK                 | Comedy      |
| PERFECT GROOVE              | Comedy      |
| PINOCCHIO SIMON             | Comedy      |
| PURE RUNNER                 | Comedy      |
| RUSHMORE MERMAID            | Comedy      |
| SADDLE ANTITRUST            | Comedy      |
| SATURN NAME                 | Comedy      |
| SEARCHERS WAIT              | Comedy      |
| SNATCH SLIPPER              | Comedy      |
| STAGE WORLD                 | Comedy      |
| STRICTLY SCARFACE           | Comedy      |
| SUBMARINE BED               | Comedy      |
| SWEDEN SHINING              | Comedy      |
| TRAINSPOTTING STRANGERS     | Comedy      |
| TRAMP OTHERS                | Comedy      |
| VALLEY PACKER               | Comedy      |
| VELVET TERMINATOR           | Comedy      |
| VERTIGO NORTHWEST           | Comedy      |
| WISDOM WORKER               | Comedy      |
| ZORRO ARK                   | Comedy      |
| ACADEMY DINOSAUR            | Documentary |
| ADAPTATION HOLES            | Documentary |
| ARMY FLINTSTONES            | Documentary |
| BEACH HEARTBREAKERS         | Documentary |
| BED HIGHBALL                | Documentary |
| BILL OTHERS                 | Documentary |
| BONNIE HOLOCAUST            | Documentary |
| BROTHERHOOD BLANKET         | Documentary |
| CAUSE DATE                  | Documentary |
| CHICKEN HELLFIGHTERS        | Documentary |
| CIDER DESIRE                | Documentary |
| CLERKS ANGELS               | Documentary |
| COAST RAINBOW               | Documentary |
| CUPBOARD SINNERS            | Documentary |
| DANCING FEVER               | Documentary |
| DEEP CRUSADE                | Documentary |
| DELIVERANCE MULHOLLAND      | Documentary |
| DOZEN LION                  | Documentary |
| DUFFEL APOCALYPSE           | Documentary |
| EGG IGBY                    | Documentary |
| EXPENDABLE STALLION         | Documentary |
| FRENCH HOLIDAY              | Documentary |
| HALLOWEEN NUTS              | Documentary |
| HARDLY ROBBERS              | Documentary |
| HAWK CHILL                  | Documentary |
| HEAVYWEIGHTS BEAST          | Documentary |
| HOMEWARD CIDER              | Documentary |
| HUNTER ALTER                | Documentary |
| INDEPENDENCE HOTEL          | Documentary |
| INTOLERABLE INTENTIONS      | Documentary |
| KILL BROTHERHOOD            | Documentary |
| MADISON TRAP                | Documentary |
| MAJESTIC FLOATS             | Documentary |
| METAL ARMAGEDDON            | Documentary |
| MIDSUMMER GROUNDHOG         | Documentary |
| MIGHTY LUCK                 | Documentary |
| MOD SECRETARY               | Documentary |
| MODERN DORADO               | Documentary |
| NATIONAL STORY              | Documentary |
| NEWSIES STORY               | Documentary |
| NORTH TEQUILA               | Documentary |
| NOTORIOUS REUNION           | Documentary |
| PACIFIC AMISTAD             | Documentary |
| PELICAN COMFORTS            | Documentary |
| POCUS PULP                  | Documentary |
| PRINCESS GIANT              | Documentary |
| QUILLS BULL                 | Documentary |
| RAIDERS ANTITRUST           | Documentary |
| RAINBOW SHOCK               | Documentary |
| ROAD ROXANNE                | Documentary |
| SAGEBRUSH CLUELESS          | Documentary |
| SECRET GROUNDHOG            | Documentary |
| SHIP WONDERLAND             | Documentary |
| SHOW LORD                   | Documentary |
| SMOKING BARBARELLA          | Documentary |
| SPOILERS HELLFIGHTERS       | Documentary |
| STREAK RIDGEMONT            | Documentary |
| THIN SAGEBRUSH              | Documentary |
| UNITED PILOT                | Documentary |
| UNTOUCHABLES SUNRISE        | Documentary |
| VILLAIN DESPERATE           | Documentary |
| VIRGINIAN PLUTO             | Documentary |
| WAGON JAWS                  | Documentary |
| WARS PLUTO                  | Documentary |
| WEDDING APOLLO              | Documentary |
| WIFE TURN                   | Documentary |
| WRATH MILE                  | Documentary |
| YOUNG LANGUAGE              | Documentary |
| APOLLO TEEN                 | Drama       |
| BEAUTY GREASE               | Drama       |
| BEETHOVEN EXORCIST          | Drama       |
| BLADE POLISH                | Drama       |
| BRIGHT ENCOUNTERS           | Drama       |
| BUNCH MINDS                 | Drama       |
| CHILL LUCK                  | Drama       |
| CHITTY LOCK                 | Drama       |
| CONEHEADS SMOOCHY           | Drama       |
| CONFESSIONS MAGUIRE         | Drama       |
| CONQUERER NUTS              | Drama       |
| CRAFT OUTFIELD              | Drama       |
| DALMATIONS SWEDEN           | Drama       |
| DARKNESS WAR                | Drama       |
| DECEIVER BETRAYED           | Drama       |
| DESTINATION JERK            | Drama       |
| DIARY PANIC                 | Drama       |
| EDGE KISSING                | Drama       |
| ENCOUNTERS CURTAIN          | Drama       |
| GOLDFINGER SENSIBILITY      | Drama       |
| GONE TROUBLE                | Drama       |
| GREEDY ROOTS                | Drama       |
| HANGING DEEP                | Drama       |
| HAROLD FRENCH               | Drama       |
| HARRY IDAHO                 | Drama       |
| HOBBIT ALIEN                | Drama       |
| HUNCHBACK IMPOSSIBLE        | Drama       |
| JACKET FRISCO               | Drama       |
| KWAI HOMEWARD               | Drama       |
| LEBOWSKI SOLDIERS           | Drama       |
| LIES TREATMENT              | Drama       |
| LUCK OPUS                   | Drama       |
| MOB DUFFEL                  | Drama       |
| NECKLACE OUTBREAK           | Drama       |
| NOTTING SPEAKEASY           | Drama       |
| ORIENT CLOSER               | Drama       |
| PATHS CONTROL               | Drama       |
| PAYCHECK WAIT               | Drama       |
| PITY BOUND                  | Drama       |
| QUEEN LUKE                  | Drama       |
| RACER EGG                   | Drama       |
| REUNION WITCHES             | Drama       |
| ROCKY WAR                   | Drama       |
| SAINTS BRIDE                | Drama       |
| SAVANNAH TOWN               | Drama       |
| SCORPION APOLLO             | Drama       |
| SEA VIRGIN                  | Drama       |
| SEATTLE EXPECATIONS         | Drama       |
| SHOOTIST SUPERFLY           | Drama       |
| SLACKER LIAISONS            | Drama       |
| SOMETHING DUCK              | Drama       |
| SPICE SORORITY              | Drama       |
| TENENBAUMS COMMAND          | Drama       |
| TORQUE BOUND                | Drama       |
| TRANSLATION SUMMER          | Drama       |
| TREATMENT JEKYLL            | Drama       |
| UNFAITHFUL KILL             | Drama       |
| VIETNAM SMOOCHY             | Drama       |
| VIRGIN DAISY                | Drama       |
| WARDROBE PHANTOM            | Drama       |
| WEST LION                   | Drama       |
| WITCHES PANIC               | Drama       |
| AFRICAN EGG                 | Family      |
| APACHE DIVINE               | Family      |
| ATLANTIS CAUSE              | Family      |
| BAKED CLEOPATRA             | Family      |
| BANG KWAI                   | Family      |
| BEDAZZLED MARRIED           | Family      |
| BILKO ANONYMOUS             | Family      |
| BLANKET BEVERLY             | Family      |
| BLOOD ARGONAUTS             | Family      |
| BLUES INSTINCT              | Family      |
| BRAVEHEART HUMAN            | Family      |
| CHASING FIGHT               | Family      |
| CHISUM BEHAVIOR             | Family      |
| CHOCOLAT HARRY              | Family      |
| CONFUSED CANDLES            | Family      |
| CONVERSATION DOWNHILL       | Family      |
| DATE SPEED                  | Family      |
| DINOSAUR SECRETARY          | Family      |
| DUMBO LUST                  | Family      |
| EARRING INSTINCT            | Family      |
| EFFECT GLADIATOR            | Family      |
| FEUD FROGMEN                | Family      |
| FINDING ANACONDA            | Family      |
| GABLES METROPOLIS           | Family      |
| GANDHI KWAI                 | Family      |
| GLADIATOR WESTWARD          | Family      |
| GREASE YOUTH                | Family      |
| HALF OUTFIELD               | Family      |
| HOCUS FRIDA                 | Family      |
| HOMICIDE PEACH              | Family      |
| HOUSE DYNAMITE              | Family      |
| HUNTING MUSKETEERS          | Family      |
| INDIAN LOVE                 | Family      |
| JASON TRAP                  | Family      |
| JEDI BENEATH                | Family      |
| KILLER INNOCENT             | Family      |
| KING EVOLUTION              | Family      |
| LOLITA WORLD                | Family      |
| LOUISIANA HARRY             | Family      |
| MAGUIRE APACHE              | Family      |
| MANCHURIAN CURTAIN          | Family      |
| MOVIE SHAKESPEARE           | Family      |
| MUSIC BOONDOCK              | Family      |
| NATURAL STOCK               | Family      |
| NETWORK PEAK                | Family      |
| ODDS BOOGIE                 | Family      |
| OPPOSITE NECKLACE           | Family      |
| PILOT HOOSIERS              | Family      |
| PITTSBURGH HUNCHBACK        | Family      |
| PRESIDENT BANG              | Family      |
| PRIX UNDEFEATED             | Family      |
| RAGE GAMES                  | Family      |
| RANGE MOONWALKER            | Family      |
| REMEMBER DIARY              | Family      |
| RESURRECTION SILVERADO      | Family      |
| ROBBERY BRIGHT              | Family      |
| RUSH GOODFELLAS             | Family      |
| SECRETS PARADISE            | Family      |
| SENSIBILITY REAR            | Family      |
| SIEGE MADRE                 | Family      |
| SLUMS DUCK                  | Family      |
| SOUP WISDOM                 | Family      |
| SPARTACUS CHEAPER           | Family      |
| SPINAL ROCKY                | Family      |
| SPLASH GUMP                 | Family      |
| SUNSET RACER                | Family      |
| SUPER WYOMING               | Family      |
| VIRTUAL SPOILERS            | Family      |
| WILLOW TRACY                | Family      |
| AGENT TRUMAN                | Foreign     |
| ALAMO VIDEOTAPE             | Foreign     |
| ALIEN CENTER                | Foreign     |
| ALLEY EVOLUTION             | Foreign     |
| BABY HALL                   | Foreign     |
| BALLROOM MOCKINGBIRD        | Foreign     |
| BROOKLYN DESERT             | Foreign     |
| BUGSY SONG                  | Foreign     |
| CALENDAR GUNFIGHT           | Foreign     |
| CATCH AMISTAD               | Foreign     |
| CHOCOLATE DUCK              | Foreign     |
| COMMAND DARLING             | Foreign     |
| COWBOY DOOM                 | Foreign     |
| CROSSING DIVORCE            | Foreign     |
| CRYSTAL BREAKING            | Foreign     |
| CYCLONE FAMILY              | Foreign     |
| DANGEROUS UPTOWN            | Foreign     |
| DOUBTFIRE LABYRINTH         | Foreign     |
| EVERYONE CRAFT              | Foreign     |
| FICTION CHRISTMAS           | Foreign     |
| FRIDA SLIPPER               | Foreign     |
| GENTLEMEN STAGE             | Foreign     |
| GRAPES FURY                 | Foreign     |
| GREEK EVERYONE              | Foreign     |
| HAPPINESS UNITED            | Foreign     |
| HELLFIGHTERS SIERRA         | Foreign     |
| HIGHBALL POTTER             | Foreign     |
| HOLIDAY GAMES               | Foreign     |
| HOOSIERS BIRDCAGE           | Foreign     |
| HOTEL HAPPINESS             | Foreign     |
| HUNGER ROOF                 | Foreign     |
| ILLUSION AMELIE             | Foreign     |
| IMPOSSIBLE PREJUDICE        | Foreign     |
| INFORMER DOUBLE             | Foreign     |
| INNOCENT USUAL              | Foreign     |
| INTRIGUE WORST              | Foreign     |
| JET NEIGHBORS               | Foreign     |
| KANE EXORCIST               | Foreign     |
| KISS GLORY                  | Foreign     |
| LOSE INCH                   | Foreign     |
| LOST BIRD                   | Foreign     |
| MADNESS ATTACKS             | Foreign     |
| MATRIX SNOWMAN              | Foreign     |
| MAUDE MOD                   | Foreign     |
| MEET CHOCOLATE              | Foreign     |
| MIXED DOORS                 | Foreign     |
| MOON BUNCH                  | Foreign     |
| MULHOLLAND BEAST            | Foreign     |
| MUPPET MILE                 | Foreign     |
| NEWTON LABYRINTH            | Foreign     |
| OPUS ICE                    | Foreign     |
| ORANGE GRAPES               | Foreign     |
| PAST SUICIDES               | Foreign     |
| PEARL DESTINY               | Foreign     |
| PET HAUNTING                | Foreign     |
| POLLOCK DELIVERANCE         | Foreign     |
| PURPLE MOVIE                | Foreign     |
| RESERVOIR ADAPTATION        | Foreign     |
| ROCKETEER MOTHER            | Foreign     |
| SCHOOL JACKET               | Foreign     |
| SCISSORHANDS SLUMS          | Foreign     |
| SHOCK CABIN                 | Foreign     |
| SHREK LICENSE               | Foreign     |
| SORORITY QUEEN              | Foreign     |
| STEPMOM DREAM               | Foreign     |
| TOWN ARK                    | Foreign     |
| TRAP GUYS                   | Foreign     |
| USUAL UNTOUCHABLES          | Foreign     |
| VISION TORQUE               | Foreign     |
| WAR NOTTING                 | Foreign     |
| WASH HEAVENLY               | Foreign     |
| WHALE BIKINI                | Foreign     |
| WONDERFUL DROP              | Foreign     |
| AUTUMN CROW                 | Games       |
| BULWORTH COMMANDMENTS       | Games       |
| CANDLES GRAPES              | Games       |
| CHICAGO NORTH               | Games       |
| CREATURES SHAKESPEARE       | Games       |
| CURTAIN VIDEOTAPE           | Games       |
| DARLING BREAKING            | Games       |
| DAWN POND                   | Games       |
| DAZED PUNK                  | Games       |
| DETAILS PACKER              | Games       |
| DIRTY ACE                   | Games       |
| DIVINE RESURRECTION         | Games       |
| DWARFS ALTER                | Games       |
| ENCINO ELF                  | Games       |
| FANTASIA PARK               | Games       |
| FEATHERS METAL              | Games       |
| FEVER EMPIRE                | Games       |
| FIRE WOLVES                 | Games       |
| FORWARD TEMPLE              | Games       |
| GATHERING CALENDAR          | Games       |
| GLORY TRACY                 | Games       |
| GRINCH MASSAGE              | Games       |
| GRIT CLOCKWORK              | Games       |
| GUN BONNIE                  | Games       |
| HAUNTING PIANIST            | Games       |
| HEAD STRANGER               | Games       |
| HUMAN GRAFFITI              | Games       |
| ICE CROSSING                | Games       |
| JERICHO MULAN               | Games       |
| LADYBUGS ARMAGEDDON         | Games       |
| LAMBS CINCINATTI            | Games       |
| MADRE GABLES                | Games       |
| MALTESE HOPE                | Games       |
| MARS ROMAN                  | Games       |
| MASSACRE USUAL              | Games       |
| MONSOON CAUSE               | Games       |
| MOONSHINE CABIN             | Games       |
| MOONWALKER FOOL             | Games       |
| NAME DETECTIVE              | Games       |
| NIGHTMARE CHILL             | Games       |
| OUTBREAK DIVINE             | Games       |
| PANKY SUBMARINE             | Games       |
| PIZZA JUMANJI               | Games       |
| PRIVATE DROP                | Games       |
| PSYCHO SHRUNK               | Games       |
| ROOF CHAMPION               | Games       |
| ROUGE SQUAD                 | Games       |
| ROXANNE REBEL               | Games       |
| SASSY PACKER                | Games       |
| SEVEN SWARM                 | Games       |
| SLEUTH ORIENT               | Games       |
| SPY MILE                    | Games       |
| STAMPEDE DISTURBING         | Games       |
| STATE WASTELAND             | Games       |
| SUIT WALLS                  | Games       |
| TYCOON GATHERING            | Games       |
| VANILLA DAY                 | Games       |
| VIDEOTAPE ARSENIC           | Games       |
| VOLCANO TEXAS               | Games       |
| WANDA CHAMBER               | Games       |
| WIND PHANTOM                | Games       |
| ACE GOLDFINGER              | Horror      |
| AFFAIR PREJUDICE            | Horror      |
| AIRPORT POLLOCK             | Horror      |
| ALABAMA DEVIL               | Horror      |
| ALI FOREVER                 | Horror      |
| ANALYZE HOOSIERS            | Horror      |
| ANYTHING SAVANNAH           | Horror      |
| ARABIA DOGMA                | Horror      |
| ARACHNOPHOBIA ROLLERCOASTER | Horror      |
| BEHAVIOR RUNAWAY            | Horror      |
| BOWFINGER GABLES            | Horror      |
| CARRIE BUNCH                | Horror      |
| COMMANDMENTS EXPRESS        | Horror      |
| DESERT POSEIDON             | Horror      |
| DRUMS DYNAMITE              | Horror      |
| EGYPT TENENBAUMS            | Horror      |
| ELEPHANT TROJAN             | Horror      |
| FAMILY SWEET                | Horror      |
| FIDELITY DEVIL              | Horror      |
| FREDDY STORM                | Horror      |
| GASLIGHT CRUSADE            | Horror      |
| HIGH ENCINO                 | Horror      |
| JAPANESE RUN                | Horror      |
| KARATE MOON                 | Horror      |
| KENTUCKIAN GIANT            | Horror      |
| LADY STAGE                  | Horror      |
| LOLA AGENT                  | Horror      |
| LOVE SUICIDES               | Horror      |
| MONTEREY LABYRINTH          | Horror      |
| MOTIONS DETAILS             | Horror      |
| PANIC CLUB                  | Horror      |
| PARIS WEEKEND               | Horror      |
| PATTON INTERVIEW            | Horror      |
| PULP BEVERLY                | Horror      |
| REAP UNFAITHFUL             | Horror      |
| REEF SALUTE                 | Horror      |
| ROCK INSTINCT               | Horror      |
| ROLLERCOASTER BRINGING      | Horror      |
| RULES HUMAN                 | Horror      |
| SIMON NORTH                 | Horror      |
| SINNERS ATLANTIS            | Horror      |
| SLEEPING SUSPECTS           | Horror      |
| SPIRIT FLINTSTONES          | Horror      |
| STRANGERS GRAFFITI          | Horror      |
| STREETCAR INTENTIONS        | Horror      |
| SWARM GOLD                  | Horror      |
| TARZAN VIDEOTAPE            | Horror      |
| TEMPLE ATTRACTION           | Horror      |
| TEXAS WATCH                 | Horror      |
| TRAIN BUNCH                 | Horror      |
| TREASURE COMMAND            | Horror      |
| UNDEFEATED DALMATIONS       | Horror      |
| WATERSHIP FRONTIER          | Horror      |
| WORLD LEATHERNECKS          | Horror      |
| YENTL IDAHO                 | Horror      |
| ZHIVAGO CORE                | Horror      |
| ALASKA PHANTOM              | Music       |
| ALONE TRIP                  | Music       |
| AMELIE HELLFIGHTERS         | Music       |
| BALLOON HOMEWARD            | Music       |
| BANGER PINOCCHIO            | Music       |
| BIRCH ANTITRUST             | Music       |
| BIRDCAGE CASPER             | Music       |
| BOOGIE AMELIE               | Music       |
| CHAMBER ITALIAN             | Music       |
| CLONES PINOCCHIO            | Music       |
| CLUE GRAIL                  | Music       |
| CONFIDENTIAL INTERVIEW      | Music       |
| DEER VIRGINIAN              | Music       |
| DORADO NOTTING              | Music       |
| DRIVING POLISH              | Music       |
| ELF MURDER                  | Music       |
| ENEMY ODDS                  | Music       |
| FREAKY POCUS                | Music       |
| GO PURPLE                   | Music       |
| GREATEST NORTH              | Music       |
| GROSSE WONDERFUL            | Music       |
| HANOVER GALAXY              | Music       |
| HEAVENLY GUN                | Music       |
| HOME PITY                   | Music       |
| IMPACT ALADDIN              | Music       |
| INSIDER ARIZONA             | Music       |
| JAWBREAKER BROOKLYN         | Music       |
| LEGEND JEDI                 | Music       |
| LUCKY FLYING                | Music       |
| MASKED BUBBLE               | Music       |
| MINORITY KISS               | Music       |
| MONSTER SPARTACUS           | Music       |
| OLEANDER CLUE               | Music       |
| OUTFIELD MASSACRE           | Music       |
| PERSONAL LADYBUGS           | Music       |
| REBEL AIRPORT               | Music       |
| REDS POCUS                  | Music       |
| ROMAN PUNK                  | Music       |
| RUNNER MADIGAN              | Music       |
| SCALAWAG DUCK               | Music       |
| SILENCE KANE                | Music       |
| SONG HEDWIG                 | Music       |
| TAXI KICK                   | Music       |
| TELEGRAPH VOYAGE            | Music       |
| TERMINATOR CLUB             | Music       |
| UNCUT SUICIDES              | Music       |
| VANISHING ROCKY             | Music       |
| WIZARD COLDBLOODED          | Music       |
| WON DARES                   | Music       |
| WORDS HUNTER                | Music       |
| YOUTH KICK                  | Music       |
| AMISTAD MIDSUMMER           | New         |
| ANGELS LIFE                 | New         |
| APOCALYPSE FLAMINGOS        | New         |
| ATTRACTION NEWTON           | New         |
| BIRDS PERDITION             | New         |
| BOULEVARD MOB               | New         |
| BRANNIGAN SUNRISE           | New         |
| BREAKFAST GOLDFINGER        | New         |
| BREAKING HOME               | New         |
| BUTCH PANTHER               | New         |
| BUTTERFLY CHOCOLAT          | New         |
| CHAPLIN LICENSE             | New         |
| CHINATOWN GLADIATOR         | New         |
| CLEOPATRA DEVIL             | New         |
| CLYDE THEORY                | New         |
| DAY UNFAITHFUL              | New         |
| DESTINY SATURDAY            | New         |
| DRAGONFLY STRANGERS         | New         |
| EAGLES PANKY                | New         |
| EARTH VISION                | New         |
| ENDING CROWDS               | New         |
| EVE RESURRECTION            | New         |
| FATAL HAUNTED               | New         |
| FLAMINGOS CONNECTICUT       | New         |
| FLASH WARS                  | New         |
| FRONTIER CABIN              | New         |
| GODFATHER DIARY             | New         |
| HOURS RAGE                  | New         |
| IDAHO LOVE                  | New         |
| INTERVIEW LIAISONS          | New         |
| JEKYLL FROGMEN              | New         |
| JUMANJI BLADE               | New         |
| JUNGLE CLOSER               | New         |
| LOVERBOY ATTACKS            | New         |
| MAIDEN HOME                 | New         |
| MANNEQUIN WORST             | New         |
| MASK PEACH                  | New         |
| MINE TITANS                 | New         |
| MONEY HAROLD                | New         |
| NUTS TIES                   | New         |
| OKLAHOMA JUMANJI            | New         |
| PHANTOM GLORY               | New         |
| PIANIST OUTFIELD            | New         |
| PLATOON INSTINCT            | New         |
| PLUTO OLEANDER              | New         |
| REDEMPTION COMFORTS         | New         |
| RIDGEMONT SUBMARINE         | New         |
| RUN PACIFIC                 | New         |
| RUNAWAY TENENBAUMS          | New         |
| SALUTE APOLLO               | New         |
| SAMURAI LION                | New         |
| SLEEPY JAPANESE             | New         |
| STING PERSONAL              | New         |
| STOCK GLASS                 | New         |
| TROOPERS METAL              | New         |
| UNBREAKABLE KARATE          | New         |
| VAMPIRE WHALE               | New         |
| VANISHED GARDEN             | New         |
| VARSITY TRIP                | New         |
| VOICE PEACH                 | New         |
| WAKE JAWS                   | New         |
| WILD APOLLO                 | New         |
| WYOMING STORM               | New         |
| ANNIE IDENTITY              | Sci-Fi      |
| ARMAGEDDON LOST             | Sci-Fi      |
| ATTACKS HATE                | Sci-Fi      |
| BADMAN DAWN                 | Sci-Fi      |
| BARBARELLA STREETCAR        | Sci-Fi      |
| BEVERLY OUTLAW              | Sci-Fi      |
| BINGO TALENTED              | Sci-Fi      |
| BLINDNESS GUN               | Sci-Fi      |
| CAMELOT VACATION            | Sci-Fi      |
| CHAINSAW UPTOWN             | Sci-Fi      |
| CHARADE DUFFEL              | Sci-Fi      |
| CHARIOTS CONSPIRACY         | Sci-Fi      |
| CHEAPER CLYDE               | Sci-Fi      |
| CINCINATTI WHISPERER        | Sci-Fi      |
| CITIZEN SHREK               | Sci-Fi      |
| COLDBLOODED DARLING         | Sci-Fi      |
| CONNECTICUT TRAMP           | Sci-Fi      |
| CROWDS TELEMARK             | Sci-Fi      |
| DAISY MENAGERIE             | Sci-Fi      |
| DISTURBING SCARFACE         | Sci-Fi      |
| DIVIDE MONSTER              | Sci-Fi      |
| DOLLS RAGE                  | Sci-Fi      |
| ENGLISH BULWORTH            | Sci-Fi      |
| EXPRESS LONELY              | Sci-Fi      |
| EYES DRIVING                | Sci-Fi      |
| FIDDLER LOST                | Sci-Fi      |
| FISH OPUS                   | Sci-Fi      |
| FRISCO FORREST              | Sci-Fi      |
| GARDEN ISLAND               | Sci-Fi      |
| GOLDMINE TYCOON             | Sci-Fi      |
| GOODFELLAS SALUTE           | Sci-Fi      |
| GRAFFITI LOVE               | Sci-Fi      |
| GUYS FALCON                 | Sci-Fi      |
| HAMLET WISDOM               | Sci-Fi      |
| HANKY OCTOBER               | Sci-Fi      |
| HOLLOW JEOPARDY             | Sci-Fi      |
| IDENTITY LOVER              | Sci-Fi      |
| LICENSE WEEKEND             | Sci-Fi      |
| MARRIED GO                  | Sci-Fi      |
| METROPOLIS COMA             | Sci-Fi      |
| MOURNING PURPLE             | Sci-Fi      |
| NEMO CAMPUS                 | Sci-Fi      |
| NONE SPIKING                | Sci-Fi      |
| OPEN AFRICAN                | Sci-Fi      |
| PANTHER REDS                | Sci-Fi      |
| RAGING AIRPLANE             | Sci-Fi      |
| RANDOM GO                   | Sci-Fi      |
| REIGN GENTLEMEN             | Sci-Fi      |
| SILVERADO GOLDFINGER        | Sci-Fi      |
| SOLDIERS EVOLUTION          | Sci-Fi      |
| SPIRITED CASUALTIES         | Sci-Fi      |
| STALLION SUNDANCE           | Sci-Fi      |
| SUICIDES SILENCE            | Sci-Fi      |
| SUN CONFESSIONS             | Sci-Fi      |
| TITANS JERK                 | Sci-Fi      |
| TROJAN TOMORROW             | Sci-Fi      |
| UNFORGIVEN ZOOLANDER        | Sci-Fi      |
| VACATION BOONDOCK           | Sci-Fi      |
| WEEKEND PERSONAL            | Sci-Fi      |
| WHISPERER GIANT             | Sci-Fi      |
| WONDERLAND CHRISTMAS        | Sci-Fi      |
| ALADDIN CALENDAR            | Sports      |
| ANONYMOUS HUMAN             | Sports      |
| ARTIST COLDBLOODED          | Sports      |
| BUBBLE GROSSE               | Sports      |
| CALIFORNIA BIRDS            | Sports      |
| CARIBBEAN LIBERTY           | Sports      |
| CHANCE RESURRECTION         | Sports      |
| CONGENIALITY QUEST          | Sports      |
| CRANES RESERVOIR            | Sports      |
| CRUSADE HONEY               | Sports      |
| DIVORCE SHINING             | Sports      |
| DRIVER ANNIE                | Sports      |
| DROP WATERFRONT             | Sports      |
| DUDE BLINDNESS              | Sports      |
| DURHAM PANKY                | Sports      |
| ELIZABETH SHANE             | Sports      |
| EVOLUTION ALTER             | Sports      |
| EXORCIST STING              | Sports      |
| FLATLINERS KILLER           | Sports      |
| FLIGHT LIES                 | Sports      |
| GLEAMING JAWBREAKER         | Sports      |
| GRACELAND DYNAMITE          | Sports      |
| GROOVE FICTION              | Sports      |
| GUNFIGHTER MUSSOLINI        | Sports      |
| HOLES BRANNIGAN             | Sports      |
| HONEY TIES                  | Sports      |
| HYSTERICAL GRAIL            | Sports      |
| IMAGE PRINCESS              | Sports      |
| INSTINCT AIRPORT            | Sports      |
| JADE BUNCH                  | Sports      |
| JOON NORTHWEST              | Sports      |
| KRAMER CHOCOLATE            | Sports      |
| LESSON CLEOPATRA            | Sports      |
| LIBERTY MAGNIFICENT         | Sports      |
| LOSER HUSTLER               | Sports      |
| MERMAID INSECTS             | Sports      |
| MILE MULAN                  | Sports      |
| MOSQUITO ARMAGEDDON         | Sports      |
| MOTHER OLEANDER             | Sports      |
| MUMMY CREATURES             | Sports      |
| MUSSOLINI SPOILERS          | Sports      |
| NEIGHBORS CHARADE           | Sports      |
| NORTHWEST POLISH            | Sports      |
| NOVOCAINE FLIGHT            | Sports      |
| PEACH INNOCENT              | Sports      |
| PEAK FOREVER                | Sports      |
| PERDITION FARGO             | Sports      |
| PHILADELPHIA WIFE           | Sports      |
| PICKUP DRIVING              | Sports      |
| PIRATES ROXANNE             | Sports      |
| POSEIDON FOREVER            | Sports      |
| RECORDS ZORRO               | Sports      |
| RIDER CADDYSHACK            | Sports      |
| RIVER OUTLAW                | Sports      |
| ROSES TREASURE              | Sports      |
| SATISFACTION CONFIDENTIAL   | Sports      |
| SATURDAY LAMBS              | Sports      |
| SEABISCUIT PUNK             | Sports      |
| SECRETARY ROUGE             | Sports      |
| SENSE GREEK                 | Sports      |
| SHAKESPEARE SADDLE          | Sports      |
| SIERRA DIVIDE               | Sports      |
| SLIPPER FIDELITY            | Sports      |
| SMOOCHY CONTROL             | Sports      |
| SQUAD FISH                  | Sports      |
| STAR OPERATION              | Sports      |
| STEERS ARMAGEDDON           | Sports      |
| STRAIGHT HOURS              | Sports      |
| TALENTED HOMICIDE           | Sports      |
| TIGHTS DAWN                 | Sports      |
| TOURIST PELICAN             | Sports      |
| TRADING PINOCCHIO           | Sports      |
| TUXEDO MILE                 | Sports      |
| VICTORY ACADEMY             | Sports      |
| ARSENIC INDEPENDENCE        | Travel      |
| BASIC EASY                  | Travel      |
| BIRD INDEPENDENCE           | Travel      |
| BOILED DARES                | Travel      |
| BOONDOCK BALLROOM           | Travel      |
| BORN SPINAL                 | Travel      |
| BUCKET BROTHERHOOD          | Travel      |
| CASABLANCA SUPER            | Travel      |
| CASSIDY WYOMING             | Travel      |
| COMA HEAD                   | Travel      |
| COMFORTS RUSH               | Travel      |
| CONTACT ANONYMOUS           | Travel      |
| DESPERATE TRAINSPOTTING     | Travel      |
| DISCIPLE MOTHER             | Travel      |
| DRUMLINE CYCLONE            | Travel      |
| ENOUGH RAGING               | Travel      |
| ESCAPE METROPOLIS           | Travel      |
| EXPECATIONS NATURAL         | Travel      |
| FACTORY DRAGON              | Travel      |
| FELLOWSHIP AUTUMN           | Travel      |
| FROGMEN BREAKING            | Travel      |
| FUGITIVE MAGUIRE            | Travel      |
| GAMES BOWFINGER             | Travel      |
| GUMP DATE                   | Travel      |
| HAUNTED ANTITRUST           | Travel      |
| HORROR REIGN                | Travel      |
| IGBY MAKER                  | Travel      |
| ITALIAN AFRICAN             | Travel      |
| KICK SAVANNAH               | Travel      |
| LEATHERNECKS DWARFS         | Travel      |
| LIAISONS SWEET              | Travel      |
| LOCK REAR                   | Travel      |
| MADIGAN DORADO              | Travel      |
| MOULIN WAKE                 | Travel      |
| MUSCLE BRIGHT               | Travel      |
| ORDER BETRAYED              | Travel      |
| OTHERS SOUP                 | Travel      |
| OUTLAW HANKY                | Travel      |
| PAPI NECKLACE               | Travel      |
| SHANE DARKNESS              | Travel      |
| SHANGHAI TYCOON             | Travel      |
| SHAWSHANK BUBBLE            | Travel      |
| SHINING ROSES               | Travel      |
| SMILE EARRING               | Travel      |
| SPEED SUIT                  | Travel      |
| STONE FIRE                  | Travel      |
| SUPERFLY TRIP               | Travel      |
| SWEET BROTHERHOOD           | Travel      |
| TEEN APOLLO                 | Travel      |
| TOMATOES HELLFIGHTERS       | Travel      |
| TRAFFIC HOBBIT              | Travel      |
| TROUBLE DATE                | Travel      |
| VALENTINE VANISHING         | Travel      |
| WINDOW SIDE                 | Travel      |
| WOLVES DESIRE               | Travel      |
| WORKER TARZAN               | Travel      |
| WORKING MICROCOSMOS         | Travel      |
+-----------------------------+-------------+
**/
-- Mostrar el country, la ciudad y dirección de cada miembro del staff.
select name, country, city, address from staff_list;
/**
+--------------+-----------+------------+----------------------+
| name         | country   | city       | address              |
+--------------+-----------+------------+----------------------+
| Mike Hillyer | Canada    | Lethbridge | 23 Workhaven Lane    |
| Jon Stephens | Australia | Woodridge  | 1411 Lillydale Drive |
+--------------+-----------+------------+----------------------+
**/
-- Mostrar el country, la ciudad y dirección de cada customer.
select name, country, city, address from customer_list;
/**
+-----------------------+---------------------------------------+----------------------------+----------------------------------------+
| name                  | country                               | city                       | address                                |
+-----------------------+---------------------------------------+----------------------------+----------------------------------------+
| MARY SMITH            | Japan                                 | Sasebo                     | 1913 Hanoi Way                         |
| PATRICIA JOHNSON      | United States                         | San Bernardino             | 1121 Loja Avenue                       |
| LINDA WILLIAMS        | Greece                                | Athenai                    | 692 Joliet Street                      |
| BARBARA JONES         | Myanmar                               | Myingyan                   | 1566 Inegöl Manor                      |
| ELIZABETH BROWN       | Taiwan                                | Nantou                     | 53 Idfu Parkway                        |
| JENNIFER DAVIS        | United States                         | Laredo                     | 1795 Santiago de Compostela Way        |
| MARIA MILLER          | Yugoslavia                            | Kragujevac                 | 900 Santiago de Compostela Parkway     |
| SUSAN WILSON          | New Zealand                           | Hamilton                   | 478 Joliet Way                         |
| MARGARET MOORE        | Oman                                  | Masqat                     | 613 Korolev Drive                      |
| DOROTHY TAYLOR        | Iran                                  | Esfahan                    | 1531 Salé Drive                        |
| LISA ANDERSON         | Japan                                 | Sagamihara                 | 1542 Tarlac Parkway                    |
| NANCY THOMAS          | India                                 | Yamuna Nagar               | 808 Bhopal Manor                       |
| KAREN JACKSON         | Turkey                                | Osmaniye                   | 270 Amroha Parkway                     |
| BETTY WHITE           | United States                         | Citrus Heights             | 770 Bydgoszcz Avenue                   |
| HELEN HARRIS          | India                                 | Bhopal                     | 419 Iligan Lane                        |
| SANDRA MARTIN         | United Kingdom                        | Southend-on-Sea            | 360 Toulouse Parkway                   |
| DONNA THOMPSON        | Russian Federation                    | Elista                     | 270 Toulon Boulevard                   |
| CAROL GARCIA          | Nigeria                               | Kaduna                     | 320 Brest Avenue                       |
| RUTH MARTINEZ         | South Africa                          | Kimberley                  | 1417 Lancaster Avenue                  |
| SHARON ROBINSON       | Pakistan                              | Mardan                     | 1688 Okara Way                         |
| MICHELLE CLARK        | Bangladesh                            | Tangail                    | 262 A Coruña (La Coruña) Parkway       |
| LAURA RODRIGUEZ       | Morocco                               | Salé                       | 28 Charlotte Amalie Street             |
| SARAH LEWIS           | Latvia                                | Liepaja                    | 1780 Hino Boulevard                    |
| KIMBERLY LEE          | Argentina                             | Córdoba                    | 96 Tafuna Way                          |
| DEBORAH WALKER        | Pakistan                              | Shikarpur                  | 934 San Felipe de Puerto Plata Street  |
| JESSICA HALL          | Holy See (Vatican City State)         | Città del Vaticano         | 18 Duisburg Boulevard                  |
| SHIRLEY ALLEN         | Philippines                           | Davao                      | 217 Botshabelo Place                   |
| CYNTHIA YOUNG         | India                                 | Munger (Monghyr)           | 1425 Shikarpur Manor                   |
| ANGELA HERNANDEZ      | Japan                                 | Shimonoseki                | 786 Aurora Avenue                      |
| MELISSA KING          | Taiwan                                | Lungtan                    | 1668 Anápolis Street                   |
| BRENDA WRIGHT         | India                                 | Kamarhati                  | 33 Gorontalo Way                       |
| AMY LOPEZ             | India                                 | Jhansi                     | 176 Mandaluyong Place                  |
| ANNA HILL             | Italy                                 | Alessandria                | 127 Purnea (Purnia) Manor              |
| REBECCA SCOTT         | Japan                                 | Kurashiki                  | 61 Tama Street                         |
| VIRGINIA GREEN        | France                                | Toulouse                   | 391 Callao Drive                       |
| KATHLEEN ADAMS        | Iran                                  | Arak                       | 334 Munger (Monghyr) Lane              |
| PAMELA BAKER          | China                                 | Nanyang                    | 1440 Fukuyama Loop                     |
| MARTHA GONZALEZ       | Moldova                               | Chisinau                   | 269 Cam Ranh Parkway                   |
| DEBRA NELSON          | Brazil                                | Vila Velha                 | 306 Antofagasta Place                  |
| AMANDA CARTER         | Morocco                               | Nador                      | 671 Graz Street                        |
| STEPHANIE MITCHELL    | Armenia                               | Yerevan                    | 42 Brindisi Place                      |
| CAROLYN PEREZ         | Thailand                              | Pak Kret                   | 1632 Bislig Avenue                     |
| CHRISTINE ROBERTS     | French Polynesia                      | Faaa                       | 1447 Imus Way                          |
| MARIE TURNER          | Russian Federation                    | Lipetsk                    | 1998 Halifax Drive                     |
| JANET PHILLIPS        | Chile                                 | Antofagasta                | 1718 Valencia Street                   |
| CATHERINE CAMPBELL    | Russian Federation                    | Moscow                     | 46 Pjatigorsk Lane                     |
| FRANCES PARKER        | Brazil                                | Juazeiro do Norte          | 686 Garland Manor                      |
| ANN EVANS             | Russian Federation                    | Niznekamsk                 | 909 Garland Manor                      |
| JOYCE EDWARDS         | Saudi Arabia                          | Jedda                      | 725 Isesaki Place                      |
| DIANE COLLINS         | Sudan                                 | Omdurman                   | 115 Hidalgo Parkway                    |
| ALICE STEWART         | United States                         | Fontana                    | 1135 Izumisano Parkway                 |
| JULIE SANCHEZ         | Spain                                 | A Coruña (La Coruña)       | 939 Probolinggo Loop                   |
| HEATHER MORRIS        | Japan                                 | Nagareyama                 | 17 Kabul Boulevard                     |
| TERESA ROGERS         | Japan                                 | Iwakuni                    | 1964 Allappuzha (Alleppey) Street      |
| DORIS REED            | Russian Federation                    | Balašiha                   | 1697 Kowloon and New Kowloon Loop      |
| GLORIA COOK           | French Polynesia                      | Papeete                    | 1668 Saint Louis Place                 |
| EVELYN MORGAN         | Liechtenstein                         | Vaduz                      | 943 Tokat Street                       |
| JEAN BELL             | Malaysia                              | Kuching                    | 1114 Liepaja Street                    |
| CHERYL MURPHY         | India                                 | Mysore                     | 1213 Ranchi Parkway                    |
| MILDRED BAILEY        | India                                 | Jaipur                     | 81 Hodeida Way                         |
| KATHERINE RIVERA      | Switzerland                           | Basel                      | 915 Ponce Place                        |
| JOAN COOPER           | United States                         | Saint Louis                | 1717 Guadalajara Lane                  |
| ASHLEY RICHARDSON     | United States                         | Lincoln                    | 1214 Hanoi Way                         |
| JUDITH COX            | China                                 | Daxian                     | 1966 Amroha Avenue                     |
| ROSE HOWARD           | French Guiana                         | Cayenne                    | 698 Otsu Street                        |
| JANICE WARD           | Sweden                                | Malmö                      | 1150 Kimchon Manor                     |
| KELLY TORRES          | China                                 | Xi´angtan                  | 1586 Guarujá Place                     |
| NICOLE PETERSON       | India                                 | Shivapuri                  | 57 Arlington Manor                     |
| JUDY GRAY             | Algeria                               | Béchar                     | 1031 Daugavpils Parkway                |
| CHRISTINA RAMIREZ     | Saudi Arabia                          | al-Hawiya                  | 1124 Buenaventura Drive                |
| KATHY JAMES           | Philippines                           | Baybay                     | 492 Cam Ranh Street                    |
| THERESA WATSON        | Philippines                           | Taguig                     | 89 Allappuzha (Alleppey) Manor         |
| BEVERLY BROOKS        | Taiwan                                | Chiayi                     | 1947 Poços de Caldas Boulevard         |
| DENISE KELLY          | Brazil                                | Rio Claro                  | 1206 Dos Quebradas Place               |
| TAMMY SANDERS         | Taiwan                                | Changhwa                   | 1551 Rampur Lane                       |
| IRENE PRICE           | Kazakstan                             | Pavlodar                   | 602 Paarl Street                       |
| JANE BENNETT          | Brazil                                | Araçatuba                  | 1692 Ede Loop                          |
| LORI WOOD             | India                                 | Rae Bareli                 | 936 Salzburg Lane                      |
| RACHEL BARNES         | Japan                                 | Kamakura                   | 586 Tete Way                           |
| MARILYN ROSS          | Nigeria                               | Ife                        | 1888 Kabul Drive                       |
| ANDREA HENDERSON      | Madagascar                            | Mahajanga                  | 320 Baiyin Parkway                     |
| KATHRYN COLEMAN       | Ukraine                               | Simferopol                 | 927 Bahía Blanca Parkway               |
| LOUISE JENKINS        | South Africa                          | Springs                    | 929 Tallahassee Loop                   |
| SARA PERRY            | Mexico                                | Atlixco                    | 125 Città del Vaticano Boulevard       |
| ANNE POWELL           | United Kingdom                        | Bradford                   | 1557 Kütahya Boulevard                 |
| JACQUELINE LONG       | Thailand                              | Songkhla                   | 870 Ashqelon Loop                      |
| WANDA PATTERSON       | Colombia                              | Sincelejo                  | 1740 Portoviejo Avenue                 |
| BONNIE HUGHES         | South Korea                           | Cheju                      | 1942 Ciparay Parkway                   |
| JULIA FLORES          | Argentina                             | La Plata                   | 1926 El Alto Avenue                    |
| RUBY WASHINGTON       | China                                 | Meixian                    | 1952 Chatsworth Drive                  |
| LOIS BUTLER           | Brunei                                | Bandar Seri Begawan        | 1370 Le Mans Avenue                    |
| TINA SIMMONS          | Brazil                                | Goiânia                    | 984 Effon-Alaiye Avenue                |
| PHYLLIS FOSTER        | China                                 | Zalantun                   | 832 Nakhon Sawan Manor                 |
| NORMA GONZALES        | Philippines                           | Bislig                     | 152 Kitwe Parkway                      |
| PAULA BRYANT          | India                                 | Pathankot                  | 1697 Tanauan Lane                      |
| DIANA ALEXANDER       | United States                         | Augusta-Richmond County    | 1308 Arecibo Way                       |
| ANNIE RUSSELL         | Mozambique                            | Tete                       | 1599 Plock Drive                       |
| LILLIAN GRIFFIN       | United Arab Emirates                  | al-Ayn                     | 669 Firozabad Loop                     |
| EMILY DIAZ            | South Korea                           | Kimchon                    | 588 Vila Velha Manor                   |
| ROBIN HAYES           | Russian Federation                    | Jelets                     | 1913 Kamakura Place                    |
| PEGGY MYERS           | Saudi Arabia                          | Abha                       | 733 Mandaluyong Place                  |
| CRYSTAL FORD          | Israel                                | Ashdod                     | 659 Vaduz Drive                        |
| GLADYS HAMILTON       | Nigeria                               | Ilorin                     | 1177 Jelets Way                        |
| RITA GRAHAM           | France                                | Toulon                     | 1386 Yangor Avenue                     |
| DAWN SULLIVAN         | Tuvalu                                | Funafuti                   | 454 Nakhon Sawan Boulevard             |
| CONNIE WALLACE        | Russian Federation                    | Ivanovo                    | 1867 San Juan Bautista Tuxtepec Avenue |
| FLORENCE WOODS        | Argentina                             | Merlo                      | 1532 Dzerzinsk Way                     |
| TRACY COLE            | Mexico                                | Huixquilucan               | 1002 Ahmadnagar Manor                  |
| EDNA WEST             | South Africa                          | Klerksdorp                 | 682 Junan Way                          |
| TIFFANY JORDAN        | China                                 | Enshi                      | 804 Elista Drive                       |
| CARMEN OWENS          | Venezuela                             | Caracas                    | 1378 Alvorada Avenue                   |
| ROSA REYNOLDS         | United States                         | Lancaster                  | 793 Cam Ranh Avenue                    |
| CINDY FISHER          | Venezuela                             | Cumaná                     | 1079 Tel Aviv-Jaffa Boulevard          |
| GRACE ELLIS           | Germany                               | Duisburg                   | 442 Rae Bareli Place                   |
| WENDY HARRISON        | Mexico                                | Nezahualcóyotl             | 1107 Nakhon Sawan Avenue               |
| VICTORIA GIBSON       | Indonesia                             | Pemalang                   | 544 Malmö Parkway                      |
| EDITH MCDONALD        | India                                 | Gandhinagar                | 1967 Sincelejo Place                   |
| KIM CRUZ              | United States                         | Grand Prairie              | 333 Goiânia Way                        |
| SHERRY MARSHALL       | Egypt                                 | Shubra al-Khayma           | 1987 Coacalco de Berriozábal Loop      |
| SYLVIA ORTIZ          | Colombia                              | Dos Quebradas              | 241 Mosul Lane                         |
| JOSEPHINE GOMEZ       | India                                 | Etawah                     | 211 Chiayi Drive                       |
| THELMA MURRAY         | Peru                                  | Lima                       | 1175 Tanauan Way                       |
| SHANNON FREEMAN       | India                                 | Varanasi (Benares)         | 117 Boa Vista Way                      |
| SHEILA WELLS          | Turkey                                | Kütahya                    | 848 Tafuna Manor                       |
| ETHEL WEBB            | South Africa                          | Boksburg                   | 569 Baicheng Lane                      |
| ELLEN SIMPSON         | Brazil                                | Poá                        | 1666 Qomsheh Drive                     |
| ELAINE STEVENS        | Russian Federation                    | Smolensk                   | 801 Hagonoy Drive                      |
| MARJORIE TUCKER       | Poland                                | Jastrzebie-Zdrój           | 1050 Garden Grove Avenue               |
| CARRIE PORTER         | China                                 | Liaocheng                  | 1854 Tieli Street                      |
| CHARLOTTE HUNTER      | Brazil                                | Águas Lindas de Goiás      | 758 Junan Lane                         |
| MONICA HICKS          | Ukraine                               | Mukatševe                  | 1752 São Leopoldo Parkway              |
| ESTHER CRAWFORD       | South Africa                          | Botshabelo                 | 898 Belém Manor                        |
| PAULINE HENRY         | Mexico                                | Torreón                    | 261 Saint Louis Way                    |
| EMMA BOYD             | Egypt                                 | Qalyub                     | 765 Southampton Drive                  |
| JUANITA MASON         | India                                 | Pune                       | 943 Johannesburg Avenue                |
| ANITA MORALES         | India                                 | Hubli-Dharwad              | 788 Atšinsk Street                     |
| RHONDA KENNEDY        | Netherlands                           | Apeldoorn                  | 1749 Daxian Place                      |
| HAZEL WARREN          | China                                 | Hohhot                     | 1587 Sullana Lane                      |
| AMBER DIXON           | Taiwan                                | Touliu                     | 1029 Dzerzinsk Manor                   |
| EVA RAMOS             | United States                         | Clarksville                | 1666 Beni-Mellal Place                 |
| DEBBIE REYES          | Japan                                 | Fukuyama                   | 928 Jaffna Loop                        |
| APRIL BURNS           | United Kingdom                        | Dundee                     | 483 Ljubertsy Parkway                  |
| LESLIE GORDON         | Turkey                                | Kilis                      | 374 Bat Yam Boulevard                  |
| CLARA SHAW            | Belarus                               | Molodetšno                 | 1027 Songkhla Manor                    |
| LUCILLE HOLMES        | South Africa                          | Soshanguve                 | 999 Sanaa Loop                         |
| JAMIE RICE            | United States                         | Sterling Heights           | 879 Newcastle Way                      |
| JOANNE ROBERTSON      | Japan                                 | Urawa                      | 1337 Lincoln Parkway                   |
| ELEANOR HUNT          | Réunion                               | Saint-Denis                | 1952 Pune Lane                         |
| VALERIE BLACK         | United States                         | Brockton                   | 782 Mosul Street                       |
| DANIELLE DANIELS      | Mexico                                | Hidalgo                    | 781 Shimonoseki Drive                  |
| MEGAN PALMER          | China                                 | Laiwu                      | 1560 Jelets Boulevard                  |
| ALICIA MILLS          | India                                 | Nagaon                     | 1963 Moscow Place                      |
| SUZANNE NICHOLS       | Indonesia                             | Jakarta                    | 456 Escobar Way                        |
| MICHELE GRANT         | China                                 | Yuncheng                   | 798 Cianjur Avenue                     |
| GAIL KNIGHT           | Switzerland                           | Bern                       | 185 Novi Sad Place                     |
| BERTHA FERGUSON       | Nigeria                               | Ondo                       | 1367 Yantai Manor                      |
| DARLENE ROSE          | North Korea                           | Pyongyang                  | 1386 Nakhon Sawan Boulevard            |
| VERONICA STONE        | United States                         | Greensboro                 | 369 Papeete Way                        |
| JILL HAWKINS          | Austria                               | Linz                       | 1440 Compton Place                     |
| ERIN DUNN             | Russian Federation                    | Ljubertsy                  | 1623 Bahía Blanca Manor                |
| GERALDINE PERKINS     | Israel                                | Tel Aviv-Jaffa             | 97 Shimoga Avenue                      |
| LAUREN HUDSON         | France                                | Le Mans                    | 1740 Le Mans Loop                      |
| CATHY SPENCER         | Japan                                 | Kakamigahara               | 1287 Xi´angfan Boulevard               |
| JOANN GARDNER         | Turkey                                | Tarsus                     | 842 Salzburg Lane                      |
| LORRAINE STEPHENS     | China                                 | Hami                       | 154 Tallahassee Loop                   |
| LYNN PAYNE            | Malawi                                | Lilongwe                   | 710 San Felipe del Progreso Avenue     |
| SALLY PIERCE          | India                                 | Chandrapur                 | 1540 Wroclaw Drive                     |
| REGINA BERRY          | China                                 | Jinchang                   | 475 Atšinsk Way                        |
| ERICA MATTHEWS        | China                                 | Pingxiang                  | 1294 Firozabad Drive                   |
| BEATRICE ARNOLD       | India                                 | Udaipur                    | 1877 Ezhou Lane                        |
| DOLORES WAGNER        | Malaysia                              | Ipoh                       | 316 Uruapan Street                     |
| BERNICE WILLIS        | Turkey                                | Batman                     | 29 Pyongyang Loop                      |
| AUDREY RAY            | Austria                               | Graz                       | 1010 Klerksdorp Way                    |
| YVONNE WATKINS        | Venezuela                             | Ocumare del Tuy            | 1848 Salala Boulevard                  |
| ANNETTE OLSON         | India                                 | Allappuzha (Alleppey)      | 431 Xi´angtan Avenue                   |
| JUNE CARROLL          | Algeria                               | Skikda                     | 757 Rustenburg Avenue                  |
| SAMANTHA DUNCAN       | Mexico                                | Matamoros                  | 146 Johannesburg Way                   |
| MARION SNYDER         | Brazil                                | Santa Bárbara d´Oeste      | 1891 Rizhao Boulevard                  |
| DANA HART             | Russian Federation                    | Kirovo-Tšepetsk            | 1089 Iwatsuki Avenue                   |
| STACY CUNNINGHAM      | Colombia                              | Pereira                    | 1410 Benin City Parkway                |
| ANA BRADLEY           | United States                         | Memphis                    | 682 Garden Grove Place                 |
| RENEE LANE            | United States                         | Compton                    | 533 al-Ayn Boulevard                   |
| IDA ANDREWS           | Brazil                                | Luziânia                   | 1839 Székesfehérvár Parkway            |
| VIVIAN RUIZ           | Netherlands                           | ´s-Hertogenbosch           | 741 Ambattur Manor                     |
| ROBERTA HARPER        | Iran                                  | Shahr-e Kord               | 927 Barcelona Street                   |
| HOLLY FOX             | India                                 | Haldia                     | 435 0 Way                              |
| BRITTANY RILEY        | Ukraine                               | Sumy                       | 140 Chiayi Parkway                     |
| MELANIE ARMSTRONG     | Philippines                           | Bayugan                    | 1166 Changhwa Street                   |
| LORETTA CARPENTER     | Canada                                | Oshawa                     | 891 Novi Sad Manor                     |
| YOLANDA WEAVER        | Tanzania                              | Tabora                     | 605 Rio Claro Parkway                  |
| JEANETTE GREENE       | Russian Federation                    | Novotšerkassk              | 1077 San Felipe de Puerto Plata Place  |
| LAURIE LAWRENCE       | India                                 | Firozabad                  | 9 San Miguel de Tucumán Manor          |
| KATIE ELLIOTT         | Kenya                                 | Kisumu                     | 447 Surakarta Loop                     |
| KRISTEN CHAVEZ        | Japan                                 | Hino                       | 345 Oshawa Boulevard                   |
| VANESSA SIMS          | Germany                               | Siegen                     | 1792 Valle de la Pascua Place          |
| ALMA AUSTIN           | Germany                               | Mannheim                   | 1074 Binzhou Manor                     |
| SUE PETERS            | China                                 | Changzhou                  | 817 Bradford Loop                      |
| ELSIE KELLEY          | Nigeria                               | Ikerre                     | 955 Bamenda Way                        |
| BETH FRANKLIN         | Vietnam                               | Haiphong                   | 1149 A Coruña (La Coruña) Boulevard    |
| JEANNE LAWSON         | Turkmenistan                          | Ashgabat                   | 387 Mwene-Ditu Drive                   |
| VICKI FIELDS          | Germany                               | Witten                     | 68 Molodetšno Manor                    |
| CARLA GUTIERREZ       | India                                 | Bhusawal                   | 642 Nador Drive                        |
| TARA RYAN             | Indonesia                             | Gorontalo                  | 1688 Nador Lane                        |
| ROSEMARY SCHMIDT      | Turkey                                | Usak                       | 1215 Pyongyang Parkway                 |
| EILEEN CARR           | Paraguay                              | Ciudad del Este            | 1679 Antofagasta Street                |
| TERRI VASQUEZ         | Brazil                                | Blumenau                   | 1304 ´s-Hertogenbosch Way              |
| GERTRUDE CASTILLO     | Greenland                             | Nuuk                       | 850 Salala Loop                        |
| LUCY WHEELER          | India                                 | Balurghat                  | 624 Oshawa Boulevard                   |
| TONYA CHAPMAN         | India                                 | Bhilwara                   | 43 Dadu Avenue                         |
| ELLA OLIVER           | Yemen                                 | Aden                       | 751 Lima Loop                          |
| STACEY MONTGOMERY     | China                                 | Fuyu                       | 1333 Haldia Street                     |
| WILMA RICHARDS        | United States                         | Bellevue                   | 660 Jedda Boulevard                    |
| GINA WILLIAMSON       | Yemen                                 | Taizz                      | 1001 Miyakonojo Lane                   |
| KRISTIN JOHNSTON      | United States                         | Sunnyvale                  | 226 Brest Manor                        |
| JESSIE BANKS          | Bulgaria                              | Stara Zagora               | 1229 Valencia Parkway                  |
| NATALIE MEYER         | Brazil                                | Aparecida de Goiânia       | 1201 Qomsheh Manor                     |
| AGNES BISHOP          | India                                 | Sambhal                    | 866 Shivapuri Manor                    |
| VERA MCCOY            | Afghanistan                           | Kabul                      | 1168 Najafabad Parkway                 |
| WILLIE HOWELL         | Argentina                             | Vicente López              | 1244 Allappuzha (Alleppey) Place       |
| CHARLENE ALVAREZ      | Tanzania                              | Zanzibar                   | 1842 Luziânia Boulevard                |
| BESSIE MORRISON       | Italy                                 | Syrakusa                   | 1926 Gingoog Street                    |
| DELORES HANSEN        | Russian Federation                    | Jaroslavl                  | 810 Palghat (Palakkad) Boulevard       |
| MELINDA FERNANDEZ     | Pakistan                              | Mandi Bahauddin            | 1820 Maringá Parkway                   |
| PEARL GARZA           | India                                 | Jodhpur                    | 60 Poços de Caldas Street              |
| ARLENE HARVEY         | India                                 | Ambattur                   | 1014 Loja Manor                        |
| MAUREEN LITTLE        | Paraguay                              | Asunción                   | 201 Effon-Alaiye Way                   |
| COLLEEN BURTON        | Germany                               | Saarbrücken                | 430 Alessandria Loop                   |
| ALLISON STANLEY       | Cambodia                              | Phnom Penh                 | 754 Valencia Place                     |
| TAMARA NGUYEN         | Brazil                                | Anápolis                   | 356 Olomouc Manor                      |
| JOY GEORGE            | Romania                               | Botosani                   | 1256 Bislig Boulevard                  |
| GEORGIA JACOBS        | India                                 | Uttarpara-Kotrung          | 954 Kimchon Place                      |
| CONSTANCE REID        | Nigeria                               | Zaria                      | 885 Yingkou Manor                      |
| LILLIE KIM            | Egypt                                 | Idfu                       | 1736 Cavite Place                      |
| CLAUDIA FULLER        | Kuwait                                | Jalib al-Shuyukh           | 346 Skikda Parkway                     |
| JACKIE LYNCH          | Colombia                              | Buenaventura               | 98 Stara Zagora Boulevard              |
| MARCIA DEAN           | Philippines                           | Tanza                      | 1479 Rustenburg Boulevard              |
| TANYA GILBERT         | South Korea                           | Naju                       | 647 A Coruña (La Coruña) Street        |
| NELLIE GARRETT        | India                                 | Shimoga                    | 1964 Gijón Manor                       |
| MINNIE ROMERO         | Indonesia                             | Ciomas                     | 47 Syktyvkar Lane                      |
| MARLENE WELCH         | Japan                                 | Iwaki                      | 1148 Saarbrücken Parkway               |
| HEIDI LARSON          | China                                 | Xi´angfan                  | 1103 Bilbays Parkway                   |
| GLENDA FRAZIER        | China                                 | Qinhuangdao                | 1246 Boksburg Parkway                  |
| LYDIA BURKE           | Argentina                             | San Miguel de Tucumán      | 1483 Pathankot Street                  |
| VIOLA HANSON          | Philippines                           | Lapu-Lapu                  | 582 Papeete Loop                       |
| COURTNEY DAY          | South Korea                           | Uijongbu                   | 300 Junan Street                       |
| MARIAN MENDOZA        | Brazil                                | Maringá                    | 829 Grand Prairie Way                  |
| STELLA MORENO         | Mexico                                | Coacalco de Berriozábal    | 1473 Changhwa Parkway                  |
| CAROLINE BOWMAN       | United States                         | Tallahassee                | 1309 Weifang Street                    |
| DORA MEDINA           | China                                 | Tianjin                    | 1760 Oshawa Manor                      |
| JO FOWLER             | Nigeria                               | Oyo                        | 786 Stara Zagora Way                   |
| VICKIE BREWER         | Germany                               | Halle/Saale                | 1966 Tonghae Street                    |
| MATTIE HOFFMAN        | United Kingdom                        | London                     | 1497 Yuzhou Drive                      |
| TERRY CARLSON         | Japan                                 | Miyakonojo                 | 752 Ondo Loop                          |
| MAXINE SILVA          | Brazil                                | Poços de Caldas            | 1338 Zalantun Lane                     |
| IRMA PEARSON          | Philippines                           | Hagonoy                    | 127 Iwakuni Boulevard                  |
| MABEL HOLLAND         | Myanmar                               | Monywa                     | 51 Laredo Avenue                       |
| MARSHA DOUGLAS        | Mozambique                            | Beira                      | 771 Yaoundé Manor                      |
| MYRTLE FLEMING        | Dominican Republic                    | Santiago de los Caballeros | 532 Toulon Street                      |
| LENA JENSEN           | India                                 | Halisahar                  | 1027 Banjul Place                      |
| CHRISTY VARGAS        | China                                 | Datong                     | 1158 Mandi Bahauddin Parkway           |
| DEANNA BYRD           | Philippines                           | Tuguegarao                 | 862 Xintai Lane                        |
| PATSY DAVIDSON        | Ecuador                               | Portoviejo                 | 816 Cayenne Parkway                    |
| HILDA HOPKINS         | Philippines                           | Mandaluyong                | 1831 Nam Dinh Loop                     |
| GWENDOLYN MAY         | Japan                                 | Higashiosaka               | 446 Kirovo-Tšepetsk Lane               |
| JENNIE TERRY          | Czech Republic                        | Olomouc                    | 682 Halisahar Place                    |
| NORA HERRERA          | Austria                               | Salzburg                   | 1587 Loja Manor                        |
| MARGIE WADE           | China                                 | Lengshuijiang              | 1762 Paarl Parkway                     |
| NINA SOTO             | India                                 | Palghat (Palakkad)         | 1519 Ilorin Place                      |
| CASSANDRA WALTERS     | United States                         | Salinas                    | 920 Kumbakonam Loop                    |
| LEAH CURTIS           | Poland                                | Kalisz                     | 906 Goiânia Way                        |
| PENNY NEAL            | India                                 | Kumbakonam                 | 1675 Xi´angfan Manor                   |
| KAY CALDWELL          | China                                 | Yantai                     | 85 San Felipe de Puerto Plata Drive    |
| PRISCILLA LOWE        | Mexico                                | Salamanca                  | 144 South Hill Loop                    |
| NAOMI JENNINGS        | India                                 | Karnal                     | 1884 Shikarpur Avenue                  |
| CAROLE BARNETT        | United States                         | Peoria                     | 1980 Kamjanets-Podilskyi Street        |
| BRANDY GRAVES         | United States                         | Warren                     | 1944 Bamenda Way                       |
| OLGA JIMENEZ          | Nigeria                               | Ogbomosho                  | 556 Baybay Manor                       |
| BILLIE HORTON         | Turkey                                | Inegöl                     | 457 Tongliao Loop                      |
| DIANNE SHELTON        | Iran                                  | Tabriz                     | 600 Bradford Street                    |
| TRACEY BARRETT        | Nigeria                               | Owo                        | 1006 Santa Bárbara d´Oeste Manor       |
| LEONA OBRIEN          | China                                 | Fuzhou                     | 1308 Sumy Loop                         |
| JENNY CASTRO          | Puerto Rico                           | Ponce                      | 1405 Chisinau Place                    |
| FELICIA SUTTON        | China                                 | Korla                      | 226 Halifax Street                     |
| SONIA GREGORY         | Nigeria                               | Benin City                 | 1279 Udine Parkway                     |
| MIRIAM MCKINNEY       | Japan                                 | Otsu                       | 1336 Benin City Drive                  |
| VELMA LUCAS           | Nigeria                               | Effon-Alaiye               | 1155 Liaocheng Place                   |
| BECKY MILES           | India                                 | Tambaram                   | 1993 Tabuk Lane                        |
| BOBBIE CRAIG          | Mexico                                | Valle de Santiago          | 86 Higashiosaka Lane                   |
| VIOLET RODRIQUEZ      | Hong Kong                             | Kowloon and New Kowloon    | 1912 Allende Manor                     |
| KRISTINA CHAMBERS     | Venezuela                             | Valle de la Pascua         | 544 Tarsus Boulevard                   |
| TONI HOLT             | United States                         | Roanoke                    | 1936 Cumaná Avenue                     |
| MISTY LAMBERT         | United Arab Emirates                  | Sharja                     | 1192 Tongliao Street                   |
| MAE FLETCHER          | Spain                                 | Donostia-San Sebastián     | 44 Najafabad Way                       |
| SHELLY WATTS          | United States                         | Dayton                     | 32 Pudukkottai Lane                    |
| DAISY BATES           | Russian Federation                    | Kolpino                    | 661 Chisinau Lane                      |
| RAMONA HALE           | India                                 | Patiala                    | 951 Stara Zagora Manor                 |
| SHERRI RHODES         | India                                 | Ahmadnagar                 | 922 Vila Velha Loop                    |
| ERIKA PENA            | Finland                               | Oulu                       | 898 Jining Lane                        |
| JAMES GANNON          | Japan                                 | Hiroshima                  | 1635 Kuwana Boulevard                  |
| JOHN FARNSWORTH       | India                                 | Parbhani                   | 41 El Alto Parkway                     |
| ROBERT BAUGHMAN       | Russian Federation                    | Kaliningrad                | 1883 Maikop Lane                       |
| MICHAEL SILVERMAN     | China                                 | Tiefa                      | 1908 Gaziantep Place                   |
| WILLIAM SATTERFIELD   | Yemen                                 | Sanaa                      | 687 Alessandria Parkway                |
| DAVID ROYAL           | Peru                                  | Callao                     | 827 Yuncheng Drive                     |
| RICHARD MCCRARY       | United States                         | Arlington                  | 913 Coacalco de Berriozábal Loop       |
| CHARLES KOWALSKI      | Malaysia                              | Sungai Petani              | 715 São Bernardo do Campo Lane         |
| JOSEPH JOY            | Brazil                                | Angra dos Reis             | 1354 Siegen Street                     |
| THOMAS GRIGSBY        | United States                         | Kansas City                | 1191 Sungai Petani Boulevard           |
| CHRISTOPHER GRECO     | Italy                                 | Brescia                    | 1224 Huejutla de Reyes Boulevard       |
| DANIEL CABRAL         | Brazil                                | Ibirité                    | 543 Bergamo Avenue                     |
| PAUL TROUT            | Russian Federation                    | Kursk                      | 746 Joliet Lane                        |
| MARK RINEHART         | Saudi Arabia                          | Tabuk                      | 780 Kimberley Way                      |
| DONALD MAHON          | China                                 | Ezhou                      | 1774 Yaoundé Place                     |
| GEORGE LINTON         | Brazil                                | Sorocaba                   | 1957 Yantai Lane                       |
| KENNETH GOODEN        | Israel                                | Bat Yam                    | 1542 Lubumbashi Boulevard              |
| STEVEN CURLEY         | India                                 | Miraj                      | 651 Pathankot Loop                     |
| EDWARD BAUGH          | Faroe Islands                         | Tórshavn                   | 1359 Zhoushan Parkway                  |
| BRIAN WYMAN           | Poland                                | Bydgoszcz                  | 1769 Iwaki Lane                        |
| RONALD WEINER         | Mexico                                | San Felipe del Progreso    | 1145 Vilnius Manor                     |
| ANTHONY SCHWAB        | American Samoa                        | Tafuna                     | 1892 Nabereznyje Tšelny Lane           |
| KEVIN SCHULER         | Nepal                                 | Birgunj                    | 470 Boksburg Street                    |
| JASON MORRISSEY       | Argentina                             | Bahía Blanca               | 1427 A Coruña (La Coruña) Place        |
| MATTHEW MAHAN         | Mexico                                | Cuautla                    | 479 San Felipe del Progreso Avenue     |
| GARY COY              | China                                 | Yuzhou                     | 867 Benin City Avenue                  |
| TIMOTHY BUNN          | Brazil                                | Brasília                   | 981 Kumbakonam Place                   |
| JOSE ANDREW           | Saint Vincent and the Grenadines      | Kingstown                  | 1016 Iwakuni Street                    |
| LARRY THRASHER        | Turkey                                | Adana                      | 663 Bahía Blanca Parkway               |
| JEFFREY SPEAR         | Indonesia                             | Ciparay                    | 1860 Taguig Loop                       |
| FRANK WAGGONER        | Bangladesh                            | Jamalpur                   | 1816 Bydgoszcz Loop                    |
| SCOTT SHELLEY         | United States                         | Aurora                     | 587 Benguela Manor                     |
| ERIC ROBERT           | Argentina                             | Santa Fé                   | 430 Kumbakonam Drive                   |
| STEPHEN QUALLS        | Bangladesh                            | Dhaka                      | 1838 Tabriz Lane                       |
| ANDREW PURDY          | Azerbaijan                            | Baku                       | 431 Székesfehérvár Avenue              |
| RAYMOND MCWHORTER     | Azerbaijan                            | Sumqayit                   | 503 Sogamoso Loop                      |
| GREGORY MAULDIN       | Tunisia                               | Sousse                     | 507 Smolensk Loop                      |
| JOSHUA MARK           | India                                 | Rampur                     | 1920 Weifang Avenue                    |
| JERRY JORDON          | Japan                                 | Onomichi                   | 124 al-Manama Way                      |
| DENNIS GILMAN         | South Africa                          | Paarl                      | 1443 Mardan Street                     |
| WALTER PERRYMAN       | China                                 | Xinxiang                   | 1909 Benguela Lane                     |
| PATRICK NEWSOM        | Vietnam                               | Hanoi                      | 68 Ponce Parkway                       |
| PETER MENARD          | Netherlands                           | Ede                        | 1217 Konotop Avenue                    |
| HAROLD MARTINO        | Brazil                                | Boa Vista                  | 1293 Nam Dinh Way                      |
| DOUGLAS GRAF          | Mexico                                | Mexicali                   | 785 Vaduz Street                       |
| HENRY BILLINGSLEY     | Tonga                                 | Nuku´alofa                 | 1516 Escobar Drive                     |
| CARL ARTIS            | Paraguay                              | San Lorenzo                | 1628 Nagareyama Lane                   |
| ARTHUR SIMPKINS       | Russian Federation                    | Maikop                     | 1157 Nyeri Loop                        |
| RYAN SALISBURY        | Latvia                                | Daugavpils                 | 1673 Tangail Drive                     |
| ROGER QUINTANILLA     | Taiwan                                | Hsichuh                    | 381 Kabul Way                          |
| JOE GILLILAND         | Philippines                           | Imus                       | 953 Hodeida Street                     |
| JUAN FRALEY           | Russian Federation                    | Tšeboksary                 | 469 Nakhon Sawan Street                |
| JACK FOUST            | Russian Federation                    | Zeleznogorsk               | 1378 Beira Loop                        |
| ALBERT CROUSE         | Cameroon                              | Bamenda                    | 1641 Changhwa Place                    |
| JONATHAN SCARBOROUGH  | Mexico                                | Pachuca de Soto            | 1698 Southport Loop                    |
| JUSTIN NGO            | Brazil                                | Santo André                | 519 Nyeri Manor                        |
| TERRY GRISSOM         | Japan                                 | Matsue                     | 619 Huánuco Avenue                     |
| GERALD FULTZ          | India                                 | Satna                      | 45 Aparecida de Goiânia Place          |
| KEITH RICO            | Slovakia                              | Bratislava                 | 482 Kowloon and New Kowloon Manor      |
| SAMUEL MARLOW         | India                                 | Ranchi                     | 604 Bern Place                         |
| WILLIE MARKHAM        | Argentina                             | Almirante Brown            | 1623 Kingstown Drive                   |
| RALPH MADRIGAL        | Puerto Rico                           | Arecibo                    | 1009 Zanzibar Lane                     |
| LAWRENCE LAWTON       | Cameroon                              | Yaoundé                    | 114 Jalib al-Shuyukh Manor             |
| NICHOLAS BARFIELD     | Brazil                                | Belém                      | 1163 London Parkway                    |
| ROY WHITING           | Kenya                                 | Nyeri                      | 1658 Jastrzebie-Zdrój Loop             |
| BENJAMIN VARNEY       | Mexico                                | Guadalajara                | 817 Laredo Avenue                      |
| BRUCE SCHWARZ         | Japan                                 | Okinawa                    | 1565 Tangail Manor                     |
| BRANDON HUEY          | Turkey                                | Balikesir                  | 1912 Emeishan Drive                    |
| ADAM GOOCH            | India                                 | Adoni                      | 230 Urawa Drive                        |
| HARRY ARCE            | Iran                                  | Najafabad                  | 1922 Miraj Way                         |
| FRED WHEAT            | Mexico                                | Juárez                     | 433 Florencia Street                   |
| WAYNE TRUONG          | India                                 | Gulbarga                   | 1049 Matamoros Parkway                 |
| BILLY POULIN          | Philippines                           | Cabuyao                    | 1061 Ede Avenue                        |
| STEVE MACKENZIE       | Indonesia                             | Probolinggo                | 154 Oshawa Manor                       |
| LOUIS LEONE           | Philippines                           | Tanauan                    | 1191 Tandil Drive                      |
| JEREMY HURTADO        | Brazil                                | Vitória de Santo Antão     | 1133 Rizhao Avenue                     |
| AARON SELBY           | Congo, The Democratic Republic of the | Mwene-Ditu                 | 1519 Santiago de los Caballeros Loop   |
| RANDY GAITHER         | Russian Federation                    | Kurgan                     | 1618 Olomouc Manor                     |
| HOWARD FORTNER        | Iran                                  | Kermanshah                 | 220 Hidalgo Drive                      |
| EUGENE CULPEPPER      | China                                 | Shenzhen                   | 686 Donostia-San Sebastián Lane        |
| CARLOS COUGHLIN       | India                                 | Bhavnagar                  | 97 Mogiljov Lane                       |
| RUSSELL BRINSON       | Poland                                | Tychy                      | 1642 Charlotte Amalie Drive            |
| BOBBY BOUDREAU        | Anguilla                              | South Hill                 | 1368 Maracaíbo Boulevard               |
| VICTOR BARKLEY        | United States                         | Manchester                 | 401 Sucre Boulevard                    |
| MARTIN BALES          | Angola                                | Namibe                     | 368 Huánuco Boulevard                  |
| ERNEST STEPP          | China                                 | Huai´an                    | 500 Lincoln Parkway                    |
| PHILLIP HOLM          | Japan                                 | Tama                       | 102 Chapra Drive                       |
| TODD TAN              | Ukraine                               | Kamjanets-Podilskyi        | 1793 Meixian Place                     |
| JESSE SCHILLING       | Congo, The Democratic Republic of the | Lubumbashi                 | 514 Ife Way                            |
| CRAIG MORRELL         | Philippines                           | Cavite                     | 717 Changzhou Lane                     |
| ALAN KAHN             | China                                 | Emeishan                   | 753 Ilorin Avenue                      |
| SHAWN HEATON          | Thailand                              | Nakhon Sawan               | 1337 Mit Ghamr Avenue                  |
| CLARENCE GAMEZ        | Japan                                 | Izumisano                  | 767 Pyongyang Drive                    |
| SEAN DOUGLASS         | Ethiopia                              | Addis Abeba                | 614 Pak Kret Street                    |
| PHILIP CAUSEY         | Russian Federation                    | Korolev                    | 954 Lapu-Lapu Way                      |
| CHRIS BROTHERS        | Spain                                 | Gijón                      | 331 Bydgoszcz Parkway                  |
| JOHNNY TURPIN         | Sudan                                 | al-Qadarif                 | 1152 Citrus Heights Manor              |
| EARL SHANKS           | Japan                                 | Iwatsuki                   | 168 Cianjur Manor                      |
| JIMMY SCHRADER        | Russian Federation                    | Atšinsk                    | 616 Hagonoy Avenue                     |
| ANTONIO MEEK          | Brazil                                | Bagé                       | 1190 0 Place                           |
| DANNY ISOM            | Pakistan                              | Okara                      | 734 Béchar Place                       |
| BRYAN HARDISON        | United States                         | Dallas                     | 530 Lausanne Lane                      |
| TONY CARRANZA         | Japan                                 | Koriyama                   | 454 Patiala Lane                       |
| LUIS YANEZ            | France                                | Brest                      | 1346 Mysore Drive                      |
| MIKE WAY              | India                                 | Valparai                   | 990 Etawah Loop                        |
| STANLEY SCROGGINS     | Japan                                 | Omiya                      | 1266 Laredo Parkway                    |
| LEONARD SCHOFIELD     | Argentina                             | Tandil                     | 88 Nagaon Manor                        |
| NATHAN RUNYON         | Virgin Islands, U.S.                  | Charlotte Amalie           | 264 Bhimavaram Manor                   |
| DALE RATCLIFF         | South Africa                          | Rustenburg                 | 1639 Saarbrücken Drive                 |
| MANUEL MURRELL        | Sri Lanka                             | Jaffna                     | 692 Amroha Drive                       |
| RODNEY MOELLER        | Nigeria                               | Deba Habe                  | 1936 Lapu-Lapu Parkway                 |
| CURTIS IRBY           | Canada                                | Richmond Hill              | 432 Garden Grove Street                |
| NORMAN CURRIER        | Indonesia                             | Cianjur                    | 1445 Carmen Parkway                    |
| ALLEN BUTTERFIELD     | India                                 | Hoshiarpur                 | 791 Salinas Street                     |
| MARVIN YEE            | India                                 | Berhampore (Baharampur)    | 126 Acuña Parkway                      |
| VINCENT RALSTON       | Mexico                                | Allende                    | 397 Sunnyvale Avenue                   |
| GLENN PULLEN          | Netherlands                           | Amersfoort                 | 992 Klerksdorp Loop                    |
| JEFFERY PINSON        | Pakistan                              | Dadu                       | 966 Arecibo Loop                       |
| TRAVIS ESTEP          | Saudi Arabia                          | al-Qatif                   | 289 Santo André Manor                  |
| JEFF EAST             | Dominican Republic                    | San Felipe de Puerto Plata | 437 Chungho Drive                      |
| CHAD CARBONE          | India                                 | Katihar                    | 1948 Bayugan Parkway                   |
| JACOB LANCE           | United States                         | El Monte                   | 1866 al-Qatif Avenue                   |
| LEE HAWKS             | India                                 | Pudukkottai                | 1661 Abha Drive                        |
| MELVIN ELLINGTON      | China                                 | Laohekou                   | 1557 Cape Coral Parkway                |
| ALFRED CASILLAS       | Egypt                                 | Sawhaj                     | 1727 Matamoros Place                   |
| KYLE SPURLOCK         | China                                 | Shanwei                    | 1269 Botosani Manor                    |
| FRANCIS SIKES         | Mexico                                | San Juan Bautista Tuxtepec | 355 Vitória de Santo Antão Way         |
| BRADLEY MOTLEY        | India                                 | Purnea (Purnia)            | 1596 Acuña Parkway                     |
| JESUS MCCARTNEY       | Brazil                                | Guarujá                    | 259 Ipoh Drive                         |
| HERBERT KRUGER        | Russian Federation                    | Syktyvkar                  | 1823 Hoshiarpur Lane                   |
| FREDERICK ISBELL      | Japan                                 | Tsuyama                    | 1404 Taguig Drive                      |
| RAY HOULE             | Russian Federation                    | Dzerzinsk                  | 740 Udaipur Lane                       |
| JOEL FRANCISCO        | Bolivia                               | Sucre                      | 287 Cuautla Boulevard                  |
| EDWIN BURK            | South Africa                          | Newcastle                  | 1766 Almirante Brown Street            |
| DON BONE              | Mozambique                            | Naçala-Porto               | 596 Huixquilucan Place                 |
| EDDIE TOMLIN          | Philippines                           | Ozamis                     | 1351 Aparecida de Goiânia Parkway      |
| RICKY SHELBY          | China                                 | Junan                      | 722 Bradford Lane                      |
| TROY QUIGLEY          | Canada                                | Vancouver                  | 983 Santa Fé Way                       |
| RANDALL NEUMANN       | Dominican Republic                    | La Romana                  | 1245 Ibirité Way                       |
| BARRY LOVELACE        | Zambia                                | Kitwe                      | 1836 Korla Parkway                     |
| ALEXANDER FENNELL     | Italy                                 | Bergamo                    | 231 Kaliningrad Place                  |
| BERNARD COLBY         | India                                 | Dhule (Dhulia)             | 495 Bhimavaram Lane                    |
| MARIO CHEATHAM        | Algeria                               | Batna                      | 1924 Shimonoseki Drive                 |
| LEROY BUSTAMANTE      | China                                 | Tongliao                   | 105 Dzerzinsk Manor                    |
| FRANCISCO SKIDMORE    | Brazil                                | São Leopoldo               | 614 Denizli Parkway                    |
| MARCUS HIDALGO        | Estonia                               | Tartu                      | 1289 Belém Boulevard                   |
| MICHEAL FORMAN        | Argentina                             | Escobar                    | 203 Tambaram Street                    |
| THEODORE CULP         | India                                 | Uluberia                   | 1704 Tambaram Manor                    |
| CLIFFORD BOWENS       | Russian Federation                    | Nabereznyje Tšelny         | 207 Cuernavaca Loop                    |
| MIGUEL BETANCOURT     | Germany                               | Erlangen                   | 319 Springs Loop                       |
| OSCAR AQUINO          | Iran                                  | Sirjan                     | 956 Nam Dinh Manor                     |
| JAY ROBB              | Indonesia                             | Surakarta                  | 1947 Paarl Way                         |
| JIM REA               | Mexico                                | El Fuerte                  | 814 Simferopol Loop                    |
| TOM MILNER            | United Arab Emirates                  | Abu Dhabi                  | 535 Ahmadnagar Manor                   |
| CALVIN MARTEL         | Venezuela                             | Maracaíbo                  | 138 Caracas Boulevard                  |
| ALEX GRESHAM          | Mexico                                | Uruapan                    | 251 Florencia Drive                    |
| JON WILES             | Bolivia                               | El Alto                    | 659 Gatineau Boulevard                 |
| RONNIE RICKETTS       | Senegal                               | Ziguinchor                 | 1889 Valparai Way                      |
| BILL GAVIN            | United States                         | Rockford                   | 1485 Bratislava Place                  |
| LLOYD DOWD            | Indonesia                             | Tegal                      | 935 Aden Boulevard                     |
| TOMMY COLLAZO         | Iran                                  | Qomsheh                    | 76 Kermanshah Manor                    |
| LEON BOSTIC           | Colombia                              | Florencia                  | 734 Tanshui Avenue                     |
| DEREK BLAKELY         | Philippines                           | Gingoog                    | 118 Jaffna Loop                        |
| WARREN SHERROD        | Russian Federation                    | Usolje-Sibirskoje          | 1621 Tongliao Avenue                   |
| DARRELL POWER         | Canada                                | Halifax                    | 1844 Usak Avenue                       |
| JEROME KENYON         | Chile                                 | Rancagua                   | 1872 Toulon Loop                       |
| FLOYD GANDY           | Mexico                                | Zapopan                    | 1088 Ibirité Place                     |
| LEO EBERT             | China                                 | Dongying                   | 1322 Mosul Parkway                     |
| ALVIN DELOACH         | Mexico                                | Cuauhtémoc                 | 1447 Chatsworth Place                  |
| TIM CARY              | India                                 | Bijapur                    | 1257 Guadalajara Street                |
| WESLEY BULL           | Spain                                 | Ourense (Orense)           | 1469 Plock Lane                        |
| GORDON ALLARD         | Yemen                                 | Hodeida                    | 434 Ourense (Orense) Manor             |
| DEAN SAUER            | South Africa                          | Johannesburg               | 270 Tambaram Parkway                   |
| GREG ROBINS           | Vietnam                               | Nam Dinh                   | 1786 Salinas Place                     |
| JORGE OLIVARES        | Indonesia                             | Lhokseumawe                | 1078 Stara Zagora Drive                |
| DUSTIN GILLETTE       | Netherlands                           | Emmen                      | 1854 Okara Boulevard                   |
| PEDRO CHESTNUT        | Ukraine                               | Šostka                     | 421 Yaoundé Street                     |
| DERRICK BOURQUE       | Canada                                | Gatineau                   | 1153 Allende Way                       |
| DAN PAINE             | United Kingdom                        | Stockport                  | 808 Naçala-Porto Parkway               |
| LEWIS LYMAN           | Israel                                | Ashqelon                   | 632 Usolje-Sibirskoje Parkway          |
| ZACHARY HITE          | United States                         | Akron                      | 98 Pyongyang Boulevard                 |
| COREY HAUSER          | Turkey                                | Gaziantep                  | 984 Novotšerkassk Loop                 |
| HERMAN DEVORE         | Tanzania                              | Mwanza                     | 64 Korla Street                        |
| MAURICE CRAWLEY       | Mexico                                | Coatzacoalcos              | 1785 São Bernardo do Campo Street      |
| VERNON CHAPA          | Turkey                                | Denizli                    | 698 Jelets Boulevard                   |
| ROBERTO VU            | China                                 | Yinchuan                   | 1297 Alvorada Parkway                  |
| CLYDE TOBIAS          | China                                 | Shaoguan                   | 1909 Dayton Avenue                     |
| GLEN TALBERT          | Mexico                                | Acuña                      | 1789 Saint-Denis Parkway               |
| HECTOR POINDEXTER     | Russian Federation                    | Pjatigorsk                 | 185 Mannheim Lane                      |
| SHANE MILLARD         | Mexico                                | La Paz                     | 184 Mandaluyong Street                 |
| RICARDO MEADOR        | Japan                                 | Okayama                    | 591 Sungai Petani Drive                |
| SAM MCDUFFIE          | Colombia                              | Sogamoso                   | 656 Matamoros Drive                    |
| RICK MATTOX           | Egypt                                 | Mit Ghamr                  | 775 Šostka Drive                       |
| LESTER KRAUS          | India                                 | Kanchrapara                | 1013 Tabuk Boulevard                   |
| BRENT HARKINS         | Turkey                                | Sultanbeyli                | 319 Plock Parkway                      |
| RAMON CHOATE          | Ecuador                               | Ríobamba                   | 1954 Kowloon and New Kowloon Way       |
| CHARLIE BESS          | China                                 | Baiyin                     | 362 Rajkot Lane                        |
| TYLER WREN            | China                                 | Rizhao                     | 1060 Tandil Lane                       |
| GILBERT SLEDGE        | United Kingdom                        | York                       | 1515 Korla Way                         |
| GENE SANBORN          | Oman                                  | Salala                     | 1416 San Juan Bautista Tuxtepec Avenue |
| MARC OUTLAW           | Italy                                 | Brindisi                   | 1 Valle de Santiago Avenue             |
| REGINALD KINDER       | Indonesia                             | Madiun                     | 519 Brescia Parkway                    |
| RUBEN GEARY           | Poland                                | Lublin                     | 414 Mandaluyong Street                 |
| BRETT CORNWELL        | India                                 | Siliguri (Shiliguri)       | 1197 Sokoto Boulevard                  |
| ANGEL BARCLAY         | Japan                                 | Ueda                       | 496 Celaya Drive                       |
| NATHANIEL ADAM        | United States                         | Joliet                     | 786 Matsue Way                         |
| RAFAEL ABNEY          | Philippines                           | Talavera                   | 48 Maracaíbo Place                     |
| LESLIE SEWARD         | Indonesia                             | Pontianak                  | 1152 al-Qatif Lane                     |
| EDGAR RHOADS          | Turkey                                | Eskisehir                  | 1269 Ipoh Avenue                       |
| MILTON HOWLAND        | India                                 | Vijayawada                 | 758 Korolev Parkway                    |
| RAUL FORTIER          | India                                 | Chapra                     | 1747 Rustenburg Place                  |
| BEN EASTER            | Russian Federation                    | Kamyšin                    | 886 Tonghae Place                      |
| CHESTER BENNER        | China                                 | Suihua                     | 1574 Goiânia Boulevard                 |
| CECIL VINES           | United Kingdom                        | London                     | 548 Uruapan Street                     |
| DUANE TUBBS           | Nauru                                 | Yangor                     | 962 Tama Loop                          |
| FRANKLIN TROUTMAN     | China                                 | Zaoyang                    | 1778 Gijón Manor                       |
| ANDRE RAPP            | Chile                                 | Coquimbo                   | 568 Dhule (Dhulia) Loop                |
| ELMER NOE             | Cambodia                              | Battambang                 | 1768 Udine Loop                        |
| BRAD MCCURDY          | Taiwan                                | Chungho                    | 608 Birgunj Parkway                    |
| GABRIEL HARDER        | Turkey                                | Sivas                      | 680 A Coruña (La Coruña) Manor         |
| RON DELUCA            | Japan                                 | Isesaki                    | 1949 Sanya Street                      |
| MITCHELL WESTMORELAND | Vietnam                               | Nha Trang                  | 617 Klerksdorp Place                   |
| ROLAND SOUTH          | China                                 | Yingkou                    | 1993 0 Loop                            |
| ARNOLD HAVENS         | Philippines                           | Santa Rosa                 | 1176 Southend-on-Sea Manor             |
| HARVEY GUAJARDO       | Vietnam                               | Vinh                       | 600 Purnea (Purnia) Avenue             |
| JARED ELY             | Indonesia                             | Purwakarta                 | 1003 Qinhuangdao Street                |
| ADRIAN CLARY          | Italy                                 | Udine                      | 1986 Sivas Place                       |
| KARL SEAL             | United States                         | Cape Coral                 | 1427 Tabuk Place                       |
| CORY MEEHAN           | Belarus                               | Mogiljov                   | 556 Asunción Way                       |
| CLAUDE HERZOG         | Angola                                | Benguela                   | 486 Ondo Parkway                       |
| ERIK GUILLEN          | India                                 | Bhimavaram                 | 635 Brest Manor                        |
| DARRYL ASHCRAFT       | Argentina                             | Ezeiza                     | 166 Jinchang Street                    |
| JAMIE WAUGH           | Japan                                 | Kuwana                     | 958 Sagamihara Lane                    |
| NEIL RENNER           | Vietnam                               | Cam Ranh                   | 1817 Livorno Way                       |
| JESSIE MILAM          | China                                 | Binzhou                    | 1332 Gaziantep Lane                    |
| CHRISTIAN JUNG        | India                                 | Amroha                     | 949 Allende Lane                       |
| JAVIER ELROD          | Chad                                  | NDjamna                    | 195 Ilorin Street                      |
| FERNANDO CHURCHILL    | South Korea                           | Tonghae                    | 193 Bhusawal Place                     |
| CLINTON BUFORD        | United States                         | Aurora                     | 43 Vilnius Manor                       |
| TED BREAUX            | China                                 | Baicheng                   | 183 Haiphong Street                    |
| MATHEW BOLIN          | Venezuela                             | Valencia                   | 163 Augusta-Richmond County Loop       |
| TYRONE ASHER          | Bulgaria                              | Ruse                       | 191 José Azueta Parkway                |
| DARREN WINDHAM        | Italy                                 | Livorno                    | 379 Lublin Parkway                     |
| LONNIE TIRADO         | Indonesia                             | Pangkal Pinang             | 1658 Cumaná Loop                       |
| LANCE PEMBERTON       | Morocco                               | Beni-Mellal                | 454 Qinhuangdao Drive                  |
| CODY NOLEN            | Brazil                                | São Bernardo do Campo      | 1715 Okayama Street                    |
| JULIO NOLAND          | Ukraine                               | Konotop                    | 182 Nuku´alofa Drive                   |
| KELLY KNOTT           | China                                 | Sanya                      | 390 Wroclaw Way                        |
| KURT EMMONS           | Japan                                 | Kanazawa                   | 1421 Quilmes Lane                      |
| ALLAN CORNISH         | Philippines                           | Tarlac                     | 947 Tórshavn Place                     |
| NELSON CHRISTENSON    | Spain                                 | Santiago de Compostela     | 1764 Jalib al-Shuyukh Parkway          |
| GUY BROWNLEE          | China                                 | Zhoushan                   | 346 Cam Ranh Avenue                    |
| CLAYTON BARBEE        | Brazil                                | Alvorada                   | 1407 Pachuca de Soto Place             |
| HUGH WALDROP          | China                                 | Haining                    | 904 Clarksville Drive                  |
| MAX PITT              | Yugoslavia                            | Novi Sad                   | 1917 Kumbakonam Parkway                |
| DWAYNE OLVERA         | India                                 | Rajkot                     | 1447 Imus Place                        |
| DWIGHT LOMBARDI       | South Africa                          | Chatsworth                 | 1497 Fengshan Drive                    |
| ARMANDO GRUBER        | United Kingdom                        | Southport                  | 869 Shikarpur Way                      |
| FELIX GAFFNEY         | Lithuania                             | Vilnius                    | 1059 Yuncheng Avenue                   |
| JIMMIE EGGLESTON      | Poland                                | Wroclaw                    | 505 Madiun Boulevard                   |
| EVERETT BANDA         | Egypt                                 | Bilbays                    | 1741 Hoshiarpur Boulevard              |
| JORDAN ARCHULETA      | Argentina                             | Avellaneda                 | 1229 Varanasi (Benares) Manor          |
| IAN STILL             | United States                         | Garland                    | 1894 Boa Vista Way                     |
| WALLACE SLONE         | Nigeria                               | Sokoto                     | 1342 Sharja Way                        |
| KEN PREWITT           | Romania                               | Bucuresti                  | 1342 Abha Boulevard                    |
| BOB PFEIFFER          | China                                 | Xintai                     | 415 Pune Avenue                        |
| JAIME NETTLES         | Peru                                  | Huánuco                    | 1746 Faaa Way                          |
| CASEY MENA            | Turkey                                | Tokat                      | 539 Hami Way                           |
| ALFREDO MCADAMS       | Russian Federation                    | Serpuhov                   | 1407 Surakarta Manor                   |
| ALBERTO HENNING       | Venezuela                             | Barcelona                  | 502 Mandi Bahauddin Parkway            |
| DAVE GARDINER         | China                                 | Leshan                     | 1052 Pathankot Avenue                  |
| IVAN CROMWELL         | Mexico                                | Monclova                   | 1351 Sousse Lane                       |
| JOHNNIE CHISHOLM      | Poland                                | Plock                      | 1501 Pangkal Pinang Avenue             |
| SIDNEY BURLESON       | Poland                                | Czestochowa                | 1405 Hagonoy Avenue                    |
| BYRON BOX             | Kazakstan                             | Zhezqazghan                | 521 San Juan Bautista Tuxtepec Place   |
| JULIAN VEST           | Japan                                 | Akishima                   | 923 Tangail Boulevard                  |
| ISAAC OGLESBY         | Mexico                                | Cuernavaca                 | 186 Skikda Lane                        |
| MORRIS MCCARTER       | Taiwan                                | Fengshan                   | 1568 Celaya Parkway                    |
| CLIFTON MALCOLM       | Taiwan                                | Tanshui                    | 1489 Kakamigahara Lane                 |
| WILLARD LUMPKIN       | Mexico                                | Carmen                     | 1819 Alessandria Loop                  |
| DARYL LARUE           | Iraq                                  | Mosul                      | 1208 Tama Loop                         |
| ROSS GREY             | Philippines                           | Iligan                     | 951 Springs Lane                       |
| VIRGIL WOFFORD        | Mexico                                | José Azueta                | 760 Miyakonojo Drive                   |
| ANDY VANHORN          | Mexico                                | Huejutla de Reyes          | 966 Asunción Way                       |
| MARSHALL THORN        | United Kingdom                        | Southampton                | 1584 Ljubertsy Lane                    |
| SALVADOR TEEL         | Gambia                                | Banjul                     | 247 Jining Parkway                     |
| PERRY SWAFFORD        | Argentina                             | Quilmes                    | 773 Dallas Manor                       |
| KIRK STCLAIR          | Taiwan                                | Tsaotun                    | 1923 Stara Zagora Lane                 |
| SERGIO STANFIELD      | Mexico                                | Celaya                     | 1402 Zanzibar Boulevard                |
| MARION OCAMPO         | China                                 | Weifang                    | 1464 Kursk Parkway                     |
| TRACY HERRMANN        | Ecuador                               | Loja                       | 1074 Sanaa Parkway                     |
| SETH HANNON           | Bahrain                               | al-Manama                  | 1759 Niznekamsk Avenue                 |
| KENT ARSENAULT        | Brazil                                | Juiz de Fora               | 32 Liaocheng Way                       |
| TERRANCE ROUSH        | Hungary                               | Székesfehérvár             | 42 Fontana Avenue                      |
| RENE MCALISTER        | United States                         | Garden Grove               | 1895 Zhezqazghan Drive                 |
| EDUARDO HIATT         | China                                 | Jining                     | 1837 Kaduna Parkway                    |
| TERRENCE GUNDERSON    | China                                 | Jinzhou                    | 844 Bucuresti Place                    |
| ENRIQUE FORSYTHE      | Greece                                | Patras                     | 1101 Bucuresti Boulevard               |
| FREDDIE DUGGAN        | Peru                                  | Sullana                    | 1103 Quilmes Boulevard                 |
| WADE DELVALLE         | Switzerland                           | Lausanne                   | 1331 Usak Boulevard                    |
| AUSTIN CINTRON        | China                                 | Tieli                      | 1325 Fukuyama Street                   |
+-----------------------+---------------------------------------+----------------------------+----------------------------------------+
**/
-- Numero de películas de cada rating
select COUNT(*) as "peliculas por rating", rating from film group by rating;
/**
+----------------------+--------+
| peliculas por rating | rating |
+----------------------+--------+
|                  194 | PG     |
|                  178 | G      |
|                  210 | NC-17  |
|                  223 | PG-13  |
|                  195 | R      |
+----------------------+--------+
**/
-- Cuantas películas ha realizado el actor ED CHASE.
select a.first_name, COUNT(fa.actor_id) as "numero de peliculas" from film_actor as fa JOIN actor as a ON fa.actor_id=a.actor_id
where first_name='ED' and last_name='CHASE';
/**
+------------+---------------------+
| first_name | numero de peliculas |
+------------+---------------------+
| ED         |                  22 |
+------------+---------------------+
**/
-- Media de duración de las películas cada categoría.
select c.name, AVG(f.length) as "Duracion media" from film_category as fc JOIN category as c ON c.category_id=fc.category_id
JOIN film as f ON f.film_id=fc.film_id group by c.name;
/**
+-------------+----------------+
| name        | Duracion media |
+-------------+----------------+
| Action      |       111.6094 |
| Animation   |       111.0152 |
| Children    |       109.8000 |
| Classics    |       111.6667 |
| Comedy      |       115.8276 |
| Documentary |       108.7500 |
| Drama       |       120.8387 |
| Family      |       114.7826 |
| Foreign     |       121.6986 |
| Games       |       127.8361 |
| Horror      |       112.4821 |
| Music       |       113.6471 |
| New         |       111.1270 |
| Sci-Fi      |       108.1967 |
| Sports      |       128.2027 |
| Travel      |       113.3158 |
+-------------+----------------+
**/
```

</div>