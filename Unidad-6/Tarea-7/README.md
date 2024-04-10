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