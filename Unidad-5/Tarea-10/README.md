<div align="justify">

# <div align="center">Consultas Tareas 10</div>

```sql
-- Proporciona una consulta que muestre solo los clientes de Brasil.
select * from customers where country="Brazil"
/**
CustomerId  FirstName  LastName   Company                                           Address                          City                 State  Country  PostalCode  Phone               Fax                 Email                          SupportRepId
----------  ---------  ---------  ------------------------------------------------  -------------------------------  -------------------  -----  -------  ----------  ------------------  ------------------  -----------------------------  ------------
1           Luís       Gonçalves  Embraer - Empresa Brasileira de Aeronáutica S.A.  Av. Brigadeiro Faria Lima, 2170  São José dos Campos  SP     Brazil   12227-000   +55 (12) 3923-5555  +55 (12) 3923-5566  luisg@embraer.com.br           3           
10          Eduardo    Martins    Woodstock Discos                                  Rua Dr. Falcão Filho, 155        São Paulo            SP     Brazil   01007-010   +55 (11) 3033-5446  +55 (11) 3033-4564  eduardo@woodstock.com.br       4           
11          Alexandre  Rocha      Banco do Brasil S.A.                              Av. Paulista, 2022               São Paulo            SP     Brazil   01310-200   +55 (11) 3055-3278  +55 (11) 3055-8131  alero@uol.com.br               5           
12          Roberto    Almeida    Riotur                                            Praça Pio X, 119                 Rio de Janeiro       RJ     Brazil   20040-020   +55 (21) 2271-7000  +55 (21) 2271-7070  roberto.almeida@riotur.gov.br  3           
13          Fernanda   Ramos                                                        Qe 7 Bloco G                     Brasília             DF     Brazil   71020-677   +55 (61) 3363-5547  +55 (61) 3363-7855  fernadaramos4@uol.com.br       4           
**/

-- Proporciona una consulta que muestre las facturas de clientes que son de Brasil. La tabla resultante debe mostrar el nombre completo del cliente, ID de factura, fecha de la factura y país de facturación.
select c.FirstName, i.InvoiceID, i.InvoiceDate, i.BillingCountry from customers as c, invoices as i where c.CustomerId=i.CustomerId;
select select c.FirstName, i.InvoiceID, i.InvoiceDate, i.BillingCountry from customers as c INNER JOIN invoices as i ON c.CustomerId=i.CustomerId;c.FirstName, i.InvoiceID, i.InvoiceDate, i.BillingCountry from customers as c INNER JOIN invoices as i ON c.CustomerId=i.CustomerId;
/**
┌───────────┬───────────┬─────────────────────┬────────────────┐
│ FirstName │ InvoiceId │     InvoiceDate     │ BillingCountry │
├───────────┼───────────┼─────────────────────┼────────────────┤
│ Luís      │ 98        │ 2010-03-11 00:00:00 │ Brazil         │
│ Luís      │ 121       │ 2010-06-13 00:00:00 │ Brazil         │
│ Luís      │ 143       │ 2010-09-15 00:00:00 │ Brazil         │
│ Luís      │ 195       │ 2011-05-06 00:00:00 │ Brazil         │
│ Luís      │ 316       │ 2012-10-27 00:00:00 │ Brazil         │
│ Luís      │ 327       │ 2012-12-07 00:00:00 │ Brazil         │
│ Luís      │ 382       │ 2013-08-07 00:00:00 │ Brazil         │
│ Leonie    │ 1         │ 2009-01-01 00:00:00 │ Germany        │
│ Leonie    │ 12        │ 2009-02-11 00:00:00 │ Germany        │
│ Leonie    │ 67        │ 2009-10-12 00:00:00 │ Germany        │
│ Leonie    │ 196       │ 2011-05-19 00:00:00 │ Germany        │
│ Leonie    │ 219       │ 2011-08-21 00:00:00 │ Germany        │
│ Leonie    │ 241       │ 2011-11-23 00:00:00 │ Germany        │
│ Leonie    │ 293       │ 2012-07-13 00:00:00 │ Germany        │
│ François  │ 99        │ 2010-03-11 00:00:00 │ Canada         │
│ François  │ 110       │ 2010-04-21 00:00:00 │ Canada         │
│ François  │ 165       │ 2010-12-20 00:00:00 │ Canada         │
│ François  │ 294       │ 2012-07-26 00:00:00 │ Canada         │
│ François  │ 317       │ 2012-10-28 00:00:00 │ Canada         │
│ François  │ 339       │ 2013-01-30 00:00:00 │ Canada         │
│ François  │ 391       │ 2013-09-20 00:00:00 │ Canada         │
│ Bjørn     │ 2         │ 2009-01-02 00:00:00 │ Norway         │
│ Bjørn     │ 24        │ 2009-04-06 00:00:00 │ Norway         │
│ Bjørn     │ 76        │ 2009-11-25 00:00:00 │ Norway         │
│ Bjørn     │ 197       │ 2011-05-19 00:00:00 │ Norway         │
│ Bjørn     │ 208       │ 2011-06-29 00:00:00 │ Norway         │
│ Bjørn     │ 263       │ 2012-02-27 00:00:00 │ Norway         │
│ Bjørn     │ 392       │ 2013-10-03 00:00:00 │ Norway         │
│ František │ 77        │ 2009-12-08 00:00:00 │ Czech Republic │
│ František │ 100       │ 2010-03-12 00:00:00 │ Czech Republic │
│ František │ 122       │ 2010-06-14 00:00:00 │ Czech Republic │
│ František │ 174       │ 2011-02-02 00:00:00 │ Czech Republic │
│ František │ 295       │ 2012-07-26 00:00:00 │ Czech Republic │
│ František │ 306       │ 2012-09-05 00:00:00 │ Czech Republic │
│ František │ 361       │ 2013-05-06 00:00:00 │ Czech Republic │
│ Helena    │ 46        │ 2009-07-11 00:00:00 │ Czech Republic │
│ Helena    │ 175       │ 2011-02-15 00:00:00 │ Czech Republic │
│ Helena    │ 198       │ 2011-05-20 00:00:00 │ Czech Republic │
│ Helena    │ 220       │ 2011-08-22 00:00:00 │ Czech Republic │
│ Helena    │ 272       │ 2012-04-11 00:00:00 │ Czech Republic │
│ Helena    │ 393       │ 2013-10-03 00:00:00 │ Czech Republic │
│ Helena    │ 404       │ 2013-11-13 00:00:00 │ Czech Republic │
│ Astrid    │ 78        │ 2009-12-08 00:00:00 │ Austria        │
│ Astrid    │ 89        │ 2010-01-18 00:00:00 │ Austria        │
│ Astrid    │ 144       │ 2010-09-18 00:00:00 │ Austria        │
│ Astrid    │ 273       │ 2012-04-24 00:00:00 │ Austria        │
│ Astrid    │ 296       │ 2012-07-27 00:00:00 │ Austria        │
│ Astrid    │ 318       │ 2012-10-29 00:00:00 │ Austria        │
│ Astrid    │ 370       │ 2013-06-19 00:00:00 │ Austria        │
│ Daan      │ 3         │ 2009-01-03 00:00:00 │ Belgium        │
│ Daan      │ 55        │ 2009-08-24 00:00:00 │ Belgium        │
│ Daan      │ 176       │ 2011-02-15 00:00:00 │ Belgium        │
│ Daan      │ 187       │ 2011-03-28 00:00:00 │ Belgium        │
│ Daan      │ 242       │ 2011-11-26 00:00:00 │ Belgium        │
│ Daan      │ 371       │ 2013-07-02 00:00:00 │ Belgium        │
│ Daan      │ 394       │ 2013-10-04 00:00:00 │ Belgium        │
│ Kara      │ 56        │ 2009-09-06 00:00:00 │ Denmark        │
│ Kara      │ 79        │ 2009-12-09 00:00:00 │ Denmark        │
│ Kara      │ 101       │ 2010-03-13 00:00:00 │ Denmark        │
│ Kara      │ 153       │ 2010-11-01 00:00:00 │ Denmark        │
│ Kara      │ 274       │ 2012-04-24 00:00:00 │ Denmark        │
│ Kara      │ 285       │ 2012-06-04 00:00:00 │ Denmark        │
│ Kara      │ 340       │ 2013-02-02 00:00:00 │ Denmark        │
│ Eduardo   │ 25        │ 2009-04-09 00:00:00 │ Brazil         │
│ Eduardo   │ 154       │ 2010-11-14 00:00:00 │ Brazil         │
│ Eduardo   │ 177       │ 2011-02-16 00:00:00 │ Brazil         │
│ Eduardo   │ 199       │ 2011-05-21 00:00:00 │ Brazil         │
│ Eduardo   │ 251       │ 2012-01-09 00:00:00 │ Brazil         │
│ Eduardo   │ 372       │ 2013-07-02 00:00:00 │ Brazil         │
│ Eduardo   │ 383       │ 2013-08-12 00:00:00 │ Brazil         │
│ Alexandre │ 57        │ 2009-09-06 00:00:00 │ Brazil         │
│ Alexandre │ 68        │ 2009-10-17 00:00:00 │ Brazil         │
│ Alexandre │ 123       │ 2010-06-17 00:00:00 │ Brazil         │
│ Alexandre │ 252       │ 2012-01-22 00:00:00 │ Brazil         │
│ Alexandre │ 275       │ 2012-04-25 00:00:00 │ Brazil         │
│ Alexandre │ 297       │ 2012-07-28 00:00:00 │ Brazil         │
│ Alexandre │ 349       │ 2013-03-18 00:00:00 │ Brazil         │
│ Roberto   │ 34        │ 2009-05-23 00:00:00 │ Brazil         │
│ Roberto   │ 155       │ 2010-11-14 00:00:00 │ Brazil         │
│ Roberto   │ 166       │ 2010-12-25 00:00:00 │ Brazil         │
│ Roberto   │ 221       │ 2011-08-25 00:00:00 │ Brazil         │
│ Roberto   │ 350       │ 2013-03-31 00:00:00 │ Brazil         │
│ Roberto   │ 373       │ 2013-07-03 00:00:00 │ Brazil         │
│ Roberto   │ 395       │ 2013-10-05 00:00:00 │ Brazil         │
│ Fernanda  │ 35        │ 2009-06-05 00:00:00 │ Brazil         │
│ Fernanda  │ 58        │ 2009-09-07 00:00:00 │ Brazil         │
│ Fernanda  │ 80        │ 2009-12-10 00:00:00 │ Brazil         │
│ Fernanda  │ 132       │ 2010-07-31 00:00:00 │ Brazil         │
│ Fernanda  │ 253       │ 2012-01-22 00:00:00 │ Brazil         │
│ Fernanda  │ 264       │ 2012-03-03 00:00:00 │ Brazil         │
│ Fernanda  │ 319       │ 2012-11-01 00:00:00 │ Brazil         │
│ Mark      │ 4         │ 2009-01-06 00:00:00 │ Canada         │
│ Mark      │ 133       │ 2010-08-13 00:00:00 │ Canada         │
│ Mark      │ 156       │ 2010-11-15 00:00:00 │ Canada         │
│ Mark      │ 178       │ 2011-02-17 00:00:00 │ Canada         │
│ Mark      │ 230       │ 2011-10-08 00:00:00 │ Canada         │
│ Mark      │ 351       │ 2013-03-31 00:00:00 │ Canada         │
│ Mark      │ 362       │ 2013-05-11 00:00:00 │ Canada         │
│ Jennifer  │ 36        │ 2009-06-05 00:00:00 │ Canada         │
│ Jennifer  │ 47        │ 2009-07-16 00:00:00 │ Canada         │
│ Jennifer  │ 102       │ 2010-03-16 00:00:00 │ Canada         │
│ Jennifer  │ 231       │ 2011-10-21 00:00:00 │ Canada         │
│ Jennifer  │ 254       │ 2012-01-23 00:00:00 │ Canada         │
│ Jennifer  │ 276       │ 2012-04-26 00:00:00 │ Canada         │
│ Jennifer  │ 328       │ 2012-12-15 00:00:00 │ Canada         │
│ Frank     │ 13        │ 2009-02-19 00:00:00 │ USA            │
│ Frank     │ 134       │ 2010-08-13 00:00:00 │ USA            │
│ Frank     │ 145       │ 2010-09-23 00:00:00 │ USA            │
│ Frank     │ 200       │ 2011-05-24 00:00:00 │ USA            │
│ Frank     │ 329       │ 2012-12-28 00:00:00 │ USA            │
│ Frank     │ 352       │ 2013-04-01 00:00:00 │ USA            │
│ Frank     │ 374       │ 2013-07-04 00:00:00 │ USA            │
│ Jack      │ 14        │ 2009-03-04 00:00:00 │ USA            │
│ Jack      │ 37        │ 2009-06-06 00:00:00 │ USA            │
│ Jack      │ 59        │ 2009-09-08 00:00:00 │ USA            │
│ Jack      │ 111       │ 2010-04-29 00:00:00 │ USA            │
│ Jack      │ 232       │ 2011-10-21 00:00:00 │ USA            │
│ Jack      │ 243       │ 2011-12-01 00:00:00 │ USA            │
│ Jack      │ 298       │ 2012-07-31 00:00:00 │ USA            │
│ Michelle  │ 112       │ 2010-05-12 00:00:00 │ USA            │
│ Michelle  │ 135       │ 2010-08-14 00:00:00 │ USA            │
│ Michelle  │ 157       │ 2010-11-16 00:00:00 │ USA            │
│ Michelle  │ 209       │ 2011-07-07 00:00:00 │ USA            │
│ Michelle  │ 330       │ 2012-12-28 00:00:00 │ USA            │
│ Michelle  │ 341       │ 2013-02-07 00:00:00 │ USA            │
│ Michelle  │ 396       │ 2013-10-08 00:00:00 │ USA            │
│ Tim       │ 15        │ 2009-03-04 00:00:00 │ USA            │
│ Tim       │ 26        │ 2009-04-14 00:00:00 │ USA            │
│ Tim       │ 81        │ 2009-12-13 00:00:00 │ USA            │
│ Tim       │ 210       │ 2011-07-20 00:00:00 │ USA            │
│ Tim       │ 233       │ 2011-10-22 00:00:00 │ USA            │
│ Tim       │ 255       │ 2012-01-24 00:00:00 │ USA            │
│ Tim       │ 307       │ 2012-09-13 00:00:00 │ USA            │
│ Dan       │ 113       │ 2010-05-12 00:00:00 │ USA            │
│ Dan       │ 124       │ 2010-06-22 00:00:00 │ USA            │
│ Dan       │ 179       │ 2011-02-20 00:00:00 │ USA            │
│ Dan       │ 308       │ 2012-09-26 00:00:00 │ USA            │
│ Dan       │ 331       │ 2012-12-29 00:00:00 │ USA            │
│ Dan       │ 353       │ 2013-04-02 00:00:00 │ USA            │
│ Dan       │ 405       │ 2013-11-21 00:00:00 │ USA            │
│ Kathy     │ 16        │ 2009-03-05 00:00:00 │ USA            │
│ Kathy     │ 38        │ 2009-06-07 00:00:00 │ USA            │
│ Kathy     │ 90        │ 2010-01-26 00:00:00 │ USA            │
│ Kathy     │ 211       │ 2011-07-20 00:00:00 │ USA            │
│ Kathy     │ 222       │ 2011-08-30 00:00:00 │ USA            │
│ Kathy     │ 277       │ 2012-04-29 00:00:00 │ USA            │
│ Kathy     │ 406       │ 2013-12-04 00:00:00 │ USA            │
│ Heather   │ 91        │ 2010-02-08 00:00:00 │ USA            │
│ Heather   │ 114       │ 2010-05-13 00:00:00 │ USA            │
│ Heather   │ 136       │ 2010-08-15 00:00:00 │ USA            │
│ Heather   │ 188       │ 2011-04-05 00:00:00 │ USA            │
│ Heather   │ 309       │ 2012-09-26 00:00:00 │ USA            │
│ Heather   │ 320       │ 2012-11-06 00:00:00 │ USA            │
│ Heather   │ 375       │ 2013-07-07 00:00:00 │ USA            │
│ John      │ 5         │ 2009-01-11 00:00:00 │ USA            │
│ John      │ 60        │ 2009-09-11 00:00:00 │ USA            │
│ John      │ 189       │ 2011-04-18 00:00:00 │ USA            │
│ John      │ 212       │ 2011-07-21 00:00:00 │ USA            │
│ John      │ 234       │ 2011-10-23 00:00:00 │ USA            │
│ John      │ 286       │ 2012-06-12 00:00:00 │ USA            │
│ John      │ 407       │ 2013-12-04 00:00:00 │ USA            │
│ Frank     │ 92        │ 2010-02-08 00:00:00 │ USA            │
│ Frank     │ 103       │ 2010-03-21 00:00:00 │ USA            │
│ Frank     │ 158       │ 2010-11-19 00:00:00 │ USA            │
│ Frank     │ 287       │ 2012-06-25 00:00:00 │ USA            │
│ Frank     │ 310       │ 2012-09-27 00:00:00 │ USA            │
│ Frank     │ 332       │ 2012-12-30 00:00:00 │ USA            │
│ Frank     │ 384       │ 2013-08-20 00:00:00 │ USA            │
│ Victor    │ 17        │ 2009-03-06 00:00:00 │ USA            │
│ Victor    │ 69        │ 2009-10-25 00:00:00 │ USA            │
│ Victor    │ 190       │ 2011-04-18 00:00:00 │ USA            │
│ Victor    │ 201       │ 2011-05-29 00:00:00 │ USA            │
│ Victor    │ 256       │ 2012-01-27 00:00:00 │ USA            │
│ Victor    │ 385       │ 2013-09-02 00:00:00 │ USA            │
│ Victor    │ 408       │ 2013-12-05 00:00:00 │ USA            │
│ Richard   │ 70        │ 2009-11-07 00:00:00 │ USA            │
│ Richard   │ 93        │ 2010-02-09 00:00:00 │ USA            │
│ Richard   │ 115       │ 2010-05-14 00:00:00 │ USA            │
│ Richard   │ 167       │ 2011-01-02 00:00:00 │ USA            │
│ Richard   │ 288       │ 2012-06-25 00:00:00 │ USA            │
│ Richard   │ 299       │ 2012-08-05 00:00:00 │ USA            │
│ Richard   │ 354       │ 2013-04-05 00:00:00 │ USA            │
│ Patrick   │ 39        │ 2009-06-10 00:00:00 │ USA            │
│ Patrick   │ 168       │ 2011-01-15 00:00:00 │ USA            │
│ Patrick   │ 191       │ 2011-04-19 00:00:00 │ USA            │
│ Patrick   │ 213       │ 2011-07-22 00:00:00 │ USA            │
│ Patrick   │ 265       │ 2012-03-11 00:00:00 │ USA            │
│ Patrick   │ 386       │ 2013-09-02 00:00:00 │ USA            │
│ Patrick   │ 397       │ 2013-10-13 00:00:00 │ USA            │
│ Julia     │ 71        │ 2009-11-07 00:00:00 │ USA            │
│ Julia     │ 82        │ 2009-12-18 00:00:00 │ USA            │
│ Julia     │ 137       │ 2010-08-18 00:00:00 │ USA            │
│ Julia     │ 266       │ 2012-03-24 00:00:00 │ USA            │
│ Julia     │ 289       │ 2012-06-26 00:00:00 │ USA            │
│ Julia     │ 311       │ 2012-09-28 00:00:00 │ USA            │
│ Julia     │ 363       │ 2013-05-19 00:00:00 │ USA            │
│ Robert    │ 48        │ 2009-07-24 00:00:00 │ Canada         │
│ Robert    │ 169       │ 2011-01-15 00:00:00 │ Canada         │
│ Robert    │ 180       │ 2011-02-25 00:00:00 │ Canada         │
│ Robert    │ 235       │ 2011-10-26 00:00:00 │ Canada         │
│ Robert    │ 364       │ 2013-06-01 00:00:00 │ Canada         │
│ Robert    │ 387       │ 2013-09-03 00:00:00 │ Canada         │
│ Robert    │ 409       │ 2013-12-06 00:00:00 │ Canada         │
│ Edward    │ 49        │ 2009-08-06 00:00:00 │ Canada         │
│ Edward    │ 72        │ 2009-11-08 00:00:00 │ Canada         │
│ Edward    │ 94        │ 2010-02-10 00:00:00 │ Canada         │
│ Edward    │ 146       │ 2010-10-01 00:00:00 │ Canada         │
│ Edward    │ 267       │ 2012-03-24 00:00:00 │ Canada         │
│ Edward    │ 278       │ 2012-05-04 00:00:00 │ Canada         │
│ Edward    │ 333       │ 2013-01-02 00:00:00 │ Canada         │
│ Martha    │ 18        │ 2009-03-09 00:00:00 │ Canada         │
│ Martha    │ 147       │ 2010-10-14 00:00:00 │ Canada         │
│ Martha    │ 170       │ 2011-01-16 00:00:00 │ Canada         │
│ Martha    │ 192       │ 2011-04-20 00:00:00 │ Canada         │
│ Martha    │ 244       │ 2011-12-09 00:00:00 │ Canada         │
│ Martha    │ 365       │ 2013-06-01 00:00:00 │ Canada         │
│ Martha    │ 376       │ 2013-07-12 00:00:00 │ Canada         │
│ Aaron     │ 50        │ 2009-08-06 00:00:00 │ Canada         │
│ Aaron     │ 61        │ 2009-09-16 00:00:00 │ Canada         │
│ Aaron     │ 116       │ 2010-05-17 00:00:00 │ Canada         │
│ Aaron     │ 245       │ 2011-12-22 00:00:00 │ Canada         │
│ Aaron     │ 268       │ 2012-03-25 00:00:00 │ Canada         │
│ Aaron     │ 290       │ 2012-06-27 00:00:00 │ Canada         │
│ Aaron     │ 342       │ 2013-02-15 00:00:00 │ Canada         │
│ Ellie     │ 27        │ 2009-04-22 00:00:00 │ Canada         │
│ Ellie     │ 148       │ 2010-10-14 00:00:00 │ Canada         │
│ Ellie     │ 159       │ 2010-11-24 00:00:00 │ Canada         │
│ Ellie     │ 214       │ 2011-07-25 00:00:00 │ Canada         │
│ Ellie     │ 343       │ 2013-02-28 00:00:00 │ Canada         │
│ Ellie     │ 366       │ 2013-06-02 00:00:00 │ Canada         │
│ Ellie     │ 388       │ 2013-09-04 00:00:00 │ Canada         │
│ João      │ 28        │ 2009-05-05 00:00:00 │ Portugal       │
│ João      │ 51        │ 2009-08-07 00:00:00 │ Portugal       │
│ João      │ 73        │ 2009-11-09 00:00:00 │ Portugal       │
│ João      │ 125       │ 2010-06-30 00:00:00 │ Portugal       │
│ João      │ 246       │ 2011-12-22 00:00:00 │ Portugal       │
│ João      │ 257       │ 2012-02-01 00:00:00 │ Portugal       │
│ João      │ 312       │ 2012-10-01 00:00:00 │ Portugal       │
│ Madalena  │ 126       │ 2010-07-13 00:00:00 │ Portugal       │
│ Madalena  │ 149       │ 2010-10-15 00:00:00 │ Portugal       │
│ Madalena  │ 171       │ 2011-01-17 00:00:00 │ Portugal       │
│ Madalena  │ 223       │ 2011-09-07 00:00:00 │ Portugal       │
│ Madalena  │ 344       │ 2013-02-28 00:00:00 │ Portugal       │
│ Madalena  │ 355       │ 2013-04-10 00:00:00 │ Portugal       │
│ Madalena  │ 410       │ 2013-12-09 00:00:00 │ Portugal       │
│ Hannah    │ 29        │ 2009-05-05 00:00:00 │ Germany        │
│ Hannah    │ 40        │ 2009-06-15 00:00:00 │ Germany        │
│ Hannah    │ 95        │ 2010-02-13 00:00:00 │ Germany        │
│ Hannah    │ 224       │ 2011-09-20 00:00:00 │ Germany        │
│ Hannah    │ 247       │ 2011-12-23 00:00:00 │ Germany        │
│ Hannah    │ 269       │ 2012-03-26 00:00:00 │ Germany        │
│ Hannah    │ 321       │ 2012-11-14 00:00:00 │ Germany        │
│ Fynn      │ 6         │ 2009-01-19 00:00:00 │ Germany        │
│ Fynn      │ 127       │ 2010-07-13 00:00:00 │ Germany        │
│ Fynn      │ 138       │ 2010-08-23 00:00:00 │ Germany        │
│ Fynn      │ 193       │ 2011-04-23 00:00:00 │ Germany        │
│ Fynn      │ 322       │ 2012-11-27 00:00:00 │ Germany        │
│ Fynn      │ 345       │ 2013-03-01 00:00:00 │ Germany        │
│ Fynn      │ 367       │ 2013-06-03 00:00:00 │ Germany        │
│ Niklas    │ 7         │ 2009-02-01 00:00:00 │ Germany        │
│ Niklas    │ 30        │ 2009-05-06 00:00:00 │ Germany        │
│ Niklas    │ 52        │ 2009-08-08 00:00:00 │ Germany        │
│ Niklas    │ 104       │ 2010-03-29 00:00:00 │ Germany        │
│ Niklas    │ 225       │ 2011-09-20 00:00:00 │ Germany        │
│ Niklas    │ 236       │ 2011-10-31 00:00:00 │ Germany        │
│ Niklas    │ 291       │ 2012-06-30 00:00:00 │ Germany        │
│ Camille   │ 105       │ 2010-04-11 00:00:00 │ France         │
│ Camille   │ 128       │ 2010-07-14 00:00:00 │ France         │
│ Camille   │ 150       │ 2010-10-16 00:00:00 │ France         │
│ Camille   │ 202       │ 2011-06-06 00:00:00 │ France         │
│ Camille   │ 323       │ 2012-11-27 00:00:00 │ France         │
│ Camille   │ 334       │ 2013-01-07 00:00:00 │ France         │
│ Camille   │ 389       │ 2013-09-07 00:00:00 │ France         │
│ Dominique │ 8         │ 2009-02-01 00:00:00 │ France         │
│ Dominique │ 19        │ 2009-03-14 00:00:00 │ France         │
│ Dominique │ 74        │ 2009-11-12 00:00:00 │ France         │
│ Dominique │ 203       │ 2011-06-19 00:00:00 │ France         │
│ Dominique │ 226       │ 2011-09-21 00:00:00 │ France         │
│ Dominique │ 248       │ 2011-12-24 00:00:00 │ France         │
│ Dominique │ 300       │ 2012-08-13 00:00:00 │ France         │
│ Marc      │ 106       │ 2010-04-11 00:00:00 │ France         │
│ Marc      │ 117       │ 2010-05-22 00:00:00 │ France         │
│ Marc      │ 172       │ 2011-01-20 00:00:00 │ France         │
│ Marc      │ 301       │ 2012-08-26 00:00:00 │ France         │
│ Marc      │ 324       │ 2012-11-28 00:00:00 │ France         │
│ Marc      │ 346       │ 2013-03-02 00:00:00 │ France         │
│ Marc      │ 398       │ 2013-10-21 00:00:00 │ France         │
│ Wyatt     │ 9         │ 2009-02-02 00:00:00 │ France         │
│ Wyatt     │ 31        │ 2009-05-07 00:00:00 │ France         │
│ Wyatt     │ 83        │ 2009-12-26 00:00:00 │ France         │
│ Wyatt     │ 204       │ 2011-06-19 00:00:00 │ France         │
│ Wyatt     │ 215       │ 2011-07-30 00:00:00 │ France         │
│ Wyatt     │ 270       │ 2012-03-29 00:00:00 │ France         │
│ Wyatt     │ 399       │ 2013-11-03 00:00:00 │ France         │
│ Isabelle  │ 84        │ 2010-01-08 00:00:00 │ France         │
│ Isabelle  │ 107       │ 2010-04-12 00:00:00 │ France         │
│ Isabelle  │ 129       │ 2010-07-15 00:00:00 │ France         │
│ Isabelle  │ 181       │ 2011-03-05 00:00:00 │ France         │
│ Isabelle  │ 302       │ 2012-08-26 00:00:00 │ France         │
│ Isabelle  │ 313       │ 2012-10-06 00:00:00 │ France         │
│ Isabelle  │ 368       │ 2013-06-06 00:00:00 │ France         │
│ Terhi     │ 53        │ 2009-08-11 00:00:00 │ Finland        │
│ Terhi     │ 182       │ 2011-03-18 00:00:00 │ Finland        │
│ Terhi     │ 205       │ 2011-06-20 00:00:00 │ Finland        │
│ Terhi     │ 227       │ 2011-09-22 00:00:00 │ Finland        │
│ Terhi     │ 279       │ 2012-05-12 00:00:00 │ Finland        │
│ Terhi     │ 400       │ 2013-11-03 00:00:00 │ Finland        │
│ Terhi     │ 411       │ 2013-12-14 00:00:00 │ Finland        │
│ Ladislav  │ 85        │ 2010-01-08 00:00:00 │ Hungary        │
│ Ladislav  │ 96        │ 2010-02-18 00:00:00 │ Hungary        │
│ Ladislav  │ 151       │ 2010-10-19 00:00:00 │ Hungary        │
│ Ladislav  │ 280       │ 2012-05-25 00:00:00 │ Hungary        │
│ Ladislav  │ 303       │ 2012-08-27 00:00:00 │ Hungary        │
│ Ladislav  │ 325       │ 2012-11-29 00:00:00 │ Hungary        │
│ Ladislav  │ 377       │ 2013-07-20 00:00:00 │ Hungary        │
│ Hugh      │ 10        │ 2009-02-03 00:00:00 │ Ireland        │
│ Hugh      │ 62        │ 2009-09-24 00:00:00 │ Ireland        │
│ Hugh      │ 183       │ 2011-03-18 00:00:00 │ Ireland        │
│ Hugh      │ 194       │ 2011-04-28 00:00:00 │ Ireland        │
│ Hugh      │ 249       │ 2011-12-27 00:00:00 │ Ireland        │
│ Hugh      │ 378       │ 2013-08-02 00:00:00 │ Ireland        │
│ Hugh      │ 401       │ 2013-11-04 00:00:00 │ Ireland        │
│ Lucas     │ 63        │ 2009-10-07 00:00:00 │ Italy          │
│ Lucas     │ 86        │ 2010-01-09 00:00:00 │ Italy          │
│ Lucas     │ 108       │ 2010-04-13 00:00:00 │ Italy          │
│ Lucas     │ 160       │ 2010-12-02 00:00:00 │ Italy          │
│ Lucas     │ 281       │ 2012-05-25 00:00:00 │ Italy          │
│ Lucas     │ 292       │ 2012-07-05 00:00:00 │ Italy          │
│ Lucas     │ 347       │ 2013-03-05 00:00:00 │ Italy          │
│ Johannes  │ 32        │ 2009-05-10 00:00:00 │ Netherlands    │
│ Johannes  │ 161       │ 2010-12-15 00:00:00 │ Netherlands    │
│ Johannes  │ 184       │ 2011-03-19 00:00:00 │ Netherlands    │
│ Johannes  │ 206       │ 2011-06-21 00:00:00 │ Netherlands    │
│ Johannes  │ 258       │ 2012-02-09 00:00:00 │ Netherlands    │
│ Johannes  │ 379       │ 2013-08-02 00:00:00 │ Netherlands    │
│ Johannes  │ 390       │ 2013-09-12 00:00:00 │ Netherlands    │
│ Stanisław │ 64        │ 2009-10-07 00:00:00 │ Poland         │
│ Stanisław │ 75        │ 2009-11-17 00:00:00 │ Poland         │
│ Stanisław │ 130       │ 2010-07-18 00:00:00 │ Poland         │
│ Stanisław │ 259       │ 2012-02-22 00:00:00 │ Poland         │
│ Stanisław │ 282       │ 2012-05-26 00:00:00 │ Poland         │
│ Stanisław │ 304       │ 2012-08-28 00:00:00 │ Poland         │
│ Stanisław │ 356       │ 2013-04-18 00:00:00 │ Poland         │
│ Enrique   │ 41        │ 2009-06-23 00:00:00 │ Spain          │
│ Enrique   │ 162       │ 2010-12-15 00:00:00 │ Spain          │
│ Enrique   │ 173       │ 2011-01-25 00:00:00 │ Spain          │
│ Enrique   │ 228       │ 2011-09-25 00:00:00 │ Spain          │
│ Enrique   │ 357       │ 2013-05-01 00:00:00 │ Spain          │
│ Enrique   │ 380       │ 2013-08-03 00:00:00 │ Spain          │
│ Enrique   │ 402       │ 2013-11-05 00:00:00 │ Spain          │
│ Joakim    │ 42        │ 2009-07-06 00:00:00 │ Sweden         │
│ Joakim    │ 65        │ 2009-10-08 00:00:00 │ Sweden         │
│ Joakim    │ 87        │ 2010-01-10 00:00:00 │ Sweden         │
│ Joakim    │ 139       │ 2010-08-31 00:00:00 │ Sweden         │
│ Joakim    │ 260       │ 2012-02-22 00:00:00 │ Sweden         │
│ Joakim    │ 271       │ 2012-04-03 00:00:00 │ Sweden         │
│ Joakim    │ 326       │ 2012-12-02 00:00:00 │ Sweden         │
│ Emma      │ 11        │ 2009-02-06 00:00:00 │ United Kingdom │
│ Emma      │ 140       │ 2010-09-13 00:00:00 │ United Kingdom │
│ Emma      │ 163       │ 2010-12-16 00:00:00 │ United Kingdom │
│ Emma      │ 185       │ 2011-03-20 00:00:00 │ United Kingdom │
│ Emma      │ 237       │ 2011-11-08 00:00:00 │ United Kingdom │
│ Emma      │ 358       │ 2013-05-01 00:00:00 │ United Kingdom │
│ Emma      │ 369       │ 2013-06-11 00:00:00 │ United Kingdom │
│ Phil      │ 43        │ 2009-07-06 00:00:00 │ United Kingdom │
│ Phil      │ 54        │ 2009-08-16 00:00:00 │ United Kingdom │
│ Phil      │ 109       │ 2010-04-16 00:00:00 │ United Kingdom │
│ Phil      │ 238       │ 2011-11-21 00:00:00 │ United Kingdom │
│ Phil      │ 261       │ 2012-02-23 00:00:00 │ United Kingdom │
│ Phil      │ 283       │ 2012-05-27 00:00:00 │ United Kingdom │
│ Phil      │ 335       │ 2013-01-15 00:00:00 │ United Kingdom │
│ Steve     │ 20        │ 2009-03-22 00:00:00 │ United Kingdom │
│ Steve     │ 141       │ 2010-09-13 00:00:00 │ United Kingdom │
│ Steve     │ 152       │ 2010-10-24 00:00:00 │ United Kingdom │
│ Steve     │ 207       │ 2011-06-24 00:00:00 │ United Kingdom │
│ Steve     │ 336       │ 2013-01-28 00:00:00 │ United Kingdom │
│ Steve     │ 359       │ 2013-05-02 00:00:00 │ United Kingdom │
│ Steve     │ 381       │ 2013-08-04 00:00:00 │ United Kingdom │
│ Mark      │ 21        │ 2009-04-04 00:00:00 │ Australia      │
│ Mark      │ 44        │ 2009-07-07 00:00:00 │ Australia      │
│ Mark      │ 66        │ 2009-10-09 00:00:00 │ Australia      │
│ Mark      │ 118       │ 2010-05-30 00:00:00 │ Australia      │
│ Mark      │ 239       │ 2011-11-21 00:00:00 │ Australia      │
│ Mark      │ 250       │ 2012-01-01 00:00:00 │ Australia      │
│ Mark      │ 305       │ 2012-08-31 00:00:00 │ Australia      │
│ Diego     │ 119       │ 2010-06-12 00:00:00 │ Argentina      │
│ Diego     │ 142       │ 2010-09-14 00:00:00 │ Argentina      │
│ Diego     │ 164       │ 2010-12-17 00:00:00 │ Argentina      │
│ Diego     │ 216       │ 2011-08-07 00:00:00 │ Argentina      │
│ Diego     │ 337       │ 2013-01-28 00:00:00 │ Argentina      │
│ Diego     │ 348       │ 2013-03-10 00:00:00 │ Argentina      │
│ Diego     │ 403       │ 2013-11-08 00:00:00 │ Argentina      │
│ Luis      │ 22        │ 2009-04-04 00:00:00 │ Chile          │
│ Luis      │ 33        │ 2009-05-15 00:00:00 │ Chile          │
│ Luis      │ 88        │ 2010-01-13 00:00:00 │ Chile          │
│ Luis      │ 217       │ 2011-08-20 00:00:00 │ Chile          │
│ Luis      │ 240       │ 2011-11-22 00:00:00 │ Chile          │
│ Luis      │ 262       │ 2012-02-24 00:00:00 │ Chile          │
│ Luis      │ 314       │ 2012-10-14 00:00:00 │ Chile          │
│ Manoj     │ 120       │ 2010-06-12 00:00:00 │ India          │
│ Manoj     │ 131       │ 2010-07-23 00:00:00 │ India          │
│ Manoj     │ 186       │ 2011-03-23 00:00:00 │ India          │
│ Manoj     │ 315       │ 2012-10-27 00:00:00 │ India          │
│ Manoj     │ 338       │ 2013-01-29 00:00:00 │ India          │
│ Manoj     │ 360       │ 2013-05-03 00:00:00 │ India          │
│ Manoj     │ 412       │ 2013-12-22 00:00:00 │ India          │
│ Puja      │ 23        │ 2009-04-05 00:00:00 │ India          │
│ Puja      │ 45        │ 2009-07-08 00:00:00 │ India          │
│ Puja      │ 97        │ 2010-02-26 00:00:00 │ India          │
│ Puja      │ 218       │ 2011-08-20 00:00:00 │ India          │
│ Puja      │ 229       │ 2011-09-30 00:00:00 │ India          │
│ Puja      │ 284       │ 2012-05-30 00:00:00 │ India          │
└───────────┴───────────┴─────────────────────┴────────────────┘
**/
-- Proporciona una consulta que muestre solo los empleados que son Agentes de Ventas.
select * from employees where Title='Sales Support Agent';
/**
EmployeeId  LastName  FirstName  Title                ReportsTo  BirthDate            HireDate             Address           City     State  Country  PostalCode  Phone              Fax                Email                   
----------  --------  ---------  -------------------  ---------  -------------------  -------------------  ----------------  -------  -----  -------  ----------  -----------------  -----------------  ------------------------
3           Peacock   Jane       Sales Support Agent  2          1973-08-29 00:00:00  2002-04-01 00:00:00  1111 6 Ave SW     Calgary  AB     Canada   T2P 5M5     +1 (403) 262-3443  +1 (403) 262-6712  jane@chinookcorp.com    
4           Park      Margaret   Sales Support Agent  2          1947-09-19 00:00:00  2003-05-03 00:00:00  683 10 Street SW  Calgary  AB     Canada   T2P 5G3     +1 (403) 263-4423  +1 (403) 263-4289  margaret@chinookcorp.com
5           Johnson   Steve      Sales Support Agent  2          1965-03-03 00:00:00  2003-10-17 00:00:00  7727B 41 Ave      Calgary  AB     Canada   T3B 1Y7     1 (780) 836-9987   1 (780) 836-9543   steve@chinookcorp.com   
**/

-- Proporciona una consulta que muestre una lista única de países de facturación de la tabla de Facturas.
select DISTINCT(BillingCountry) from Invoices;
/**
┌────────────────┐
│ BillingCountry │
├────────────────┤
│ Germany        │
│ Norway         │
│ Belgium        │
│ Canada         │
│ USA            │
│ France         │
│ Ireland        │
│ United Kingdom │
│ Australia      │
│ Chile          │
│ India          │
│ Brazil         │
│ Portugal       │
│ Netherlands    │
│ Spain          │
│ Sweden         │
│ Czech Republic │
│ Finland        │
│ Denmark        │
│ Italy          │
│ Poland         │
│ Austria        │
│ Hungary        │
│ Argentina      │
└────────────────┘
**/
-- Proporciona una consulta que muestre las facturas de clientes que son de Brasil.
select i.* from customers as c, invoices as i where c.CustomerId=i.CustomerId and c.Country='Brazil';
select i.* from customers as c INNER JOIN invoices as i ON c.CustomerId=i.CustomerId and c.Country='Brazil';
/**
┌───────────┬────────────┬─────────────────────┬─────────────────────────────────┬─────────────────────┬──────────────┬────────────────┬───────────────────┬───────┐
│ InvoiceId │ CustomerId │     InvoiceDate     │         BillingAddress          │     BillingCity     │ BillingState │ BillingCountry │ BillingPostalCode │ Total │
├───────────┼────────────┼─────────────────────┼─────────────────────────────────┼─────────────────────┼──────────────┼────────────────┼───────────────────┼───────┤
│ 98        │ 1          │ 2010-03-11 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.98  │
│ 121       │ 1          │ 2010-06-13 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.96  │
│ 143       │ 1          │ 2010-09-15 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 5.94  │
│ 195       │ 1          │ 2011-05-06 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 0.99  │
│ 316       │ 1          │ 2012-10-27 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 1.98  │
│ 327       │ 1          │ 2012-12-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 13.86 │
│ 382       │ 1          │ 2013-08-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 8.91  │
│ 25        │ 10         │ 2009-04-09 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 8.91  │
│ 154       │ 10         │ 2010-11-14 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │
│ 177       │ 10         │ 2011-02-16 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 3.96  │
│ 199       │ 10         │ 2011-05-21 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 5.94  │
│ 251       │ 10         │ 2012-01-09 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 0.99  │
│ 372       │ 10         │ 2013-07-02 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │
│ 383       │ 10         │ 2013-08-12 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 13.86 │
│ 57        │ 11         │ 2009-09-06 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │
│ 68        │ 11         │ 2009-10-17 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 13.86 │
│ 123       │ 11         │ 2010-06-17 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 8.91  │
│ 252       │ 11         │ 2012-01-22 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │
│ 275       │ 11         │ 2012-04-25 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 3.96  │
│ 297       │ 11         │ 2012-07-28 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 5.94  │
│ 349       │ 11         │ 2013-03-18 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 0.99  │
│ 34        │ 12         │ 2009-05-23 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 0.99  │
│ 155       │ 12         │ 2010-11-14 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │
│ 166       │ 12         │ 2010-12-25 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 13.86 │
│ 221       │ 12         │ 2011-08-25 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 8.91  │
│ 350       │ 12         │ 2013-03-31 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │
│ 373       │ 12         │ 2013-07-03 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 3.96  │
│ 395       │ 12         │ 2013-10-05 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 5.94  │
│ 35        │ 13         │ 2009-06-05 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │
│ 58        │ 13         │ 2009-09-07 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 3.96  │
│ 80        │ 13         │ 2009-12-10 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 5.94  │
│ 132       │ 13         │ 2010-07-31 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 0.99  │
│ 253       │ 13         │ 2012-01-22 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │
│ 264       │ 13         │ 2012-03-03 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 13.86 │
│ 319       │ 13         │ 2012-11-01 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 8.91  │
└───────────┴────────────┴─────────────────────┴─────────────────────────────────┴─────────────────────┴──────────────┴────────────────┴───────────────────┴───────┘
**/
-- Proporciona una consulta que muestre las facturas asociadas con cada agente de ventas. La tabla resultante debe incluir el nombre completo del Agente de Ventas.
select e.FirstName, i.* from customers as c, invoices as i, employees as e where e.EmployeeId=c.SupportRepid and c.CustomerId=i.CustomerId;
select e.FirstName, i.* from customers as c INNER JOIN employees as e, invoices as i ON e.EmployeeId=c.SupportRepid and c.CustomerId=i.CustomerId;
/**
┌───────────┬───────────┬────────────┬─────────────────────┬──────────────────────────────────────────┬─────────────────────┬──────────────┬────────────────┬───────────────────┬───────┐
│ FirstName │ InvoiceId │ CustomerId │     InvoiceDate     │              BillingAddress              │     BillingCity     │ BillingState │ BillingCountry │ BillingPostalCode │ Total │
├───────────┼───────────┼────────────┼─────────────────────┼──────────────────────────────────────────┼─────────────────────┼──────────────┼────────────────┼───────────────────┼───────┤
│ Jane      │ 98        │ 1          │ 2010-03-11 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.98  │
│ Jane      │ 121       │ 1          │ 2010-06-13 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.96  │
│ Jane      │ 143       │ 1          │ 2010-09-15 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 5.94  │
│ Jane      │ 195       │ 1          │ 2011-05-06 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 0.99  │
│ Jane      │ 316       │ 1          │ 2012-10-27 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 1.98  │
│ Jane      │ 327       │ 1          │ 2012-12-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 13.86 │
│ Jane      │ 382       │ 1          │ 2013-08-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 8.91  │
│ Jane      │ 99        │ 3          │ 2010-03-11 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 3.98  │
│ Jane      │ 110       │ 3          │ 2010-04-21 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 13.86 │
│ Jane      │ 165       │ 3          │ 2010-12-20 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 8.91  │
│ Jane      │ 294       │ 3          │ 2012-07-26 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 1.98  │
│ Jane      │ 317       │ 3          │ 2012-10-28 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 3.96  │
│ Jane      │ 339       │ 3          │ 2013-01-30 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 5.94  │
│ Jane      │ 391       │ 3          │ 2013-09-20 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 0.99  │
│ Jane      │ 34        │ 12         │ 2009-05-23 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 0.99  │
│ Jane      │ 155       │ 12         │ 2010-11-14 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │
│ Jane      │ 166       │ 12         │ 2010-12-25 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 13.86 │
│ Jane      │ 221       │ 12         │ 2011-08-25 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 8.91  │
│ Jane      │ 350       │ 12         │ 2013-03-31 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │
│ Jane      │ 373       │ 12         │ 2013-07-03 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 3.96  │
│ Jane      │ 395       │ 12         │ 2013-10-05 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 5.94  │
│ Jane      │ 36        │ 15         │ 2009-06-05 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 1.98  │
│ Jane      │ 47        │ 15         │ 2009-07-16 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 13.86 │
│ Jane      │ 102       │ 15         │ 2010-03-16 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 9.91  │
│ Jane      │ 231       │ 15         │ 2011-10-21 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 1.98  │
│ Jane      │ 254       │ 15         │ 2012-01-23 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 3.96  │
│ Jane      │ 276       │ 15         │ 2012-04-26 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 5.94  │
│ Jane      │ 328       │ 15         │ 2012-12-15 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 0.99  │
│ Jane      │ 112       │ 18         │ 2010-05-12 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 1.98  │
│ Jane      │ 135       │ 18         │ 2010-08-14 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 3.96  │
│ Jane      │ 157       │ 18         │ 2010-11-16 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 5.94  │
│ Jane      │ 209       │ 18         │ 2011-07-07 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 0.99  │
│ Jane      │ 330       │ 18         │ 2012-12-28 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 1.98  │
│ Jane      │ 341       │ 18         │ 2013-02-07 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 13.86 │
│ Jane      │ 396       │ 18         │ 2013-10-08 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 8.91  │
│ Jane      │ 15        │ 19         │ 2009-03-04 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 1.98  │
│ Jane      │ 26        │ 19         │ 2009-04-14 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 13.86 │
│ Jane      │ 81        │ 19         │ 2009-12-13 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 8.91  │
│ Jane      │ 210       │ 19         │ 2011-07-20 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 1.98  │
│ Jane      │ 233       │ 19         │ 2011-10-22 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 3.96  │
│ Jane      │ 255       │ 19         │ 2012-01-24 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 5.94  │
│ Jane      │ 307       │ 19         │ 2012-09-13 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 1.99  │
│ Jane      │ 92        │ 24         │ 2010-02-08 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 1.98  │
│ Jane      │ 103       │ 24         │ 2010-03-21 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 15.86 │
│ Jane      │ 158       │ 24         │ 2010-11-19 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 8.91  │
│ Jane      │ 287       │ 24         │ 2012-06-25 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 1.98  │
│ Jane      │ 310       │ 24         │ 2012-09-27 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 7.96  │
│ Jane      │ 332       │ 24         │ 2012-12-30 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 5.94  │
│ Jane      │ 384       │ 24         │ 2013-08-20 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 0.99  │
│ Jane      │ 48        │ 29         │ 2009-07-24 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 0.99  │
│ Jane      │ 169       │ 29         │ 2011-01-15 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 1.98  │
│ Jane      │ 180       │ 29         │ 2011-02-25 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 13.86 │
│ Jane      │ 235       │ 29         │ 2011-10-26 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 8.91  │
│ Jane      │ 364       │ 29         │ 2013-06-01 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 1.98  │
│ Jane      │ 387       │ 29         │ 2013-09-03 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 3.96  │
│ Jane      │ 409       │ 29         │ 2013-12-06 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 5.94  │
│ Jane      │ 49        │ 30         │ 2009-08-06 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 1.98  │
│ Jane      │ 72        │ 30         │ 2009-11-08 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 3.96  │
│ Jane      │ 94        │ 30         │ 2010-02-10 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 5.94  │
│ Jane      │ 146       │ 30         │ 2010-10-01 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 0.99  │
│ Jane      │ 267       │ 30         │ 2012-03-24 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 1.98  │
│ Jane      │ 278       │ 30         │ 2012-05-04 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 13.86 │
│ Jane      │ 333       │ 30         │ 2013-01-02 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 8.91  │
│ Jane      │ 27        │ 33         │ 2009-04-22 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 0.99  │
│ Jane      │ 148       │ 33         │ 2010-10-14 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 1.98  │
│ Jane      │ 159       │ 33         │ 2010-11-24 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 13.86 │
│ Jane      │ 214       │ 33         │ 2011-07-25 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 8.91  │
│ Jane      │ 343       │ 33         │ 2013-02-28 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 1.98  │
│ Jane      │ 366       │ 33         │ 2013-06-02 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 3.96  │
│ Jane      │ 388       │ 33         │ 2013-09-04 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 5.94  │
│ Jane      │ 6         │ 37         │ 2009-01-19 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 0.99  │
│ Jane      │ 127       │ 37         │ 2010-07-13 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 1.98  │
│ Jane      │ 138       │ 37         │ 2010-08-23 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 13.86 │
│ Jane      │ 193       │ 37         │ 2011-04-23 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 14.91 │
│ Jane      │ 322       │ 37         │ 2012-11-27 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 1.98  │
│ Jane      │ 345       │ 37         │ 2013-03-01 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 3.96  │
│ Jane      │ 367       │ 37         │ 2013-06-03 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 5.94  │
│ Jane      │ 7         │ 38         │ 2009-02-01 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 1.98  │
│ Jane      │ 30        │ 38         │ 2009-05-06 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 3.96  │
│ Jane      │ 52        │ 38         │ 2009-08-08 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 5.94  │
│ Jane      │ 104       │ 38         │ 2010-03-29 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 0.99  │
│ Jane      │ 225       │ 38         │ 2011-09-20 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 1.98  │
│ Jane      │ 236       │ 38         │ 2011-10-31 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 13.86 │
│ Jane      │ 291       │ 38         │ 2012-06-30 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 8.91  │
│ Jane      │ 9         │ 42         │ 2009-02-02 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 3.96  │
│ Jane      │ 31        │ 42         │ 2009-05-07 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 5.94  │
│ Jane      │ 83        │ 42         │ 2009-12-26 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 0.99  │
│ Jane      │ 204       │ 42         │ 2011-06-19 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 3.98  │
│ Jane      │ 215       │ 42         │ 2011-07-30 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 13.86 │
│ Jane      │ 270       │ 42         │ 2012-03-29 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 8.91  │
│ Jane      │ 399       │ 42         │ 2013-11-03 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 1.98  │
│ Jane      │ 84        │ 43         │ 2010-01-08 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 1.98  │
│ Jane      │ 107       │ 43         │ 2010-04-12 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 3.96  │
│ Jane      │ 129       │ 43         │ 2010-07-15 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 5.94  │
│ Jane      │ 181       │ 43         │ 2011-03-05 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 0.99  │
│ Jane      │ 302       │ 43         │ 2012-08-26 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 1.98  │
│ Jane      │ 313       │ 43         │ 2012-10-06 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 16.86 │
│ Jane      │ 368       │ 43         │ 2013-06-06 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 8.91  │
│ Jane      │ 53        │ 44         │ 2009-08-11 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 8.91  │
│ Jane      │ 182       │ 44         │ 2011-03-18 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 1.98  │
│ Jane      │ 205       │ 44         │ 2011-06-20 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 7.96  │
│ Jane      │ 227       │ 44         │ 2011-09-22 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 5.94  │
│ Jane      │ 279       │ 44         │ 2012-05-12 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 0.99  │
│ Jane      │ 400       │ 44         │ 2013-11-03 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 1.98  │
│ Jane      │ 411       │ 44         │ 2013-12-14 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 13.86 │
│ Jane      │ 85        │ 45         │ 2010-01-08 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 1.98  │
│ Jane      │ 96        │ 45         │ 2010-02-18 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 21.86 │
│ Jane      │ 151       │ 45         │ 2010-10-19 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 8.91  │
│ Jane      │ 280       │ 45         │ 2012-05-25 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 1.98  │
│ Jane      │ 303       │ 45         │ 2012-08-27 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 3.96  │
│ Jane      │ 325       │ 45         │ 2012-11-29 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 5.94  │
│ Jane      │ 377       │ 45         │ 2013-07-20 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 0.99  │
│ Jane      │ 10        │ 46         │ 2009-02-03 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 5.94  │
│ Jane      │ 62        │ 46         │ 2009-09-24 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 0.99  │
│ Jane      │ 183       │ 46         │ 2011-03-18 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 1.98  │
│ Jane      │ 194       │ 46         │ 2011-04-28 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 21.86 │
│ Jane      │ 249       │ 46         │ 2011-12-27 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 8.91  │
│ Jane      │ 378       │ 46         │ 2013-08-02 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 1.98  │
│ Jane      │ 401       │ 46         │ 2013-11-04 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 3.96  │
│ Jane      │ 11        │ 52         │ 2009-02-06 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 8.91  │
│ Jane      │ 140       │ 52         │ 2010-09-13 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 1.98  │
│ Jane      │ 163       │ 52         │ 2010-12-16 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 3.96  │
│ Jane      │ 185       │ 52         │ 2011-03-20 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 5.94  │
│ Jane      │ 237       │ 52         │ 2011-11-08 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 0.99  │
│ Jane      │ 358       │ 52         │ 2013-05-01 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 1.98  │
│ Jane      │ 369       │ 52         │ 2013-06-11 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 13.86 │
│ Jane      │ 43        │ 53         │ 2009-07-06 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 1.98  │
│ Jane      │ 54        │ 53         │ 2009-08-16 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 13.86 │
│ Jane      │ 109       │ 53         │ 2010-04-16 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 8.91  │
│ Jane      │ 238       │ 53         │ 2011-11-21 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 1.98  │
│ Jane      │ 261       │ 53         │ 2012-02-23 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 3.96  │
│ Jane      │ 283       │ 53         │ 2012-05-27 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 5.94  │
│ Jane      │ 335       │ 53         │ 2013-01-15 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 0.99  │
│ Jane      │ 120       │ 58         │ 2010-06-12 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 1.98  │
│ Jane      │ 131       │ 58         │ 2010-07-23 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 13.86 │
│ Jane      │ 186       │ 58         │ 2011-03-23 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 8.91  │
│ Jane      │ 315       │ 58         │ 2012-10-27 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 1.98  │
│ Jane      │ 338       │ 58         │ 2013-01-29 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 3.96  │
│ Jane      │ 360       │ 58         │ 2013-05-03 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 5.94  │
│ Jane      │ 412       │ 58         │ 2013-12-22 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 1.99  │
│ Jane      │ 23        │ 59         │ 2009-04-05 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 3.96  │
│ Jane      │ 45        │ 59         │ 2009-07-08 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 5.94  │
│ Jane      │ 97        │ 59         │ 2010-02-26 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 1.99  │
│ Jane      │ 218       │ 59         │ 2011-08-20 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 1.98  │
│ Jane      │ 229       │ 59         │ 2011-09-30 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 13.86 │
│ Jane      │ 284       │ 59         │ 2012-05-30 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 8.91  │
│ Margaret  │ 2         │ 4          │ 2009-01-02 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 3.96  │
│ Margaret  │ 24        │ 4          │ 2009-04-06 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 5.94  │
│ Margaret  │ 76        │ 4          │ 2009-11-25 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 0.99  │
│ Margaret  │ 197       │ 4          │ 2011-05-19 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 1.98  │
│ Margaret  │ 208       │ 4          │ 2011-06-29 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 15.86 │
│ Margaret  │ 263       │ 4          │ 2012-02-27 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 8.91  │
│ Margaret  │ 392       │ 4          │ 2013-10-03 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 1.98  │
│ Margaret  │ 77        │ 5          │ 2009-12-08 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 1.98  │
│ Margaret  │ 100       │ 5          │ 2010-03-12 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 3.96  │
│ Margaret  │ 122       │ 5          │ 2010-06-14 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 5.94  │
│ Margaret  │ 174       │ 5          │ 2011-02-02 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 0.99  │
│ Margaret  │ 295       │ 5          │ 2012-07-26 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 1.98  │
│ Margaret  │ 306       │ 5          │ 2012-09-05 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 16.86 │
│ Margaret  │ 361       │ 5          │ 2013-05-06 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 8.91  │
│ Margaret  │ 3         │ 8          │ 2009-01-03 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 5.94  │
│ Margaret  │ 55        │ 8          │ 2009-08-24 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 0.99  │
│ Margaret  │ 176       │ 8          │ 2011-02-15 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 1.98  │
│ Margaret  │ 187       │ 8          │ 2011-03-28 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 13.86 │
│ Margaret  │ 242       │ 8          │ 2011-11-26 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 8.91  │
│ Margaret  │ 371       │ 8          │ 2013-07-02 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 1.98  │
│ Margaret  │ 394       │ 8          │ 2013-10-04 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 3.96  │
│ Margaret  │ 56        │ 9          │ 2009-09-06 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 1.98  │
│ Margaret  │ 79        │ 9          │ 2009-12-09 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 3.96  │
│ Margaret  │ 101       │ 9          │ 2010-03-13 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 5.94  │
│ Margaret  │ 153       │ 9          │ 2010-11-01 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 0.99  │
│ Margaret  │ 274       │ 9          │ 2012-04-24 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 1.98  │
│ Margaret  │ 285       │ 9          │ 2012-06-04 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 13.86 │
│ Margaret  │ 340       │ 9          │ 2013-02-02 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 8.91  │
│ Margaret  │ 25        │ 10         │ 2009-04-09 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 8.91  │
│ Margaret  │ 154       │ 10         │ 2010-11-14 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │
│ Margaret  │ 177       │ 10         │ 2011-02-16 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 3.96  │
│ Margaret  │ 199       │ 10         │ 2011-05-21 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 5.94  │
│ Margaret  │ 251       │ 10         │ 2012-01-09 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 0.99  │
│ Margaret  │ 372       │ 10         │ 2013-07-02 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │
│ Margaret  │ 383       │ 10         │ 2013-08-12 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 13.86 │
│ Margaret  │ 35        │ 13         │ 2009-06-05 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │
│ Margaret  │ 58        │ 13         │ 2009-09-07 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 3.96  │
│ Margaret  │ 80        │ 13         │ 2009-12-10 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 5.94  │
│ Margaret  │ 132       │ 13         │ 2010-07-31 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 0.99  │
│ Margaret  │ 253       │ 13         │ 2012-01-22 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │
│ Margaret  │ 264       │ 13         │ 2012-03-03 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 13.86 │
│ Margaret  │ 319       │ 13         │ 2012-11-01 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 8.91  │
│ Margaret  │ 13        │ 16         │ 2009-02-19 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 0.99  │
│ Margaret  │ 134       │ 16         │ 2010-08-13 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 1.98  │
│ Margaret  │ 145       │ 16         │ 2010-09-23 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 13.86 │
│ Margaret  │ 200       │ 16         │ 2011-05-24 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 8.91  │
│ Margaret  │ 329       │ 16         │ 2012-12-28 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 1.98  │
│ Margaret  │ 352       │ 16         │ 2013-04-01 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 3.96  │
│ Margaret  │ 374       │ 16         │ 2013-07-04 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 5.94  │
│ Margaret  │ 113       │ 20         │ 2010-05-12 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 1.98  │
│ Margaret  │ 124       │ 20         │ 2010-06-22 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 13.86 │
│ Margaret  │ 179       │ 20         │ 2011-02-20 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 8.91  │
│ Margaret  │ 308       │ 20         │ 2012-09-26 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 3.98  │
│ Margaret  │ 331       │ 20         │ 2012-12-29 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 3.96  │
│ Margaret  │ 353       │ 20         │ 2013-04-02 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 5.94  │
│ Margaret  │ 405       │ 20         │ 2013-11-21 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 0.99  │
│ Margaret  │ 91        │ 22         │ 2010-02-08 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 1.98  │
│ Margaret  │ 114       │ 22         │ 2010-05-13 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 3.96  │
│ Margaret  │ 136       │ 22         │ 2010-08-15 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 5.94  │
│ Margaret  │ 188       │ 22         │ 2011-04-05 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 0.99  │
│ Margaret  │ 309       │ 22         │ 2012-09-26 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 3.98  │
│ Margaret  │ 320       │ 22         │ 2012-11-06 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 13.86 │
│ Margaret  │ 375       │ 22         │ 2013-07-07 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 8.91  │
│ Margaret  │ 5         │ 23         │ 2009-01-11 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 13.86 │
│ Margaret  │ 60        │ 23         │ 2009-09-11 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 8.91  │
│ Margaret  │ 189       │ 23         │ 2011-04-18 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 1.98  │
│ Margaret  │ 212       │ 23         │ 2011-07-21 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 3.96  │
│ Margaret  │ 234       │ 23         │ 2011-10-23 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 5.94  │
│ Margaret  │ 286       │ 23         │ 2012-06-12 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 0.99  │
│ Margaret  │ 407       │ 23         │ 2013-12-04 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 1.98  │
│ Margaret  │ 70        │ 26         │ 2009-11-07 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 1.98  │
│ Margaret  │ 93        │ 26         │ 2010-02-09 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 3.96  │
│ Margaret  │ 115       │ 26         │ 2010-05-14 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 5.94  │
│ Margaret  │ 167       │ 26         │ 2011-01-02 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 0.99  │
│ Margaret  │ 288       │ 26         │ 2012-06-25 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 1.98  │
│ Margaret  │ 299       │ 26         │ 2012-08-05 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 23.86 │
│ Margaret  │ 354       │ 26         │ 2013-04-05 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 8.91  │
│ Margaret  │ 39        │ 27         │ 2009-06-10 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 8.91  │
│ Margaret  │ 168       │ 27         │ 2011-01-15 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 1.98  │
│ Margaret  │ 191       │ 27         │ 2011-04-19 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 3.96  │
│ Margaret  │ 213       │ 27         │ 2011-07-22 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 5.94  │
│ Margaret  │ 265       │ 27         │ 2012-03-11 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 0.99  │
│ Margaret  │ 386       │ 27         │ 2013-09-02 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 1.98  │
│ Margaret  │ 397       │ 27         │ 2013-10-13 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 13.86 │
│ Margaret  │ 50        │ 32         │ 2009-08-06 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 1.98  │
│ Margaret  │ 61        │ 32         │ 2009-09-16 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 13.86 │
│ Margaret  │ 116       │ 32         │ 2010-05-17 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 8.91  │
│ Margaret  │ 245       │ 32         │ 2011-12-22 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 1.98  │
│ Margaret  │ 268       │ 32         │ 2012-03-25 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 3.96  │
│ Margaret  │ 290       │ 32         │ 2012-06-27 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 5.94  │
│ Margaret  │ 342       │ 32         │ 2013-02-15 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 0.99  │
│ Margaret  │ 28        │ 34         │ 2009-05-05 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 1.98  │
│ Margaret  │ 51        │ 34         │ 2009-08-07 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 3.96  │
│ Margaret  │ 73        │ 34         │ 2009-11-09 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 5.94  │
│ Margaret  │ 125       │ 34         │ 2010-06-30 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 0.99  │
│ Margaret  │ 246       │ 34         │ 2011-12-22 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 1.98  │
│ Margaret  │ 257       │ 34         │ 2012-02-01 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 13.86 │
│ Margaret  │ 312       │ 34         │ 2012-10-01 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 10.91 │
│ Margaret  │ 126       │ 35         │ 2010-07-13 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 1.98  │
│ Margaret  │ 149       │ 35         │ 2010-10-15 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 3.96  │
│ Margaret  │ 171       │ 35         │ 2011-01-17 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 5.94  │
│ Margaret  │ 223       │ 35         │ 2011-09-07 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 0.99  │
│ Margaret  │ 344       │ 35         │ 2013-02-28 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 1.98  │
│ Margaret  │ 355       │ 35         │ 2013-04-10 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 13.86 │
│ Margaret  │ 410       │ 35         │ 2013-12-09 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 8.91  │
│ Margaret  │ 105       │ 39         │ 2010-04-11 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 1.98  │
│ Margaret  │ 128       │ 39         │ 2010-07-14 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 3.96  │
│ Margaret  │ 150       │ 39         │ 2010-10-16 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 5.94  │
│ Margaret  │ 202       │ 39         │ 2011-06-06 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 1.99  │
│ Margaret  │ 323       │ 39         │ 2012-11-27 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 1.98  │
│ Margaret  │ 334       │ 39         │ 2013-01-07 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 13.86 │
│ Margaret  │ 389       │ 39         │ 2013-09-07 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 8.91  │
│ Margaret  │ 8         │ 40         │ 2009-02-01 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 1.98  │
│ Margaret  │ 19        │ 40         │ 2009-03-14 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 13.86 │
│ Margaret  │ 74        │ 40         │ 2009-11-12 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 8.91  │
│ Margaret  │ 203       │ 40         │ 2011-06-19 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 2.98  │
│ Margaret  │ 226       │ 40         │ 2011-09-21 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 3.96  │
│ Margaret  │ 248       │ 40         │ 2011-12-24 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 5.94  │
│ Margaret  │ 300       │ 40         │ 2012-08-13 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 0.99  │
│ Margaret  │ 64        │ 49         │ 2009-10-07 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 1.98  │
│ Margaret  │ 75        │ 49         │ 2009-11-17 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 13.86 │
│ Margaret  │ 130       │ 49         │ 2010-07-18 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 8.91  │
│ Margaret  │ 259       │ 49         │ 2012-02-22 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 1.98  │
│ Margaret  │ 282       │ 49         │ 2012-05-26 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 3.96  │
│ Margaret  │ 304       │ 49         │ 2012-08-28 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 5.94  │
│ Margaret  │ 356       │ 49         │ 2013-04-18 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 0.99  │
│ Margaret  │ 21        │ 55         │ 2009-04-04 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 1.98  │
│ Margaret  │ 44        │ 55         │ 2009-07-07 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 3.96  │
│ Margaret  │ 66        │ 55         │ 2009-10-09 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 5.94  │
│ Margaret  │ 118       │ 55         │ 2010-05-30 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 0.99  │
│ Margaret  │ 239       │ 55         │ 2011-11-21 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 1.98  │
│ Margaret  │ 250       │ 55         │ 2012-01-01 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 13.86 │
│ Margaret  │ 305       │ 55         │ 2012-08-31 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 8.91  │
│ Margaret  │ 119       │ 56         │ 2010-06-12 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 1.98  │
│ Margaret  │ 142       │ 56         │ 2010-09-14 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 3.96  │
│ Margaret  │ 164       │ 56         │ 2010-12-17 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 5.94  │
│ Margaret  │ 216       │ 56         │ 2011-08-07 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 0.99  │
│ Margaret  │ 337       │ 56         │ 2013-01-28 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 1.98  │
│ Margaret  │ 348       │ 56         │ 2013-03-10 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 13.86 │
│ Margaret  │ 403       │ 56         │ 2013-11-08 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 8.91  │
│ Steve     │ 1         │ 2          │ 2009-01-01 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 1.98  │
│ Steve     │ 12        │ 2          │ 2009-02-11 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 13.86 │
│ Steve     │ 67        │ 2          │ 2009-10-12 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 8.91  │
│ Steve     │ 196       │ 2          │ 2011-05-19 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 1.98  │
│ Steve     │ 219       │ 2          │ 2011-08-21 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 3.96  │
│ Steve     │ 241       │ 2          │ 2011-11-23 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 5.94  │
│ Steve     │ 293       │ 2          │ 2012-07-13 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 0.99  │
│ Steve     │ 46        │ 6          │ 2009-07-11 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 8.91  │
│ Steve     │ 175       │ 6          │ 2011-02-15 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 1.98  │
│ Steve     │ 198       │ 6          │ 2011-05-20 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 3.96  │
│ Steve     │ 220       │ 6          │ 2011-08-22 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 5.94  │
│ Steve     │ 272       │ 6          │ 2012-04-11 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 0.99  │
│ Steve     │ 393       │ 6          │ 2013-10-03 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 1.98  │
│ Steve     │ 404       │ 6          │ 2013-11-13 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 25.86 │
│ Steve     │ 78        │ 7          │ 2009-12-08 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 1.98  │
│ Steve     │ 89        │ 7          │ 2010-01-18 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 18.86 │
│ Steve     │ 144       │ 7          │ 2010-09-18 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 8.91  │
│ Steve     │ 273       │ 7          │ 2012-04-24 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 1.98  │
│ Steve     │ 296       │ 7          │ 2012-07-27 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 3.96  │
│ Steve     │ 318       │ 7          │ 2012-10-29 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 5.94  │
│ Steve     │ 370       │ 7          │ 2013-06-19 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 0.99  │
│ Steve     │ 57        │ 11         │ 2009-09-06 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │
│ Steve     │ 68        │ 11         │ 2009-10-17 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 13.86 │
│ Steve     │ 123       │ 11         │ 2010-06-17 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 8.91  │
│ Steve     │ 252       │ 11         │ 2012-01-22 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │
│ Steve     │ 275       │ 11         │ 2012-04-25 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 3.96  │
│ Steve     │ 297       │ 11         │ 2012-07-28 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 5.94  │
│ Steve     │ 349       │ 11         │ 2013-03-18 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 0.99  │
│ Steve     │ 4         │ 14         │ 2009-01-06 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 8.91  │
│ Steve     │ 133       │ 14         │ 2010-08-13 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 1.98  │
│ Steve     │ 156       │ 14         │ 2010-11-15 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 3.96  │
│ Steve     │ 178       │ 14         │ 2011-02-17 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 5.94  │
│ Steve     │ 230       │ 14         │ 2011-10-08 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 0.99  │
│ Steve     │ 351       │ 14         │ 2013-03-31 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 1.98  │
│ Steve     │ 362       │ 14         │ 2013-05-11 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 13.86 │
│ Steve     │ 14        │ 17         │ 2009-03-04 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 1.98  │
│ Steve     │ 37        │ 17         │ 2009-06-06 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 3.96  │
│ Steve     │ 59        │ 17         │ 2009-09-08 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 5.94  │
│ Steve     │ 111       │ 17         │ 2010-04-29 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 0.99  │
│ Steve     │ 232       │ 17         │ 2011-10-21 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 1.98  │
│ Steve     │ 243       │ 17         │ 2011-12-01 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 13.86 │
│ Steve     │ 298       │ 17         │ 2012-07-31 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 10.91 │
│ Steve     │ 16        │ 21         │ 2009-03-05 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 3.96  │
│ Steve     │ 38        │ 21         │ 2009-06-07 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 5.94  │
│ Steve     │ 90        │ 21         │ 2010-01-26 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 0.99  │
│ Steve     │ 211       │ 21         │ 2011-07-20 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 1.98  │
│ Steve     │ 222       │ 21         │ 2011-08-30 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 13.86 │
│ Steve     │ 277       │ 21         │ 2012-04-29 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 8.91  │
│ Steve     │ 406       │ 21         │ 2013-12-04 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 1.98  │
│ Steve     │ 17        │ 25         │ 2009-03-06 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 5.94  │
│ Steve     │ 69        │ 25         │ 2009-10-25 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 0.99  │
│ Steve     │ 190       │ 25         │ 2011-04-18 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 1.98  │
│ Steve     │ 201       │ 25         │ 2011-05-29 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 18.86 │
│ Steve     │ 256       │ 25         │ 2012-01-27 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 8.91  │
│ Steve     │ 385       │ 25         │ 2013-09-02 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 1.98  │
│ Steve     │ 408       │ 25         │ 2013-12-05 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 3.96  │
│ Steve     │ 71        │ 28         │ 2009-11-07 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 1.98  │
│ Steve     │ 82        │ 28         │ 2009-12-18 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 13.86 │
│ Steve     │ 137       │ 28         │ 2010-08-18 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 8.91  │
│ Steve     │ 266       │ 28         │ 2012-03-24 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 1.98  │
│ Steve     │ 289       │ 28         │ 2012-06-26 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 3.96  │
│ Steve     │ 311       │ 28         │ 2012-09-28 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 11.94 │
│ Steve     │ 363       │ 28         │ 2013-05-19 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 0.99  │
│ Steve     │ 18        │ 31         │ 2009-03-09 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 8.91  │
│ Steve     │ 147       │ 31         │ 2010-10-14 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 1.98  │
│ Steve     │ 170       │ 31         │ 2011-01-16 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 3.96  │
│ Steve     │ 192       │ 31         │ 2011-04-20 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 5.94  │
│ Steve     │ 244       │ 31         │ 2011-12-09 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 0.99  │
│ Steve     │ 365       │ 31         │ 2013-06-01 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 1.98  │
│ Steve     │ 376       │ 31         │ 2013-07-12 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 13.86 │
│ Steve     │ 29        │ 36         │ 2009-05-05 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 1.98  │
│ Steve     │ 40        │ 36         │ 2009-06-15 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 13.86 │
│ Steve     │ 95        │ 36         │ 2010-02-13 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 8.91  │
│ Steve     │ 224       │ 36         │ 2011-09-20 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 1.98  │
│ Steve     │ 247       │ 36         │ 2011-12-23 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 3.96  │
│ Steve     │ 269       │ 36         │ 2012-03-26 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 5.94  │
│ Steve     │ 321       │ 36         │ 2012-11-14 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 0.99  │
│ Steve     │ 106       │ 41         │ 2010-04-11 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 1.98  │
│ Steve     │ 117       │ 41         │ 2010-05-22 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 13.86 │
│ Steve     │ 172       │ 41         │ 2011-01-20 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 8.91  │
│ Steve     │ 301       │ 41         │ 2012-08-26 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 1.98  │
│ Steve     │ 324       │ 41         │ 2012-11-28 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 3.96  │
│ Steve     │ 346       │ 41         │ 2013-03-02 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 5.94  │
│ Steve     │ 398       │ 41         │ 2013-10-21 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 0.99  │
│ Steve     │ 63        │ 47         │ 2009-10-07 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 1.98  │
│ Steve     │ 86        │ 47         │ 2010-01-09 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 3.96  │
│ Steve     │ 108       │ 47         │ 2010-04-13 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 5.94  │
│ Steve     │ 160       │ 47         │ 2010-12-02 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 0.99  │
│ Steve     │ 281       │ 47         │ 2012-05-25 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 1.98  │
│ Steve     │ 292       │ 47         │ 2012-07-05 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 13.86 │
│ Steve     │ 347       │ 47         │ 2013-03-05 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 8.91  │
│ Steve     │ 32        │ 48         │ 2009-05-10 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 8.91  │
│ Steve     │ 161       │ 48         │ 2010-12-15 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 1.98  │
│ Steve     │ 184       │ 48         │ 2011-03-19 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 3.96  │
│ Steve     │ 206       │ 48         │ 2011-06-21 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 8.94  │
│ Steve     │ 258       │ 48         │ 2012-02-09 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 0.99  │
│ Steve     │ 379       │ 48         │ 2013-08-02 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 1.98  │
│ Steve     │ 390       │ 48         │ 2013-09-12 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 13.86 │
│ Steve     │ 41        │ 50         │ 2009-06-23 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 0.99  │
│ Steve     │ 162       │ 50         │ 2010-12-15 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 1.98  │
│ Steve     │ 173       │ 50         │ 2011-01-25 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 13.86 │
│ Steve     │ 228       │ 50         │ 2011-09-25 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 8.91  │
│ Steve     │ 357       │ 50         │ 2013-05-01 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 1.98  │
│ Steve     │ 380       │ 50         │ 2013-08-03 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 3.96  │
│ Steve     │ 402       │ 50         │ 2013-11-05 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 5.94  │
│ Steve     │ 42        │ 51         │ 2009-07-06 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 1.98  │
│ Steve     │ 65        │ 51         │ 2009-10-08 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 3.96  │
│ Steve     │ 87        │ 51         │ 2010-01-10 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 6.94  │
│ Steve     │ 139       │ 51         │ 2010-08-31 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 0.99  │
│ Steve     │ 260       │ 51         │ 2012-02-22 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 1.98  │
│ Steve     │ 271       │ 51         │ 2012-04-03 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 13.86 │
│ Steve     │ 326       │ 51         │ 2012-12-02 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 8.91  │
│ Steve     │ 20        │ 54         │ 2009-03-22 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 0.99  │
│ Steve     │ 141       │ 54         │ 2010-09-13 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 1.98  │
│ Steve     │ 152       │ 54         │ 2010-10-24 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 13.86 │
│ Steve     │ 207       │ 54         │ 2011-06-24 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 8.91  │
│ Steve     │ 336       │ 54         │ 2013-01-28 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 1.98  │
│ Steve     │ 359       │ 54         │ 2013-05-02 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 3.96  │
│ Steve     │ 381       │ 54         │ 2013-08-04 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 5.94  │
│ Steve     │ 22        │ 57         │ 2009-04-04 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 1.98  │
│ Steve     │ 33        │ 57         │ 2009-05-15 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 13.86 │
│ Steve     │ 88        │ 57         │ 2010-01-13 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 17.91 │
│ Steve     │ 217       │ 57         │ 2011-08-20 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 1.98  │
│ Steve     │ 240       │ 57         │ 2011-11-22 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 3.96  │
│ Steve     │ 262       │ 57         │ 2012-02-24 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 5.94  │
│ Steve     │ 314       │ 57         │ 2012-10-14 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 0.99  │
└───────────┴───────────┴────────────┴─────────────────────┴──────────────────────────────────────────┴─────────────────────┴──────────────┴────────────────┴───────────────────┴───────┘
**/
-- Proporciona una consulta que muestre el Total de la Factura, nombre del cliente, país y nombre del Agente de Ventas para todas las facturas y clientes.
ASESINATO

-- ¿Cuántas facturas hubo en 2009 y 2011? ¿Cuáles son las ventas totales respectivas para cada uno de esos años?

-- Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para el ID de factura 37.
select COUNT(*) from invoice_items where InvoiceId=37;
/**
┌──────────┐
│ COUNT(*) │
├──────────┤
│ 4        │
└──────────┘
**/
-- Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para cada Factura. PISTA: GROUP BY
select InvoiceId, COUNT(*) from invoice_items GROUP BY InvoiceId;
/**
┌───────────┬──────────┐
│ InvoiceId │ COUNT(*) │
├───────────┼──────────┤
│ 1         │ 2        │
│ 2         │ 4        │
│ 3         │ 6        │
│ 4         │ 9        │
│ 5         │ 14       │
│ 6         │ 1        │
│ 7         │ 2        │
│ 8         │ 2        │
│ 9         │ 4        │
│ 10        │ 6        │
│ 11        │ 9        │
│ 12        │ 14       │
│ 13        │ 1        │
│ 14        │ 2        │
│ 15        │ 2        │
│ 16        │ 4        │
│ 17        │ 6        │
│ 18        │ 9        │
│ 19        │ 14       │
│ 20        │ 1        │
│ 21        │ 2        │
│ 22        │ 2        │
│ 23        │ 4        │
│ 24        │ 6        │
│ 25        │ 9        │
│ 26        │ 14       │
│ 27        │ 1        │
│ 28        │ 2        │
│ 29        │ 2        │
│ 30        │ 4        │
│ 31        │ 6        │
│ 32        │ 9        │
│ 33        │ 14       │
│ 34        │ 1        │
│ 35        │ 2        │
│ 36        │ 2        │
│ 37        │ 4        │
│ 38        │ 6        │
│ 39        │ 9        │
│ 40        │ 14       │
│ 41        │ 1        │
│ 42        │ 2        │
│ 43        │ 2        │
│ 44        │ 4        │
│ 45        │ 6        │
│ 46        │ 9        │
│ 47        │ 14       │
│ 48        │ 1        │
│ 49        │ 2        │
│ 50        │ 2        │
│ 51        │ 4        │
│ 52        │ 6        │
│ 53        │ 9        │
│ 54        │ 14       │
│ 55        │ 1        │
│ 56        │ 2        │
│ 57        │ 2        │
│ 58        │ 4        │
│ 59        │ 6        │
│ 60        │ 9        │
│ 61        │ 14       │
│ 62        │ 1        │
│ 63        │ 2        │
│ 64        │ 2        │
│ 65        │ 4        │
│ 66        │ 6        │
│ 67        │ 9        │
│ 68        │ 14       │
│ 69        │ 1        │
│ 70        │ 2        │
│ 71        │ 2        │
│ 72        │ 4        │
│ 73        │ 6        │
│ 74        │ 9        │
│ 75        │ 14       │
│ 76        │ 1        │
│ 77        │ 2        │
│ 78        │ 2        │
│ 79        │ 4        │
│ 80        │ 6        │
│ 81        │ 9        │
│ 82        │ 14       │
│ 83        │ 1        │
│ 84        │ 2        │
│ 85        │ 2        │
│ 86        │ 4        │
│ 87        │ 6        │
│ 88        │ 9        │
│ 89        │ 14       │
│ 90        │ 1        │
│ 91        │ 2        │
│ 92        │ 2        │
│ 93        │ 4        │
│ 94        │ 6        │
│ 95        │ 9        │
│ 96        │ 14       │
│ 97        │ 1        │
│ 98        │ 2        │
│ 99        │ 2        │
│ 100       │ 4        │
│ 101       │ 6        │
│ 102       │ 9        │
│ 103       │ 14       │
│ 104       │ 1        │
│ 105       │ 2        │
│ 106       │ 2        │
│ 107       │ 4        │
│ 108       │ 6        │
│ 109       │ 9        │
│ 110       │ 14       │
│ 111       │ 1        │
│ 112       │ 2        │
│ 113       │ 2        │
│ 114       │ 4        │
│ 115       │ 6        │
│ 116       │ 9        │
│ 117       │ 14       │
│ 118       │ 1        │
│ 119       │ 2        │
│ 120       │ 2        │
│ 121       │ 4        │
│ 122       │ 6        │
│ 123       │ 9        │
│ 124       │ 14       │
│ 125       │ 1        │
│ 126       │ 2        │
│ 127       │ 2        │
│ 128       │ 4        │
│ 129       │ 6        │
│ 130       │ 9        │
│ 131       │ 14       │
│ 132       │ 1        │
│ 133       │ 2        │
│ 134       │ 2        │
│ 135       │ 4        │
│ 136       │ 6        │
│ 137       │ 9        │
│ 138       │ 14       │
│ 139       │ 1        │
│ 140       │ 2        │
│ 141       │ 2        │
│ 142       │ 4        │
│ 143       │ 6        │
│ 144       │ 9        │
│ 145       │ 14       │
│ 146       │ 1        │
│ 147       │ 2        │
│ 148       │ 2        │
│ 149       │ 4        │
│ 150       │ 6        │
│ 151       │ 9        │
│ 152       │ 14       │
│ 153       │ 1        │
│ 154       │ 2        │
│ 155       │ 2        │
│ 156       │ 4        │
│ 157       │ 6        │
│ 158       │ 9        │
│ 159       │ 14       │
│ 160       │ 1        │
│ 161       │ 2        │
│ 162       │ 2        │
│ 163       │ 4        │
│ 164       │ 6        │
│ 165       │ 9        │
│ 166       │ 14       │
│ 167       │ 1        │
│ 168       │ 2        │
│ 169       │ 2        │
│ 170       │ 4        │
│ 171       │ 6        │
│ 172       │ 9        │
│ 173       │ 14       │
│ 174       │ 1        │
│ 175       │ 2        │
│ 176       │ 2        │
│ 177       │ 4        │
│ 178       │ 6        │
│ 179       │ 9        │
│ 180       │ 14       │
│ 181       │ 1        │
│ 182       │ 2        │
│ 183       │ 2        │
│ 184       │ 4        │
│ 185       │ 6        │
│ 186       │ 9        │
│ 187       │ 14       │
│ 188       │ 1        │
│ 189       │ 2        │
│ 190       │ 2        │
│ 191       │ 4        │
│ 192       │ 6        │
│ 193       │ 9        │
│ 194       │ 14       │
│ 195       │ 1        │
│ 196       │ 2        │
│ 197       │ 2        │
│ 198       │ 4        │
│ 199       │ 6        │
│ 200       │ 9        │
│ 201       │ 14       │
│ 202       │ 1        │
│ 203       │ 2        │
│ 204       │ 2        │
│ 205       │ 4        │
│ 206       │ 6        │
│ 207       │ 9        │
│ 208       │ 14       │
│ 209       │ 1        │
│ 210       │ 2        │
│ 211       │ 2        │
│ 212       │ 4        │
│ 213       │ 6        │
│ 214       │ 9        │
│ 215       │ 14       │
│ 216       │ 1        │
│ 217       │ 2        │
│ 218       │ 2        │
│ 219       │ 4        │
│ 220       │ 6        │
│ 221       │ 9        │
│ 222       │ 14       │
│ 223       │ 1        │
│ 224       │ 2        │
│ 225       │ 2        │
│ 226       │ 4        │
│ 227       │ 6        │
│ 228       │ 9        │
│ 229       │ 14       │
│ 230       │ 1        │
│ 231       │ 2        │
│ 232       │ 2        │
│ 233       │ 4        │
│ 234       │ 6        │
│ 235       │ 9        │
│ 236       │ 14       │
│ 237       │ 1        │
│ 238       │ 2        │
│ 239       │ 2        │
│ 240       │ 4        │
│ 241       │ 6        │
│ 242       │ 9        │
│ 243       │ 14       │
│ 244       │ 1        │
│ 245       │ 2        │
│ 246       │ 2        │
│ 247       │ 4        │
│ 248       │ 6        │
│ 249       │ 9        │
│ 250       │ 14       │
│ 251       │ 1        │
│ 252       │ 2        │
│ 253       │ 2        │
│ 254       │ 4        │
│ 255       │ 6        │
│ 256       │ 9        │
│ 257       │ 14       │
│ 258       │ 1        │
│ 259       │ 2        │
│ 260       │ 2        │
│ 261       │ 4        │
│ 262       │ 6        │
│ 263       │ 9        │
│ 264       │ 14       │
│ 265       │ 1        │
│ 266       │ 2        │
│ 267       │ 2        │
│ 268       │ 4        │
│ 269       │ 6        │
│ 270       │ 9        │
│ 271       │ 14       │
│ 272       │ 1        │
│ 273       │ 2        │
│ 274       │ 2        │
│ 275       │ 4        │
│ 276       │ 6        │
│ 277       │ 9        │
│ 278       │ 14       │
│ 279       │ 1        │
│ 280       │ 2        │
│ 281       │ 2        │
│ 282       │ 4        │
│ 283       │ 6        │
│ 284       │ 9        │
│ 285       │ 14       │
│ 286       │ 1        │
│ 287       │ 2        │
│ 288       │ 2        │
│ 289       │ 4        │
│ 290       │ 6        │
│ 291       │ 9        │
│ 292       │ 14       │
│ 293       │ 1        │
│ 294       │ 2        │
│ 295       │ 2        │
│ 296       │ 4        │
│ 297       │ 6        │
│ 298       │ 9        │
│ 299       │ 14       │
│ 300       │ 1        │
│ 301       │ 2        │
│ 302       │ 2        │
│ 303       │ 4        │
│ 304       │ 6        │
│ 305       │ 9        │
│ 306       │ 14       │
│ 307       │ 1        │
│ 308       │ 2        │
│ 309       │ 2        │
│ 310       │ 4        │
│ 311       │ 6        │
│ 312       │ 9        │
│ 313       │ 14       │
│ 314       │ 1        │
│ 315       │ 2        │
│ 316       │ 2        │
│ 317       │ 4        │
│ 318       │ 6        │
│ 319       │ 9        │
│ 320       │ 14       │
│ 321       │ 1        │
│ 322       │ 2        │
│ 323       │ 2        │
│ 324       │ 4        │
│ 325       │ 6        │
│ 326       │ 9        │
│ 327       │ 14       │
│ 328       │ 1        │
│ 329       │ 2        │
│ 330       │ 2        │
│ 331       │ 4        │
│ 332       │ 6        │
│ 333       │ 9        │
│ 334       │ 14       │
│ 335       │ 1        │
│ 336       │ 2        │
│ 337       │ 2        │
│ 338       │ 4        │
│ 339       │ 6        │
│ 340       │ 9        │
│ 341       │ 14       │
│ 342       │ 1        │
│ 343       │ 2        │
│ 344       │ 2        │
│ 345       │ 4        │
│ 346       │ 6        │
│ 347       │ 9        │
│ 348       │ 14       │
│ 349       │ 1        │
│ 350       │ 2        │
│ 351       │ 2        │
│ 352       │ 4        │
│ 353       │ 6        │
│ 354       │ 9        │
│ 355       │ 14       │
│ 356       │ 1        │
│ 357       │ 2        │
│ 358       │ 2        │
│ 359       │ 4        │
│ 360       │ 6        │
│ 361       │ 9        │
│ 362       │ 14       │
│ 363       │ 1        │
│ 364       │ 2        │
│ 365       │ 2        │
│ 366       │ 4        │
│ 367       │ 6        │
│ 368       │ 9        │
│ 369       │ 14       │
│ 370       │ 1        │
│ 371       │ 2        │
│ 372       │ 2        │
│ 373       │ 4        │
│ 374       │ 6        │
│ 375       │ 9        │
│ 376       │ 14       │
│ 377       │ 1        │
│ 378       │ 2        │
│ 379       │ 2        │
│ 380       │ 4        │
│ 381       │ 6        │
│ 382       │ 9        │
│ 383       │ 14       │
│ 384       │ 1        │
│ 385       │ 2        │
│ 386       │ 2        │
│ 387       │ 4        │
│ 388       │ 6        │
│ 389       │ 9        │
│ 390       │ 14       │
│ 391       │ 1        │
│ 392       │ 2        │
│ 393       │ 2        │
│ 394       │ 4        │
│ 395       │ 6        │
│ 396       │ 9        │
│ 397       │ 14       │
│ 398       │ 1        │
│ 399       │ 2        │
│ 400       │ 2        │
│ 401       │ 4        │
│ 402       │ 6        │
│ 403       │ 9        │
│ 404       │ 14       │
│ 405       │ 1        │
│ 406       │ 2        │
│ 407       │ 2        │
│ 408       │ 4        │
│ 409       │ 6        │
│ 410       │ 9        │
│ 411       │ 14       │
│ 412       │ 1        │
└───────────┴──────────┘
**/

-- Proporciona una consulta que incluya el nombre de la pista con cada ítem de línea de factura.
select t.Name, ii.InvoiceLineId from tracks as t INNER JOIN invoice_items as ii ON t.TrackId=ii.TrackId order by ii.InvoiceLineId;
select t.Name, ii.InvoiceLineId from tracks as t, invoice_items as ii where t.TrackId=ii.TrackId order by ii.InvoiceLineId;
/**
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┬───────────────┐
│                                                            Name                                                             │ InvoiceLineId │
├─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┼───────────────┤
│ Balls to the Wall                                                                                                           │ 1             │
│ Restless and Wild                                                                                                           │ 2             │
│ Put The Finger On You                                                                                                       │ 3             │
│ Inject The Venom                                                                                                            │ 4             │
│ Evil Walks                                                                                                                  │ 5             │
│ Breaking The Rules                                                                                                          │ 6             │
│ Dog Eat Dog                                                                                                                 │ 7             │
│ Overdose                                                                                                                    │ 8             │
│ Love In An Elevator                                                                                                         │ 9             │
│ Janie's Got A Gun                                                                                                           │ 10            │
│ Deuces Are Wild                                                                                                             │ 11            │
│ Angel                                                                                                                       │ 12            │
│ Right Through You                                                                                                           │ 13            │
│ Not The Doctor                                                                                                              │ 14            │
│ Bleed The Freak                                                                                                             │ 15            │
│ Confusion                                                                                                                   │ 16            │
│ Por Causa De Você                                                                                                           │ 17            │
│ Angela                                                                                                                      │ 18            │
│ Master Of Puppets                                                                                                           │ 19            │
│ Welcome Home (Sanitarium)                                                                                                   │ 20            │
│ Set It Off                                                                                                                  │ 21            │
│ Your Time Has Come                                                                                                          │ 22            │
│ Dandelion                                                                                                                   │ 23            │
│ Rock 'N' Roll Music                                                                                                         │ 24            │
│ Moon germs                                                                                                                  │ 25            │
│ Super Terrorizer                                                                                                            │ 26            │
│ Heart Of Gold                                                                                                               │ 27            │
│ Evil Woman                                                                                                                  │ 28            │
│ Cornucopia                                                                                                                  │ 29            │
│ Bowels Of The Devil                                                                                                         │ 30            │
│ Body Count Anthem                                                                                                           │ 31            │
│ Jerusalem                                                                                                                   │ 32            │
│ When My Left Eye Jumps                                                                                                      │ 33            │
│ Meditação                                                                                                                   │ 34            │
│ Esse Cara                                                                                                                   │ 35            │
│ Bye, Bye Brasil                                                                                                             │ 36            │
│ Atras Da Porta                                                                                                              │ 37            │
│ Tatuagem                                                                                                                    │ 38            │
│ Morena De Angola                                                                                                            │ 39            │
│ A Banda                                                                                                                     │ 40            │
│ Com Açúcar E Com Afeto                                                                                                      │ 41            │
│ Meu Caro Amigo                                                                                                              │ 42            │
│ Trocando Em Miúdos                                                                                                          │ 43            │
│ Gota D'água                                                                                                                 │ 44            │
│ Etnia                                                                                                                       │ 45            │
│ Samba Do Lado                                                                                                               │ 46            │
│ Sobremesa                                                                                                                   │ 47            │
│ Sangue De Bairro                                                                                                            │ 48            │
│ Amor De Muito                                                                                                               │ 49            │
│ Maracatu Atômico [Trip Hop]                                                                                                 │ 50            │
│ Samba Makossa                                                                                                               │ 51            │
│ Lixo Do Mangue                                                                                                              │ 52            │
│ Firmamento                                                                                                                  │ 53            │
│ Já Foi                                                                                                                      │ 54            │
│ A Cor Do Sol                                                                                                                │ 55            │
│ Firmamento                                                                                                                  │ 56            │
│ Sábado A Noite                                                                                                              │ 57            │
│ Linha Do Equador                                                                                                            │ 58            │
│ Livre Pra Viver                                                                                                             │ 59            │
│ Lavadeira                                                                                                                   │ 60            │
│ Dazed and Confused                                                                                                          │ 61            │
│ You Shook Me(2)                                                                                                             │ 62            │
│ Man With The Woman Head                                                                                                     │ 63            │
│ Leandro De Itaquera 2001                                                                                                    │ 64            │
│ Vôo Sobre o Horizonte                                                                                                       │ 65            │
│ All Star                                                                                                                    │ 66            │
│ Tanto Tempo                                                                                                                 │ 67            │
│ Bumbo Da Mangueira                                                                                                          │ 68            │
│ Die Die My Darling                                                                                                          │ 69            │
│ Radio GA GA                                                                                                                 │ 70            │
│ I'm Going Slightly Mad                                                                                                      │ 71            │
│ Sure Know Something                                                                                                         │ 72            │
│ God Of Thunder                                                                                                              │ 73            │
│ Valentino's                                                                                                                 │ 74            │
│ Believe                                                                                                                     │ 75            │
│ As We Sleep                                                                                                                 │ 76            │
│ J Squared                                                                                                                   │ 77            │
│ Maria                                                                                                                       │ 78            │
│ Longview                                                                                                                    │ 79            │
│ Basket Case                                                                                                                 │ 80            │
│ She                                                                                                                         │ 81            │
│ Geek Stink Breath                                                                                                           │ 82            │
│ Stuck With Me                                                                                                               │ 83            │
│ Nice Guys Finish Last                                                                                                       │ 84            │
│ Macy's Day Parade                                                                                                           │ 85            │
│ Don't You Cry                                                                                                               │ 86            │
│ Living On Love                                                                                                              │ 87            │
│ Wherever You May Go                                                                                                         │ 88            │
│ Diga Lá, Coração                                                                                                            │ 89            │
│ Comportamento Geral                                                                                                         │ 90            │
│ Podres Poderes                                                                                                              │ 91            │
│ Queixa                                                                                                                      │ 92            │
│ Ando Meio Desligado                                                                                                         │ 93            │
│ Vida De Cachorro                                                                                                            │ 94            │
│ Meu Refrigerador Não Funciona                                                                                               │ 95            │
│ Smoke On The Water                                                                                                          │ 96            │
│ Trampled Under Foot                                                                                                         │ 97            │
│ União Da Ilha                                                                                                               │ 98            │
│ Put Your Lights On                                                                                                          │ 99            │
│ Primavera                                                                                                                   │ 100           │
│ Seis Da Tarde                                                                                                               │ 101           │
│ Compulsion                                                                                                                  │ 102           │
│ The Pan Piper                                                                                                               │ 103           │
│ Jean Pierre (Live)                                                                                                          │ 104           │
│ Drum Boogie                                                                                                                 │ 105           │
│ Lemon Drop                                                                                                                  │ 106           │
│ Showcase                                                                                                                    │ 107           │
│ Como É Duro Trabalhar                                                                                                       │ 108           │
│ Pela Luz dos Olhos Teus (Miúcha e Tom Jobim)                                                                                │ 109           │
│ As Rosas Não Falam (Beth Carvalho)                                                                                          │ 110           │
│ Green River                                                                                                                 │ 111           │
│ Someday Never Comes                                                                                                         │ 112           │
│ Walking On The Water                                                                                                        │ 113           │
│ Suzie-Q, Pt. 2                                                                                                              │ 114           │
│ Good Golly Miss Molly                                                                                                       │ 115           │
│ Wrote A Song For Everyone                                                                                                   │ 116           │
│ Cotton Fields                                                                                                               │ 117           │
│ Don't Look Now                                                                                                              │ 118           │
│ Before You Accuse Me                                                                                                        │ 119           │
│ Pagan Baby                                                                                                                  │ 120           │
│ Born To Move                                                                                                                │ 121           │
│ Brasil                                                                                                                      │ 122           │
│ Coroné Antonio Bento                                                                                                        │ 123           │
│ Música Urbana 2                                                                                                             │ 124           │
│ Woman Is The Nigger Of The World (Ao Vivo)                                                                                  │ 125           │
│ Smells Like Teen Spirit (Ao Vivo)                                                                                           │ 126           │
│ Admirável Gado Novo                                                                                                         │ 127           │
│ Mis Penas Lloraba Yo (Ao Vivo) Soy Gitano (Tangos)                                                                          │ 128           │
│ Drifter                                                                                                                     │ 129           │
│ Child In Time                                                                                                               │ 130           │
│ No No No                                                                                                                    │ 131           │
│ Knocking At Your Back Door                                                                                                  │ 132           │
│ The Unwritten Law                                                                                                           │ 133           │
│ Maybe I'm A Leo                                                                                                             │ 134           │
│ Vavoom : Ted The Mechanic                                                                                                   │ 135           │
│ Hey Cisco                                                                                                                   │ 136           │
│ Fortuneteller                                                                                                               │ 137           │
│ High Ball Shooter                                                                                                           │ 138           │
│ A Twist In The Tail                                                                                                         │ 139           │
│ Animal                                                                                                                      │ 140           │
│ Hysteria                                                                                                                    │ 141           │
│ Baltimore, DC                                                                                                               │ 142           │
│ Esquinas                                                                                                                    │ 143           │
│ Açai                                                                                                                        │ 144           │
│ Um Amor Puro                                                                                                                │ 145           │
│ Fascinação                                                                                                                  │ 146           │
│ Sunshine Of Your Love                                                                                                       │ 147           │
│ Lay Down Sally                                                                                                              │ 148           │
│ Tears In Heaven                                                                                                             │ 149           │
│ Naked In Front Of The Computer                                                                                              │ 150           │
│ Helpless                                                                                                                    │ 151           │
│ Mouth To Mouth                                                                                                              │ 152           │
│ She Loves Me Not                                                                                                            │ 153           │
│ Paths Of Glory                                                                                                              │ 154           │
│ Pristina                                                                                                                    │ 155           │
│ Caffeine                                                                                                                    │ 156           │
│ RV                                                                                                                          │ 157           │
│ Everything's Ruined                                                                                                         │ 158           │
│ A Small Victory                                                                                                             │ 159           │
│ Easy                                                                                                                        │ 160           │
│ The Gentle Art Of Making Enemies                                                                                            │ 161           │
│ Ugly In The Morning                                                                                                         │ 162           │
│ What A Day                                                                                                                  │ 163           │
│ From Out Of Nowhere                                                                                                         │ 164           │
│ Underwater Love                                                                                                             │ 165           │
│ Falamansa Song                                                                                                              │ 166           │
│ Avisa                                                                                                                       │ 167           │
│ Desaforo                                                                                                                    │ 168           │
│ The Last Song                                                                                                               │ 169           │
│ What If I Do?                                                                                                               │ 170           │
│ Virginia Moon                                                                                                               │ 171           │
│ Times Like These                                                                                                            │ 172           │
│ Burn Away                                                                                                                   │ 173           │
│ See You                                                                                                                     │ 174           │
│ I Get A Kick Out Of You                                                                                                     │ 175           │
│ Fly Me To The Moon                                                                                                          │ 176           │
│ Mack The Knife                                                                                                              │ 177           │
│ Funk Hum                                                                                                                    │ 178           │
│ Forty Days Instrumental                                                                                                     │ 179           │
│ Pau-De-Arara                                                                                                                │ 180           │
│ Stir It Up (Live)                                                                                                           │ 181           │
│ A Novidade (Live)                                                                                                           │ 182           │
│ Realce                                                                                                                      │ 183           │
│ Aquele Abraço                                                                                                               │ 184           │
│ Re-Align                                                                                                                    │ 185           │
│ Holiday                                                                                                                     │ 186           │
│ Homecoming / The Death Of St. Jimmy / East 12th St. / Nobody Likes You / Rock And Roll Girlfriend / We're Coming Home Again │ 187           │
│ Right Next Door to Hell                                                                                                     │ 188           │
│ Dust N' Bones                                                                                                               │ 189           │
│ Live and Let Die                                                                                                            │ 190           │
│ Perfect Crime                                                                                                               │ 191           │
│ Bad Obsession                                                                                                               │ 192           │
│ Double Talkin' Jive                                                                                                         │ 193           │
│ The Garden                                                                                                                  │ 194           │
│ Don't Damn Me                                                                                                               │ 195           │
│ Dead Horse                                                                                                                  │ 196           │
│ Yesterdays                                                                                                                  │ 197           │
│ Breakdown                                                                                                                   │ 198           │
│ Estranged                                                                                                                   │ 199           │
│ Colibri                                                                                                                     │ 200           │
│ L'Arc En Ciel De Miles                                                                                                      │ 201           │
│ Millenium                                                                                                                   │ 202           │
│ These Colours Don't Run                                                                                                     │ 203           │
│ For the Greater Good of God                                                                                                 │ 204           │
│ Prowler                                                                                                                     │ 205           │
│ Run To The Hilss                                                                                                            │ 206           │
│ Can I Play With Madness                                                                                                     │ 207           │
│ Heaven Can Wait                                                                                                             │ 208           │
│ Blood Brothers                                                                                                              │ 209           │
│ The Thin Line Between Love & Hate                                                                                           │ 210           │
│ Gates Of Tomorrow                                                                                                           │ 211           │
│ Fear Is The Key                                                                                                             │ 212           │
│ 01 - Prowler                                                                                                                │ 213           │
│ The Ides Of March                                                                                                           │ 214           │
│ Drifter                                                                                                                     │ 215           │
│ The Number Of The Beast                                                                                                     │ 216           │
│ Phantom Of The Opera                                                                                                        │ 217           │
│ Afraid To Shoot Strangers                                                                                                   │ 218           │
│ The Trooper                                                                                                                 │ 219           │
│ Run Silent Run Deep                                                                                                         │ 220           │
│ Still Life                                                                                                                  │ 221           │
│ Back in the Village                                                                                                         │ 222           │
│ Blood Brothers                                                                                                              │ 223           │
│ The Number Of The Beast                                                                                                     │ 224           │
│ The Prophecy                                                                                                                │ 225           │
│ Hallowed Be Thy Name                                                                                                        │ 226           │
│ Invaders                                                                                                                    │ 227           │
│ Run to the Hills                                                                                                            │ 228           │
│ The Prisoner                                                                                                                │ 229           │
│ Lord Of The Flies                                                                                                           │ 230           │
│ Fortunes Of War                                                                                                             │ 231           │
│ The Aftermath                                                                                                               │ 232           │
│ Blood On The World's Hands                                                                                                  │ 233           │
│ 2 A.M.                                                                                                                      │ 234           │
│ Lightning Strikes Twice                                                                                                     │ 235           │
│ Don't Look To The Eyes Of A Stranger                                                                                        │ 236           │
│ Night Train                                                                                                                 │ 237           │
│ It's A Man's Man's Man's World                                                                                              │ 238           │
│ Hey America                                                                                                                 │ 239           │
│ Get Up Offa That Thing                                                                                                      │ 240           │
│ When You Gonna Learn (Digeridoo)                                                                                            │ 241           │
│ Whatever It Is, I Just Can't Stop                                                                                           │ 242           │
│ Black Capricorn Day                                                                                                         │ 243           │
│ Were Do We Go From Here                                                                                                     │ 244           │
│ Light Years                                                                                                                 │ 245           │
│ Morning Glory                                                                                                               │ 246           │
│ Get What You Need                                                                                                           │ 247           │
│ Take It Or Leave It                                                                                                         │ 248           │
│ Can You See Me                                                                                                              │ 249           │
│ Stone Free                                                                                                                  │ 250           │
│ Satch Boogie                                                                                                                │ 251           │
│ Salve Simpatia                                                                                                              │ 252           │
│ Filho Maravilha                                                                                                             │ 253           │
│ Dance Enquanto é Tempo                                                                                                      │ 254           │
│ Voce Inteira                                                                                                                │ 255           │
│ Enquanto O Dia Não Vem                                                                                                      │ 256           │
│ Turbo Lover                                                                                                                 │ 257           │
│ Plaster Caster                                                                                                              │ 258           │
│ Every Time I Look At You                                                                                                    │ 259           │
│ Dazed And Confused                                                                                                          │ 260           │
│ Walter's Walk                                                                                                               │ 261           │
│ Dancing Days                                                                                                                │ 262           │
│ All My Love                                                                                                                 │ 263           │
│ Your Time Is Gonna Come                                                                                                     │ 264           │
│ Black Mountain Side                                                                                                         │ 265           │
│ Communication Breakdown                                                                                                     │ 266           │
│ How Many More Times                                                                                                         │ 267           │
│ What Is And What Should Never Be                                                                                            │ 268           │
│ Thank You                                                                                                                   │ 269           │
│ Living Loving Maid (She's Just A Woman)                                                                                     │ 270           │
│ Moby Dick                                                                                                                   │ 271           │
│ Immigrant Song                                                                                                              │ 272           │
│ Out On The Tiles                                                                                                            │ 273           │
│ Bron-Y-Aur Stomp                                                                                                            │ 274           │
│ Down By The Seaside                                                                                                         │ 275           │
│ Boogie With Stu                                                                                                             │ 276           │
│ For Your Life                                                                                                               │ 277           │
│ Hots On For Nowhere                                                                                                         │ 278           │
│ Dazed And Confused                                                                                                          │ 279           │
│ L'Avventura                                                                                                                 │ 280           │
│ Soul Parsifal                                                                                                               │ 281           │
│ Quando Você Voltar                                                                                                          │ 282           │
│ Tempo Perdido                                                                                                               │ 283           │
│ Meninos E Meninas                                                                                                           │ 284           │
│ Are You Gonna Go My Way                                                                                                     │ 285           │
│ Mr. Cab Driver                                                                                                              │ 286           │
│ Believe                                                                                                                     │ 287           │
│ Condição                                                                                                                    │ 288           │
│ Aquilo                                                                                                                      │ 289           │
│ Assaltaram A Gramática                                                                                                      │ 290           │
│ Waterhole (Expresso Bongo)                                                                                                  │ 291           │
│ Tempos Modernos                                                                                                             │ 292           │
│ Dança Da Solidão                                                                                                            │ 293           │
│ When I Had Your Love                                                                                                        │ 294           │
│ Save The Children                                                                                                           │ 295           │
│ Down by the Sea                                                                                                             │ 296           │
│ The Unforgiven                                                                                                              │ 297           │
│ Helpless                                                                                                                    │ 298           │
│ Stone Cold Crazy                                                                                                            │ 299           │
│ Motorbreath                                                                                                                 │ 300           │
│ 2 X 4                                                                                                                       │ 301           │
│ Master Of Puppets                                                                                                           │ 302           │
│ The Thing That Should Not Be                                                                                                │ 303           │
│ Welcome Home (Sanitarium)                                                                                                   │ 304           │
│ Leper Messiah                                                                                                               │ 305           │
│ Damage Inc.                                                                                                                 │ 306           │
│ The Memory Remains                                                                                                          │ 307           │
│ The Unforgiven II                                                                                                           │ 308           │
│ Slither                                                                                                                     │ 309           │
│ Bad Seed                                                                                                                    │ 310           │
│ Attitude                                                                                                                    │ 311           │
│ For Whom The Bell Tolls                                                                                                     │ 312           │
│ Creeping Death                                                                                                              │ 313           │
│ Some Kind Of Monster                                                                                                        │ 314           │
│ Shoot Me Again                                                                                                              │ 315           │
│ All Within My Hands                                                                                                         │ 316           │
│ Harvester Of Sorrow                                                                                                         │ 317           │
│ The Duke                                                                                                                    │ 318           │
│ Lament                                                                                                                      │ 319           │
│ Coração De Estudante                                                                                                        │ 320           │
│ Menestrel Das Alagoas                                                                                                       │ 321           │
│ Maria, Maria                                                                                                                │ 322           │
│ Ponta de Areia                                                                                                              │ 323           │
│ Norwegian Wood                                                                                                              │ 324           │
│ Fast And Loose                                                                                                              │ 325           │
│ Please Don't Touch                                                                                                          │ 326           │
│ Já Foi                                                                                                                      │ 327           │
│ Wild Side                                                                                                                   │ 328           │
│ Primal Scream                                                                                                               │ 329           │
│ Been A Son                                                                                                                  │ 330           │
│ Breed                                                                                                                       │ 331           │
│ Territorial Pissings                                                                                                        │ 332           │
│ Folhas Secas                                                                                                                │ 333           │
│ Menino De Rua                                                                                                               │ 334           │
│ Denúncia                                                                                                                    │ 335           │
│ O Trem Da Juventude                                                                                                         │ 336           │
│ Selvagem                                                                                                                    │ 337           │
│ Nebulosa Do Amor                                                                                                            │ 338           │
│ Luis Inacio (300 Picaretas)                                                                                                 │ 339           │
│ Perplexo                                                                                                                    │ 340           │
│ Me Liga                                                                                                                     │ 341           │
│ Quase Um Segundo                                                                                                            │ 342           │
│ Romance Ideal                                                                                                               │ 343           │
│ SKA                                                                                                                         │ 344           │
│ I Don't Know                                                                                                                │ 345           │
│ Flying High Again                                                                                                           │ 346           │
│ No More Tears                                                                                                               │ 347           │
│ Crazy Train                                                                                                                 │ 348           │
│ Relvelation (Mother Earth)                                                                                                  │ 349           │
│ Children Of The Grave                                                                                                       │ 350           │
│ Dee                                                                                                                         │ 351           │
│ Blue Train                                                                                                                  │ 352           │
│ Walking Into Clarksdale                                                                                                     │ 353           │
│ Sons Of Freedom                                                                                                             │ 354           │
│ Beach Sequence                                                                                                              │ 355           │
│ Plot 180                                                                                                                    │ 356           │
│ Murders In The Rue Morgue                                                                                                   │ 357           │
│ Iron Maiden                                                                                                                 │ 358           │
│ Untitled                                                                                                                    │ 359           │
│ Nothingman                                                                                                                  │ 360           │
│ World Wide Suicide                                                                                                          │ 361           │
│ Big Wave                                                                                                                    │ 362           │
│ Can't Keep                                                                                                                  │ 363           │
│ Green Disease                                                                                                               │ 364           │
│ Why Go                                                                                                                      │ 365           │
│ Animal                                                                                                                      │ 366           │
│ Leash                                                                                                                       │ 367           │
│ Wanted Dread And Alive                                                                                                      │ 368           │
│ The Great Gig In The Sky                                                                                                    │ 369           │
│ Bossa                                                                                                                       │ 370           │
│ Nega Do Cabelo Duro                                                                                                         │ 371           │
│ You're My Best Friend                                                                                                       │ 372           │
│ Seven Seas Of Rhye                                                                                                          │ 373           │
│ Get Down, Make Love                                                                                                         │ 374           │
│ Get Up                                                                                                                      │ 375           │
│ Untitled                                                                                                                    │ 376           │
│ Be Mine                                                                                                                     │ 377           │
│ Carnival Of Sorts                                                                                                           │ 378           │
│ Radio Free Aurope                                                                                                           │ 379           │
│ Perfect Circle                                                                                                              │ 380           │
│ So Central Rain                                                                                                             │ 381           │
│ Pretty Persuasion                                                                                                           │ 382           │
│ Can't Get There From Here                                                                                                   │ 383           │
│ Fall On Me                                                                                                                  │ 384           │
│ Cuyahoga                                                                                                                    │ 385           │
│ The Finest Worksong                                                                                                         │ 386           │
│ Papeau Nuky Doe                                                                                                             │ 387           │
│ Esporrei Na Manivela                                                                                                        │ 388           │
│ Maluco Beleza                                                                                                               │ 389           │
│ As Profecias                                                                                                                │ 390           │
│ Que Luz É Essa                                                                                                              │ 391           │
│ Século XXI                                                                                                                  │ 392           │
│ Suck My Kiss                                                                                                                │ 393           │
│ Under The Bridge                                                                                                            │ 394           │
│ They're Red Hot                                                                                                             │ 395           │
│ The Zephyr Song                                                                                                             │ 396           │
│ Tear                                                                                                                        │ 397           │
│ Parallel Universe                                                                                                           │ 398           │
│ Porcelain                                                                                                                   │ 399           │
│ Right On Time                                                                                                               │ 400           │
│ Xanadu                                                                                                                      │ 401           │
│ Finding My Way                                                                                                              │ 402           │
│ Evil Ways                                                                                                                   │ 403           │
│ It's Only Love                                                                                                              │ 404           │
│ So Beautiful                                                                                                                │ 405           │
│ Maquinarama                                                                                                                 │ 406           │
│ Garota Nacional                                                                                                             │ 407           │
│ Aeroplane Flies High                                                                                                        │ 408           │
│ Saturnine                                                                                                                   │ 409           │
│ Cherub Rock                                                                                                                 │ 410           │
│ Ava Adore                                                                                                                   │ 411           │
│ Hands All Over                                                                                                              │ 412           │
│ Pretty Noose                                                                                                                │ 413           │
│ Starburst                                                                                                                   │ 414           │
│ Leave My Girl Alone                                                                                                         │ 415           │
│ Plush                                                                                                                       │ 416           │
│ Wet My Bed                                                                                                                  │ 417           │
│ Crackerman                                                                                                                  │ 418           │
│ Soldier Side - Intro                                                                                                        │ 419           │
│ Revenga                                                                                                                     │ 420           │
│ Radio/Video                                                                                                                 │ 421           │
│ Violent Pornography                                                                                                         │ 422           │
│ Sad Statue                                                                                                                  │ 423           │
│ Lost in Hollywood                                                                                                           │ 424           │
│ Black Light Syndrome                                                                                                        │ 425           │
│ Midnight From The Inside Out                                                                                                │ 426           │
│ Sometimes Salvation                                                                                                         │ 427           │
│ Girl From A Pawnshop                                                                                                        │ 428           │
│ Title Song                                                                                                                  │ 429           │
│ Soul Singing                                                                                                                │ 430           │
│ Clash City Rockers                                                                                                          │ 431           │
│ Train In Vain                                                                                                               │ 432           │
│ Know Your Rights                                                                                                            │ 433           │
│ Take The Power                                                                                                              │ 434           │
│ Speed Of Light                                                                                                              │ 435           │
│ Spirit Walker                                                                                                               │ 436           │
│ Edie (Ciao Baby)                                                                                                            │ 437           │
│ Sun King                                                                                                                    │ 438           │
│ Twentienth Century Fox                                                                                                      │ 439           │
│ Can't Stand Losing You                                                                                                      │ 440           │
│ King Of Pain                                                                                                                │ 441           │
│ Get Off Of My Cloud                                                                                                         │ 442           │
│ Gimmie Shelters                                                                                                             │ 443           │
│ Thief In The Night                                                                                                          │ 444           │
│ Out Of Tears                                                                                                                │ 445           │
│ Walking Wounded                                                                                                             │ 446           │
│ Heaven Coming Down                                                                                                          │ 447           │
│ Gyroscope                                                                                                                   │ 448           │
│ Anyway, Anyhow, Anywhere                                                                                                    │ 449           │
│ Pinball Wizard                                                                                                              │ 450           │
│ You Better You Bet                                                                                                          │ 451           │
│ Música No Ar                                                                                                                │ 452           │
│ Você                                                                                                                        │ 453           │
│ Go Back                                                                                                                     │ 454           │
│ Prá Dizer Adeus                                                                                                             │ 455           │
│ Família                                                                                                                     │ 456           │
│ O Pulso                                                                                                                     │ 457           │
│ Nem 5 Minutos Guardados                                                                                                     │ 458           │
│ Palavras                                                                                                                    │ 459           │
│ A Melhor Forma                                                                                                              │ 460           │
│ 32 Dentes                                                                                                                   │ 461           │
│ Não Vou Lutar                                                                                                               │ 462           │
│ Querem Meu Sangue                                                                                                           │ 463           │
│ Lugar Nenhum                                                                                                                │ 464           │
│ Domingo                                                                                                                     │ 465           │
│ Era Uma Vez                                                                                                                 │ 466           │
│ Toda Cor                                                                                                                    │ 467           │
│ Occupation / Precipice                                                                                                      │ 468           │
│ Hero                                                                                                                        │ 469           │
│ The Woman King                                                                                                              │ 470           │
│ Crossroads, Pt. 2                                                                                                           │ 471           │
│ Better Halves                                                                                                               │ 472           │
│ The Fix                                                                                                                     │ 473           │
│ Parasite                                                                                                                    │ 474           │
│ The Glass Ballerina                                                                                                         │ 475           │
│ Walkabout                                                                                                                   │ 476           │
│ I Do                                                                                                                        │ 477           │
│ Solitary                                                                                                                    │ 478           │
│ Fire + Water                                                                                                                │ 479           │
│ Homecoming                                                                                                                  │ 480           │
│ Dave                                                                                                                        │ 481           │
│ Born to Run                                                                                                                 │ 482           │
│ One                                                                                                                         │ 483           │
│ Love Is Blindness                                                                                                           │ 484           │
│ When I Look At The World                                                                                                    │ 485           │
│ Everlasting Love                                                                                                            │ 486           │
│ Vertigo                                                                                                                     │ 487           │
│ Original Of The Species                                                                                                     │ 488           │
│ Miami                                                                                                                       │ 489           │
│ All Along The Watchtower                                                                                                    │ 490           │
│ God Part II                                                                                                                 │ 491           │
│ Desire                                                                                                                      │ 492           │
│ When Love Comes To Town                                                                                                     │ 493           │
│ Angel Of Harlem                                                                                                             │ 494           │
│ Sunday Bloody Sunday                                                                                                        │ 495           │
│ New Year's Day                                                                                                              │ 496           │
│ Drowning Man                                                                                                                │ 497           │
│ Two Hearts Beat As One                                                                                                      │ 498           │
│ Surrender                                                                                                                   │ 499           │
│ Zooropa                                                                                                                     │ 500           │
│ Stay (Faraway, So Close!)                                                                                                   │ 501           │
│ Dirty Day                                                                                                                   │ 502           │
│ I Would Do For You                                                                                                          │ 503           │
│ Wear You To The Ball                                                                                                        │ 504           │
│ C'est La Vie                                                                                                                │ 505           │
│ Where Have All The Good Times Gone?                                                                                         │ 506           │
│ Dancing In The Street                                                                                                       │ 507           │
│ Eruption                                                                                                                    │ 508           │
│ Jump                                                                                                                        │ 509           │
│ Right Now                                                                                                                   │ 510           │
│ Eruption                                                                                                                    │ 511           │
│ Feel Your Love Tonight                                                                                                      │ 512           │
│ One I Want                                                                                                                  │ 513           │
│ Year to the Day                                                                                                             │ 514           │
│ Big Machine                                                                                                                 │ 515           │
│ Dirty Little Thing                                                                                                          │ 516           │
│ So Por Amor                                                                                                                 │ 517           │
│ Here I Go Again                                                                                                             │ 518           │
│ The Deeper The Love                                                                                                         │ 519           │
│ Seu Balancê                                                                                                                 │ 520           │
│ Sapopemba e Maxambomba                                                                                                      │ 521           │
│ The Man Behind the Curtain                                                                                                  │ 522           │
│ The Dundies                                                                                                                 │ 523           │
│ Christmas Party                                                                                                             │ 524           │
│ Michael's Birthday                                                                                                          │ 525           │
│ Diwali                                                                                                                      │ 526           │
│ Phyllis's Wedding                                                                                                           │ 527           │
│ How to Stop an Exploding Man                                                                                                │ 528           │
│ The Long Patrol                                                                                                             │ 529           │
│ Baltar's Escape                                                                                                             │ 530           │
│ Experiment In Terra                                                                                                         │ 531           │
│ Take the Celestra                                                                                                           │ 532           │
│ Pilot                                                                                                                       │ 533           │
│ Through the Looking Glass, Pt. 1                                                                                            │ 534           │
│ #9 Dream                                                                                                                    │ 535           │
│ Give Peace a Chance                                                                                                         │ 536           │
│ Whatever Gets You Thru the Night                                                                                            │ 537           │
│ Gimme Some Truth                                                                                                            │ 538           │
│ Jealous Guy                                                                                                                 │ 539           │
│ Beautiful Boy                                                                                                               │ 540           │
│ Gimme Some Truth                                                                                                            │ 541           │
│ Sympton of the Universe                                                                                                     │ 542           │
│ War Pigs                                                                                                                    │ 543           │
│ Never Say Die                                                                                                               │ 544           │
│ The Zoo                                                                                                                     │ 545           │
│ I Can't Explain                                                                                                             │ 546           │
│ Put Your Head Out                                                                                                           │ 547           │
│ Danny Boy, Danny Boy                                                                                                        │ 548           │
│ One For The Road                                                                                                            │ 549           │
│ Chapa o Coco                                                                                                                │ 550           │
│ Todo o Carnaval tem seu Fim                                                                                                 │ 551           │
│ Funk de Bamba                                                                                                               │ 552           │
│ The Beginning of the End                                                                                                    │ 553           │
│ Meet Kevin Johnson                                                                                                          │ 554           │
│ Muita Bobeira                                                                                                               │ 555           │
│ Say Hello 2 Heaven                                                                                                          │ 556           │
│ All Night Thing                                                                                                             │ 557           │
│ Scar On the Sky                                                                                                             │ 558           │
│ Until We Fall                                                                                                               │ 559           │
│ Show Me How to Live (Live at the Quart Festival)                                                                            │ 560           │
│ The Messiah: Behold, I Tell You a Mystery... The Trumpet Shall Sound                                                        │ 561           │
│ Requiem, Op.48: 4. Pie Jesu                                                                                                 │ 562           │
│ Branch Closing                                                                                                              │ 563           │
│ Piano Sonata No. 14 in C Sharp Minor, Op. 27, No. 2, "Moonlight": I. Adagio sostenuto                                       │ 564           │
│ Symphonie Fantastique, Op. 14: V. Songe d'une nuit du sabbat                                                                │ 565           │
│ Rehab                                                                                                                       │ 566           │
│ He Can Only Hold Her                                                                                                        │ 567           │
│ Slowness                                                                                                                    │ 568           │
│ Prometheus Overture, Op. 43                                                                                                 │ 569           │
│ Sonata for Solo Violin: IV: Presto                                                                                          │ 570           │
│ Suite No. 3 in D, BWV 1068: III. Gavotte I & II                                                                             │ 571           │
│ Adios nonino                                                                                                                │ 572           │
│ Act IV, Symphony                                                                                                            │ 573           │
│ Music for the Funeral of Queen Mary: VI. "Thou Knowest, Lord, the Secrets of Our Hearts"                                    │ 574           │
│ Partita in E Major, BWV 1006A: I. Prelude                                                                                   │ 575           │
│ Sing Joyfully                                                                                                               │ 576           │
│ Étude 1, In C Major - Preludio (Presto) - Liszt                                                                             │ 577           │
│ String Quartet No. 12 in C Minor, D. 703 "Quartettsatz": II. Andante - Allegro assai                                        │ 578           │
│ For Those About To Rock (We Salute You)                                                                                     │ 579           │
│ Princess of the Dawn                                                                                                        │ 580           │
│ Snowballed                                                                                                                  │ 581           │
│ Night Of The Long Knives                                                                                                    │ 582           │
│ Problem Child                                                                                                               │ 583           │
│ Rag Doll                                                                                                                    │ 584           │
│ Blind Man                                                                                                                   │ 585           │
│ Livin' On The Edge                                                                                                          │ 586           │
│ Forgiven                                                                                                                    │ 587           │
│ Wake Up                                                                                                                     │ 588           │
│ I Can't Remember                                                                                                            │ 589           │
│ I Know Somethin (Bout You)                                                                                                  │ 590           │
│ Ligia                                                                                                                       │ 591           │
│ Canta, Canta Mais                                                                                                           │ 592           │
│ Cochise                                                                                                                     │ 593           │
│ Hypnotize                                                                                                                   │ 594           │
│ Drown Me Slowly                                                                                                             │ 595           │
│ Long Tall Sally                                                                                                             │ 596           │
│ Good Golly Miss Molly                                                                                                       │ 597           │
│ Do what cha wanna                                                                                                           │ 598           │
│ A.N.D.R.O.T.A.Z.                                                                                                            │ 599           │
│ The Beginning...At Last                                                                                                     │ 600           │
│ Tomorrow's Dream                                                                                                            │ 601           │
│ Smoked Pork                                                                                                                 │ 602           │
│ Voodoo                                                                                                                      │ 603           │
│ Chemical Wedding                                                                                                            │ 604           │
│ Realword                                                                                                                    │ 605           │
│ Meditação                                                                                                                   │ 606           │
│ Terra                                                                                                                       │ 607           │
│ Eclipse Oculto                                                                                                              │ 608           │
│ Bem Devagar                                                                                                                 │ 609           │
│ Saudosismo                                                                                                                  │ 610           │
│ Sozinho                                                                                                                     │ 611           │
│ Mel                                                                                                                         │ 612           │
│ Odara                                                                                                                       │ 613           │
│ Atrás Da Verd-E-Rosa Só Não Vai Quem Já Morreu                                                                              │ 614           │
│ Sozinho (Caêdrum 'n' Bass)                                                                                                  │ 615           │
│ Samba De Orly                                                                                                               │ 616           │
│ O Que Será (À Flor Da Terra)                                                                                                │ 617           │
│ Minha Historia                                                                                                              │ 618           │
│ Geni E O Zepelim                                                                                                            │ 619           │
│ Construção / Deus Lhe Pague                                                                                                 │ 620           │
│ Um Passeio No Mundo Livre                                                                                                   │ 621           │
│ Manguetown                                                                                                                  │ 622           │
│ Criança De Domingo                                                                                                          │ 623           │
│ Banditismo Por Uma Questa                                                                                                   │ 624           │
│ Da Lama Ao Caos                                                                                                             │ 625           │
│ Computadores Fazem Arte                                                                                                     │ 626           │
│ Extra                                                                                                                       │ 627           │
│ Onde Você Mora?                                                                                                             │ 628           │
│ Onde Você Mora?                                                                                                             │ 629           │
│ Na Frente Da TV                                                                                                             │ 630           │
│ Amor Demais                                                                                                                 │ 631           │
│ Tapa Aqui, Descobre Ali                                                                                                     │ 632           │
│ My Love                                                                                                                     │ 633           │
│ Travelling Riverside Blues                                                                                                  │ 634           │
│ Sam With The Showing Scalp Flat Top                                                                                         │ 635           │
│ Gavioes 2001                                                                                                                │ 636           │
│ Morro Da Casa Verde 2001                                                                                                    │ 637           │
│ Samba da Bençaco                                                                                                            │ 638           │
│ Maria Fumaça                                                                                                                │ 639           │
│ Only A Dream In Rio                                                                                                         │ 640           │
│ Só Tinha De Ser Com Você                                                                                                    │ 641           │
│ Whiskey In The Jar                                                                                                          │ 642           │
│ It's A Hard Life                                                                                                            │ 643           │
│ Sure Know Something                                                                                                         │ 644           │
│ Love Gun                                                                                                                    │ 645           │
│ Deuce                                                                                                                       │ 646           │
│ Shock Me                                                                                                                    │ 647           │
│ She                                                                                                                         │ 648           │
│ Shout It Out Loud                                                                                                           │ 649           │
│ Calling Dr. Love                                                                                                            │ 650           │
│ Strutter                                                                                                                    │ 651           │
│ Cold Gin                                                                                                                    │ 652           │
│ De La Luz                                                                                                                   │ 653           │
│ Surrender                                                                                                                   │ 654           │
│ When Evening Falls                                                                                                          │ 655           │
│ Poprocks And Coke                                                                                                           │ 656           │
│ When I Come Around                                                                                                          │ 657           │
│ Brain Stew                                                                                                                  │ 658           │
│ Redundant                                                                                                                   │ 659           │
│ Into The Light                                                                                                              │ 660           │
│ Cry For Love                                                                                                                │ 661           │
│ Grito De Alerta                                                                                                             │ 662           │
│ Lindo Lago Do Amor                                                                                                          │ 663           │
│ Ponto De Interrogação                                                                                                       │ 664           │
│ Voce Nao Entende Nada - Cotidiano                                                                                           │ 665           │
│ O Leaozinho                                                                                                                 │ 666           │
│ Top Top                                                                                                                     │ 667           │
│ Posso Perder Minha Mulher, Minha Mãe, Desde Que Eu Tenha O Rock And Roll                                                    │ 668           │
│ You Fool No One                                                                                                             │ 669           │
│ Viradouro                                                                                                                   │ 670           │
│ Tradição                                                                                                                    │ 671           │
│ Maria Maria                                                                                                                 │ 672           │
│ Entre E Ouça                                                                                                                │ 673           │
│ Agora Que O Dia Acordou                                                                                                     │ 674           │
│ Bye Bye Blackbird                                                                                                           │ 675           │
│ Nefertiti                                                                                                                   │ 676           │
│ Going Down / Highway Star                                                                                                   │ 677           │
│ Boogie Blues                                                                                                                │ 678           │
│ Don't Take Your Love From Me                                                                                                │ 679           │
│ Onde Anda Você                                                                                                              │ 680           │
│ Deixa                                                                                                                       │ 681           │
│ As Rosas Não Falam (Beth Carvalho)                                                                                          │ 682           │
│ Wave (Os Cariocas)                                                                                                          │ 683           │
│ Garota de Ipanema (Dick Farney)                                                                                             │ 684           │
│ Susie Q                                                                                                                     │ 685           │
│ Proud Mary                                                                                                                  │ 686           │
│ Lodi                                                                                                                        │ 687           │
│ Commotion                                                                                                                   │ 688           │
│ Fortunate Son                                                                                                               │ 689           │
│ Who'll Stop The Rain                                                                                                        │ 690           │
│ Long As I Can See The Light                                                                                                 │ 691           │
│ Sweet Hitch-Hiker                                                                                                           │ 692           │
│ Born On The Bayou                                                                                                           │ 693           │
│ Night Time Is The Right Time                                                                                                │ 694           │
│ The Midnight Special                                                                                                        │ 695           │
│ (Wish I Could) Hideaway                                                                                                     │ 696           │
│ Gatas Extraordinárias                                                                                                       │ 697           │
│ Você Passa, Eu Acho Graça (Ao Vivo)                                                                                         │ 698           │
│ Não Sei O Que Eu Quero Da Vida                                                                                              │ 699           │
│ E.C.T.                                                                                                                      │ 700           │
│ Eleanor Rigby                                                                                                               │ 701           │
│ Comin' Home                                                                                                                 │ 702           │
│ Love Child                                                                                                                  │ 703           │
│ Flight Of The Rat                                                                                                           │ 704           │
│ Strange Kind Of Woman                                                                                                       │ 705           │
│ Black Night                                                                                                                 │ 706           │
│ Pictures Of Home                                                                                                            │ 707           │
│ Cascades : I'm Not Your Lover                                                                                               │ 708           │
│ The Cut Runs Deep                                                                                                           │ 709           │
│ Love Don't Mean a Thing                                                                                                     │ 710           │
│ Lick It Up                                                                                                                  │ 711           │
│ Pour Some Sugar On Me                                                                                                       │ 712           │
│ Action                                                                                                                      │ 713           │
│ Groovus Interruptus                                                                                                         │ 714           │
│ Cigano                                                                                                                      │ 715           │
│ Acelerou                                                                                                                    │ 716           │
│ Azul                                                                                                                        │ 717           │
│ Dois Pra Lá, Dois Pra Cá                                                                                                    │ 718           │
│ Maria Rosa                                                                                                                  │ 719           │
│ Lay Down Sally                                                                                                              │ 720           │
│ Knockin On Heavens Door                                                                                                     │ 721           │
│ Wonderful Tonight                                                                                                           │ 722           │
│ Promises                                                                                                                    │ 723           │
│ Signe                                                                                                                       │ 724           │
│ Hey Hey                                                                                                                     │ 725           │
│ Lonely Stranger                                                                                                             │ 726           │
│ Layla                                                                                                                       │ 727           │
│ Walkin' Blues                                                                                                               │ 728           │
│ Old Love                                                                                                                    │ 729           │
│ Last Cup Of Sorrow                                                                                                          │ 730           │
│ Ashes To Ashes                                                                                                              │ 731           │
│ Home Sick Home                                                                                                              │ 732           │
│ Midlife Crisis                                                                                                              │ 733           │
│ Malpractice                                                                                                                 │ 734           │
│ Midnight Cowboy                                                                                                             │ 735           │
│ Star A.D.                                                                                                                   │ 736           │
│ King For A Day                                                                                                              │ 737           │
│ Epic                                                                                                                        │ 738           │
│ The Morning After                                                                                                           │ 739           │
│ Xote Dos Milagres                                                                                                           │ 740           │
│ Principiando/Decolagem                                                                                                      │ 741           │
│ In Your Honor                                                                                                               │ 742           │
│ Free Me                                                                                                                     │ 743           │
│ Over And Out                                                                                                                │ 744           │
│ Disenchanted Lullaby                                                                                                        │ 745           │
│ Hey, Johnny Park!                                                                                                           │ 746           │
│ Walking After You                                                                                                           │ 747           │
│ Summer Love                                                                                                                 │ 748           │
│ Come Fly With Me                                                                                                            │ 749           │
│ Nervosa                                                                                                                     │ 750           │
│ Meu Guarda-Chuva                                                                                                            │ 751           │
│ Juazeiro                                                                                                                    │ 752           │
│ Lamento Sertanejo                                                                                                           │ 753           │
│ Estrela (Live)                                                                                                              │ 754           │
│ Lamento De Carnaval                                                                                                         │ 755           │
│ Beira Mar                                                                                                                   │ 756           │
│ Straight Out Of Line                                                                                                        │ 757           │
│ Holiday                                                                                                                     │ 758           │
│ Boulevard Of Broken Dreams                                                                                                  │ 759           │
│ Are We The Waiting                                                                                                          │ 760           │
│ Give Me Novacaine                                                                                                           │ 761           │
│ Extraordinary Girl                                                                                                          │ 762           │
│ Wake Me Up When September Ends                                                                                              │ 763           │
│ Whatsername                                                                                                                 │ 764           │
│ It's So Easy                                                                                                                │ 765           │
│ Out Ta Get Me                                                                                                               │ 766           │
│ Think About You                                                                                                             │ 767           │
│ Rocket Queen                                                                                                                │ 768           │
│ Don't Cry (Original)                                                                                                        │ 769           │
│ Back off Bitch                                                                                                              │ 770           │
│ Garden of Eden                                                                                                              │ 771           │
│ Coma                                                                                                                        │ 772           │
│ Shotgun Blues                                                                                                               │ 773           │
│ You Could Be Mine                                                                                                           │ 774           │
│ Deep Waters                                                                                                                 │ 775           │
│ Thinking 'Bout Tomorrow                                                                                                     │ 776           │
│ Brighter Than a Thousand Suns                                                                                               │ 777           │
│ Lord of Light                                                                                                               │ 778           │
│ Transylvania                                                                                                                │ 779           │
│ 2 Minutes To Midnight                                                                                                       │ 780           │
│ Wasting Love                                                                                                                │ 781           │
│ Ghost Of The Navigator                                                                                                      │ 782           │
│ Wildest Dreams                                                                                                              │ 783           │
│ Age Of Innocence                                                                                                            │ 784           │
│ Chains Of Misery                                                                                                            │ 785           │
│ 05 - Phantom of the Opera                                                                                                   │ 786           │
│ Genghis Khan                                                                                                                │ 787           │
│ The Trooper                                                                                                                 │ 788           │
│ Running Free                                                                                                                │ 789           │
│ From Here To Eternity                                                                                                       │ 790           │
│ Heaven Can Wait                                                                                                             │ 791           │
│ Holy Smoke                                                                                                                  │ 792           │
│ Where Eagles Dare                                                                                                           │ 793           │
│ Aces High                                                                                                                   │ 794           │
│ The Wicker Man                                                                                                              │ 795           │
│ The Number Of The Beast                                                                                                     │ 796           │
│ Hallowed Be Thy Name                                                                                                        │ 797           │
│ Sanctuary                                                                                                                   │ 798           │
│ Moonchild                                                                                                                   │ 799           │
│ Can I Play With Madness                                                                                                     │ 800           │
│ Seventh Son of a Seventh Son                                                                                                │ 801           │
│ The Clairvoyant                                                                                                             │ 802           │
│ Caught Somewhere in Time                                                                                                    │ 803           │
│ Sea of Madness                                                                                                              │ 804           │
│ De Ja Vu                                                                                                                    │ 805           │
│ Gangland                                                                                                                    │ 806           │
│ The Number Of The Beast                                                                                                     │ 807           │
│ Man On The Edge                                                                                                             │ 808           │
│ Judgement Of Heaven                                                                                                         │ 809           │
│ The Unbeliever                                                                                                              │ 810           │
│ The Educated Fool                                                                                                           │ 811           │
│ Out Of Sight                                                                                                                │ 812           │
│ Get Up (I Feel Like Being A) Sex Machine                                                                                    │ 813           │
│ It's Too Funky In Here                                                                                                      │ 814           │
│ Too Young To Die                                                                                                            │ 815           │
│ Blow Your Mind                                                                                                              │ 816           │
│ Soul Education                                                                                                              │ 817           │
│ King For A Day                                                                                                              │ 818           │
│ Manifest Destiny                                                                                                            │ 819           │
│ Rollover D.J.                                                                                                               │ 820           │
│ Lazy Gun                                                                                                                    │ 821           │
│ Fire                                                                                                                        │ 822           │
│ Highway Chile                                                                                                               │ 823           │
│ Midnight                                                                                                                    │ 824           │
│ Charles Anjo 45                                                                                                             │ 825           │
│ Vou Pra Ai                                                                                                                  │ 826           │
│ Onibusfobia                                                                                                                 │ 827           │
│ Papelão                                                                                                                     │ 828           │
│ Hot Rockin'                                                                                                                 │ 829           │
│ Ram It Down                                                                                                                 │ 830           │
│ Sure Know Something                                                                                                         │ 831           │
│ Rock And Roll All Nite                                                                                                      │ 832           │
│ Whole Lotta Love (Medley)                                                                                                   │ 833           │
│ Dancing Days                                                                                                                │ 834           │
│ D'Yer Mak'er                                                                                                                │ 835           │
│ No Quarter                                                                                                                  │ 836           │
│ In The Evening                                                                                                              │ 837           │
│ Fool In The Rain                                                                                                            │ 838           │
│ Carouselambra                                                                                                               │ 839           │
│ I'm Gonna Crawl                                                                                                             │ 840           │
│ Rock & Roll                                                                                                                 │ 841           │
│ Stairway To Heaven                                                                                                          │ 842           │
│ When The Levee Breaks                                                                                                       │ 843           │
│ Dazed and Confused                                                                                                          │ 844           │
│ I Can't Quit You Baby                                                                                                       │ 845           │
│ The Lemon Song                                                                                                              │ 846           │
│ Ramble On                                                                                                                   │ 847           │
│ Friends                                                                                                                     │ 848           │
│ That's The Way                                                                                                              │ 849           │
│ Ten Years Gone                                                                                                              │ 850           │
│ Achilles Last Stand                                                                                                         │ 851           │
│ Tea For One                                                                                                                 │ 852           │
│ No Quarter                                                                                                                  │ 853           │
│ Música De Trabalho                                                                                                          │ 854           │
│ Dezesseis                                                                                                                   │ 855           │
│ O Livro Dos Dias                                                                                                            │ 856           │
│ Indios                                                                                                                      │ 857           │
│ Dezesseis                                                                                                                   │ 858           │
│ American Woman                                                                                                              │ 859           │
│ Honolulu                                                                                                                    │ 860           │
│ Brumário                                                                                                                    │ 861           │
│ Tudo Bem                                                                                                                    │ 862           │
│ Pseudo Silk Kimono                                                                                                          │ 863           │
│ White Feather                                                                                                               │ 864           │
│ De Noite Na Cama                                                                                                            │ 865           │
│ O Xote Das Meninas                                                                                                          │ 866           │
│ Seek And You Shall Find                                                                                                     │ 867           │
│ Heavy Love Affair                                                                                                           │ 868           │
│ Shakes and Ladders                                                                                                          │ 869           │
│ Nothing Else Matters                                                                                                        │ 870           │
│ Last Caress/Green Hell                                                                                                      │ 871           │
│ Motorbreath                                                                                                                 │ 872           │
│ Jump In The Fire                                                                                                            │ 873           │
│ (Anesthesia) Pulling Teeth                                                                                                  │ 874           │
│ Phantom Lord                                                                                                                │ 875           │
│ Seek & Destroy                                                                                                              │ 876           │
│ Ain't My Bitch                                                                                                              │ 877           │
│ The House Jack Built                                                                                                        │ 878           │
│ King Nothing                                                                                                                │ 879           │
│ Bleeding Me                                                                                                                 │ 880           │
│ Mama Said                                                                                                                   │ 881           │
│ Battery                                                                                                                     │ 882           │
│ Disposable Heroes                                                                                                           │ 883           │
│ Fuel                                                                                                                        │ 884           │
│ Better Than You                                                                                                             │ 885           │
│ Where The Wild Things Are                                                                                                   │ 886           │
│ Ride The Lightning                                                                                                          │ 887           │
│ The Call Of Ktulu                                                                                                           │ 888           │
│ My World                                                                                                                    │ 889           │
│ Blackened                                                                                                                   │ 890           │
│ The Frayed Ends Of Sanity                                                                                                   │ 891           │
│ My Ship                                                                                                                     │ 892           │
│ I Don't Wanna Be Kissed (By Anyone But You)                                                                                 │ 893           │
│ A Noite Do Meu Bem                                                                                                          │ 894           │
│ Brasil                                                                                                                      │ 895           │
│ Saudade Dos Aviões Da Panair (Conversando No Bar)                                                                           │ 896           │
│ Caso Você Queira Saber                                                                                                      │ 897           │
│ Dance                                                                                                                       │ 898           │
│ Aos Leões                                                                                                                   │ 899           │
│ Demorou!                                                                                                                    │ 900           │
│ Home Sweet Home                                                                                                             │ 901           │
│ Intro                                                                                                                       │ 902           │
│ Scentless Apprentice                                                                                                        │ 903           │
│ In Bloom                                                                                                                    │ 904           │
│ On A Plain                                                                                                                  │ 905           │
│ Mundaréu                                                                                                                    │ 906           │
│ Nossa Gente (Avisa Là)                                                                                                      │ 907           │
│ Revolta Olodum                                                                                                              │ 908           │
│ Vai Valer                                                                                                                   │ 909           │
│ Nebulosa Do Amor                                                                                                            │ 910           │
│ Caleidoscópio                                                                                                               │ 911           │
│ Trac Trac                                                                                                                   │ 912           │
│ Mensagen De Amor (2000)                                                                                                     │ 913           │
│ La Bella Luna                                                                                                               │ 914           │
│ Uma Brasileira                                                                                                              │ 915           │
│ Saber Amar                                                                                                                  │ 916           │
│ O Amor Nao Sabe Esperar                                                                                                     │ 917           │
│ Caleidoscópio                                                                                                               │ 918           │
│ Lanterna Dos Afogados                                                                                                       │ 919           │
│ Meu Erro                                                                                                                    │ 920           │
│ Selvagem                                                                                                                    │ 921           │
│ Bark at the Moon                                                                                                            │ 922           │
│ Mama, I'm Coming Home                                                                                                       │ 923           │
│ Believer                                                                                                                    │ 924           │
│ Iron Man                                                                                                                    │ 925           │
│ Shining In The Light                                                                                                        │ 926           │
│ Heart In Your Hand                                                                                                          │ 927           │
│ United Colours                                                                                                              │ 928           │
│ Miss Sarajevo                                                                                                               │ 929           │
│ Theme From The Swan                                                                                                         │ 930           │
│ Women In Uniform                                                                                                            │ 931           │
│ Corduroy                                                                                                                    │ 932           │
│ MFC                                                                                                                         │ 933           │
│ F*Ckin' Up                                                                                                                  │ 934           │
│ Gone                                                                                                                        │ 935           │
│ Ghost                                                                                                                       │ 936           │
│ Arc                                                                                                                         │ 937           │
│ Porch                                                                                                                       │ 938           │
│ W.M.A.                                                                                                                      │ 939           │
│ Jah Seh No                                                                                                                  │ 940           │
│ Crystal Ball                                                                                                                │ 941           │
│ Brain Damage                                                                                                                │ 942           │
│ O Bicho Tá Pregando                                                                                                         │ 943           │
│ Bohemian Rhapsody                                                                                                           │ 944           │
│ Somebody To Love                                                                                                            │ 945           │
│ We Are The Champions                                                                                                        │ 946           │
│ My Melancholy Blues                                                                                                         │ 947           │
│ Untitled                                                                                                                    │ 948           │
│ How The West Was Won And Where It Got Us                                                                                    │ 949           │
│ The Wake-Up Bomb                                                                                                            │ 950           │
│ Undertow                                                                                                                    │ 951           │
│ Leave                                                                                                                       │ 952           │
│ Bittersweet Me                                                                                                              │ 953           │
│ Binky The Doormat                                                                                                           │ 954           │
│ So Fast, So Numb                                                                                                            │ 955           │
│ Electrolite                                                                                                                 │ 956           │
│ Endgame                                                                                                                     │ 957           │
│ Country Feedback                                                                                                            │ 958           │
│ Talk About The Passion                                                                                                      │ 959           │
│ Green Grow The Rushes                                                                                                       │ 960           │
│ I Believe                                                                                                                   │ 961           │
│ It's The End Of The World As We Know It (And I Feel Fine)                                                                   │ 962           │
│ Puteiro Em João Pessoa                                                                                                      │ 963           │
│ O Dia Em Que A Terra Parou                                                                                                  │ 964           │
│ Todo Mundo Explica                                                                                                          │ 965           │
│ Rock Das Aranhas (Ao Vivo) (Live)                                                                                           │ 966           │
│ I Could Have Lied                                                                                                           │ 967           │
│ Naked In The Rain                                                                                                           │ 968           │
│ By The Way                                                                                                                  │ 969           │
│ Can't Stop                                                                                                                  │ 970           │
│ On Mercury                                                                                                                  │ 971           │
│ Californication                                                                                                             │ 972           │
│ Road Trippin'                                                                                                               │ 973           │
│ Closer To The Heart                                                                                                         │ 974           │
│ Persuasion                                                                                                                  │ 975           │
│ Funky Piano                                                                                                                 │ 976           │
│ Stars                                                                                                                       │ 977           │
│ Três Lados                                                                                                                  │ 978           │
│ Ali                                                                                                                         │ 979           │
│ Um Dia Qualquer                                                                                                             │ 980           │
│ My Mistake                                                                                                                  │ 981           │
│ Soot & Stars                                                                                                                │ 982           │
│ Bullet With Butterfly Wings                                                                                                 │ 983           │
│ Real Love                                                                                                                   │ 984           │
│ Rusty Cage                                                                                                                  │ 985           │
│ Starburst                                                                                                                   │ 986           │
│ Heliopolis                                                                                                                  │ 987           │
│ It Doesn't Matter                                                                                                           │ 988           │
│ End Of Romanticism                                                                                                          │ 989           │
│ Crossfire                                                                                                                   │ 990           │
│ Let Me Love You Baby                                                                                                        │ 991           │
│ Travis Walk                                                                                                                 │ 992           │
│ Scratch-N-Sniff                                                                                                             │ 993           │
│ Riviera Paradise                                                                                                            │ 994           │
│ No Memory                                                                                                                   │ 995           │
│ Piece Of Pie                                                                                                                │ 996           │
│ Where The River Goes                                                                                                        │ 997           │
│ Cigaro                                                                                                                      │ 998           │
│ Question!                                                                                                                   │ 999           │
│ The Sun Road                                                                                                                │ 1000          │
│ Chaos-Control                                                                                                               │ 1001          │
│ Cursed Diamonds                                                                                                             │ 1002          │
│ High Head Blues                                                                                                             │ 1003          │
│ Hard To Handle                                                                                                              │ 1004          │
│ (White Man) In Hammersmith Palais                                                                                           │ 1005          │
│ Bankrobber                                                                                                                  │ 1006          │
│ Rock The Casbah                                                                                                             │ 1007          │
│ Breathe                                                                                                                     │ 1008          │
│ True Believers                                                                                                              │ 1009          │
│ Love Removal Machine                                                                                                        │ 1010          │
│ Sweet Soul Sister                                                                                                           │ 1011          │
│ I Looked At You                                                                                                             │ 1012          │
│ De Do Do Do, De Da Da Da                                                                                                    │ 1013          │
│ Time Is On My Side                                                                                                          │ 1014          │
│ Under My Thumb                                                                                                              │ 1015          │
│ Saint Of Me                                                                                                                 │ 1016          │
│ You Got Me Rocking                                                                                                          │ 1017          │
│ Suck On The Jugular                                                                                                         │ 1018          │
│ Sister Awake                                                                                                                │ 1019          │
│ Life Line                                                                                                                   │ 1020          │
│ Babylon                                                                                                                     │ 1021          │
│ Boris The Spider                                                                                                            │ 1022          │
│ Let's See Action                                                                                                            │ 1023          │
│ Música No Ar                                                                                                                │ 1024          │
│ Salve Nossa Senhora                                                                                                         │ 1025          │
│ Você Fugiu                                                                                                                  │ 1026          │
│ Compadre                                                                                                                    │ 1027          │
│ Réu Confesso                                                                                                                │ 1028          │
│ Gostava Tanto De Você                                                                                                       │ 1029          │
│ Não Quero Dinheiro                                                                                                          │ 1030          │
│ A Festa Do Santo Reis                                                                                                       │ 1031          │
│ Padre Cícero                                                                                                                │ 1032          │
│ Balanço                                                                                                                     │ 1033          │
│ Comida                                                                                                                      │ 1034          │
│ Os Cegos Do Castelo                                                                                                         │ 1035          │
│ Flores                                                                                                                      │ 1036          │
│ Cabeça Dinossauro                                                                                                           │ 1037          │
│ Homem Primata (Vinheta)                                                                                                     │ 1038          │
│ Sonifera Ilha                                                                                                               │ 1039          │
│ Amanhã Não Se Sabe                                                                                                          │ 1040          │
│ Eu E Ela                                                                                                                    │ 1041          │
│ Exodus, Pt. 1                                                                                                               │ 1042          │
│ Unfinished Business                                                                                                         │ 1043          │
│ A Day In the Life                                                                                                           │ 1044          │
│ Genesis                                                                                                                     │ 1045          │
│ Nothing to Hide                                                                                                             │ 1046          │
│ Distractions                                                                                                                │ 1047          │
│ Adrift                                                                                                                      │ 1048          │
│ ...And Found                                                                                                                │ 1049          │
│ The Other 48 Days                                                                                                           │ 1050          │
│ The 23rd Psalm                                                                                                              │ 1051          │
│ The Long Con                                                                                                                │ 1052          │
│ The Whole Truth                                                                                                             │ 1053          │
│ S.O.S.                                                                                                                      │ 1054          │
│ Exodus (Part 2) [Season Finale]                                                                                             │ 1055          │
│ The Fly                                                                                                                     │ 1056          │
│ Walk On                                                                                                                     │ 1057          │
│ Spanish Eyes                                                                                                                │ 1058          │
│ Hallelujah Here She Comes                                                                                                   │ 1059          │
│ City Of Blinding Lights                                                                                                     │ 1060          │
│ Mofo                                                                                                                        │ 1061          │
│ All Along The Watchtower                                                                                                    │ 1062          │
│ I Still Haven't Found What I'm Looking for                                                                                  │ 1063          │
│ Freedom For My People                                                                                                       │ 1064          │
│ Pride (In The Name Of Love)                                                                                                 │ 1065          │
│ Love Rescue Me                                                                                                              │ 1066          │
│ Heartland                                                                                                                   │ 1067          │
│ The Star Spangled Banner                                                                                                    │ 1068          │
│ All I Want Is You                                                                                                           │ 1069          │
│ New Year's Day                                                                                                              │ 1070          │
│ Bad                                                                                                                         │ 1071          │
│ Sweetest Thing                                                                                                              │ 1072          │
│ All I Want Is You                                                                                                           │ 1073          │
│ Like A Song...                                                                                                              │ 1074          │
│ Red Light                                                                                                                   │ 1075          │
│ Babyface                                                                                                                    │ 1076          │
│ The First Time                                                                                                              │ 1077          │
│ Homely Girl                                                                                                                 │ 1078          │
│ Bring Me Your Cup                                                                                                           │ 1079          │
│ Hang 'Em High                                                                                                               │ 1080          │
│ Little Guitars (Intro)                                                                                                      │ 1081          │
│ Ain't Talkin' 'bout Love                                                                                                    │ 1082          │
│ Panama                                                                                                                      │ 1083          │
│ Can't Stop Loving You                                                                                                       │ 1084          │
│ You Really Got Me                                                                                                           │ 1085          │
│ Neworld                                                                                                                     │ 1086          │
│ Primary                                                                                                                     │ 1087          │
│ Headspace                                                                                                                   │ 1088          │
│ Tudo Na Mais Santa Paz                                                                                                      │ 1089          │
│ Samba Do Jato                                                                                                               │ 1090          │
│ Now You're Gone                                                                                                             │ 1091          │
│ Faixa Amarela                                                                                                               │ 1092          │
│ Sem Essa de Malandro Agulha                                                                                                 │ 1093          │
│ Verdade                                                                                                                     │ 1094          │
│ Diversity Day                                                                                                               │ 1095          │
│ Halloween                                                                                                                   │ 1096          │
│ The Carpet                                                                                                                  │ 1097          │
│ Gay Witch Hunt                                                                                                              │ 1098          │
│ A Benihana Christmas, Pts. 1 & 2                                                                                            │ 1099          │
│ How to Stop an Exploding Man                                                                                                │ 1100          │
│ Through a Looking Glass                                                                                                     │ 1101          │
│ Your Time Is Gonna Come                                                                                                     │ 1102          │
│ Battlestar Galactica, Pt. 2                                                                                                 │ 1103          │
│ Lost Planet of the Gods, Pt. 1                                                                                              │ 1104          │
│ The Lost Warrior                                                                                                            │ 1105          │
│ The Gun On Ice Planet Zero, Pt. 1                                                                                           │ 1106          │
│ The Magnificent Warriors                                                                                                    │ 1107          │
│ The Living Legend, Pt. 1                                                                                                    │ 1108          │
│ War of the Gods, Pt. 2                                                                                                      │ 1109          │
│ Greetings from Earth, Pt. 2                                                                                                 │ 1110          │
│ The Hand of God                                                                                                             │ 1111          │
│ Instant Karma                                                                                                               │ 1112          │
│ Cold Turkey                                                                                                                 │ 1113          │
│ Oh, My Love                                                                                                                 │ 1114          │
│ Imagine                                                                                                                     │ 1115          │
│ [Just Like] Starting Over                                                                                                   │ 1116          │
│ Fairies Wear Boots                                                                                                          │ 1117          │
│ Sabbath, Bloody Sabbath                                                                                                     │ 1118          │
│ Loving You Sunday Morning                                                                                                   │ 1119          │
│ Tease Me Please Me                                                                                                          │ 1120          │
│ Top O' The Morning To Ya                                                                                                    │ 1121          │
│ Guess Who's Back                                                                                                            │ 1122          │
│ Feel It                                                                                                                     │ 1123          │
│ Um Lugar ao Sol                                                                                                             │ 1124          │
│ Chega no Suingue                                                                                                            │ 1125          │
│ The Economist                                                                                                               │ 1126          │
│ Din Din Wo (Little Child)                                                                                                   │ 1127          │
│ Something Nice Back Home                                                                                                    │ 1128          │
│ Call Me a Dog                                                                                                               │ 1129          │
│ Safe and Sound                                                                                                              │ 1130          │
│ Disappearing Act                                                                                                            │ 1131          │
│ Shape of Things to Come                                                                                                     │ 1132          │
│ Canon and Gigue in D Major: I. Canon                                                                                        │ 1133          │
│ Symphony No. 104 in D Major "London": IV. Finale: Spiritoso                                                                 │ 1134          │
│ Jupiter, the Bringer of Jollity                                                                                             │ 1135          │
│ Scheherazade, Op. 35: I. The Sea and Sindbad's Ship                                                                         │ 1136          │
│ Two Fanfares for Orchestra: II. Short Ride in a Fast Machine                                                                │ 1137          │
│ Rehab                                                                                                                       │ 1138          │
│ You Know I'm No Good                                                                                                        │ 1139          │
│ Me & Mr. Jones                                                                                                              │ 1140          │
│ Back to Black                                                                                                               │ 1141          │
│ Tears Dry On Their Own                                                                                                      │ 1142          │
│ Some Unholy War                                                                                                             │ 1143          │
│ You Know I'm No Good (feat. Ghostface Killah)                                                                               │ 1144          │
│ Intro / Stronger Than Me                                                                                                    │ 1145          │
│ F**k Me Pumps                                                                                                               │ 1146          │
│ Take the Box                                                                                                                │ 1147          │
│ Amy Amy Amy (Outro)                                                                                                         │ 1148          │
│ A Midsummer Night's Dream, Op.61 Incidental Music: No.7 Notturno                                                            │ 1149          │
│ Symphony No. 3 Op. 36 for Orchestra and Soprano "Symfonia Piesni Zalosnych" \ Lento E Largo - Tranquillissimo               │ 1150          │
│ Symphony No. 2: III. Allegro vivace                                                                                         │ 1151          │
│ Metopes, Op. 29: Calypso                                                                                                    │ 1152          │
│ Pini Di Roma (Pinien Von Rom) \ I Pini Della Via Appia                                                                      │ 1153          │
│ Balls to the Wall                                                                                                           │ 1154          │
│ Inject The Venom                                                                                                            │ 1155          │
│ Spellbound                                                                                                                  │ 1156          │
│ Overdose                                                                                                                    │ 1157          │
│ What It Takes                                                                                                               │ 1158          │
│ Deuces Are Wild                                                                                                             │ 1159          │
│ All I Really Want                                                                                                           │ 1160          │
│ You Learn                                                                                                                   │ 1161          │
│ Sea Of Sorrow                                                                                                               │ 1162          │
│ Real Thing                                                                                                                  │ 1163          │
│ Falando De Amor                                                                                                             │ 1164          │
│ The Unforgiven                                                                                                              │ 1165          │
│ Like a Stone                                                                                                                │ 1166          │
│ The Last Remaining Light                                                                                                    │ 1167          │
│ Yesterday To Tomorrow                                                                                                       │ 1168          │
│ C'Mon Everybody                                                                                                             │ 1169          │
│ Spanish moss-"A sound portrait"-Spanish moss                                                                                │ 1170          │
│ All For You                                                                                                                 │ 1171          │
│ The Begining... At Last                                                                                                     │ 1172          │
│ N.I.B.                                                                                                                      │ 1173          │
│ Snowblind                                                                                                                   │ 1174          │
│ A Statistic                                                                                                                 │ 1175          │
│ Chemical Wedding                                                                                                            │ 1176          │
│ The Tower                                                                                                                   │ 1177          │
│ Killing Floor                                                                                                               │ 1178          │
│ Gates Of Urizen                                                                                                             │ 1179          │
│ Trupets Of Jericho                                                                                                          │ 1180          │
│ The Alchemist                                                                                                               │ 1181          │
│ First Time I Met The Blues                                                                                                  │ 1182          │
│ Stone Crazy                                                                                                                 │ 1183          │
│ When My Left Eye Jumps                                                                                                      │ 1184          │
│ My Time After Awhile                                                                                                        │ 1185          │
│ Prenda Minha                                                                                                                │ 1186          │
│ Texto "Verdade Tropical"                                                                                                    │ 1187          │
│ Carolina                                                                                                                    │ 1188          │
│ Linha Do Equador                                                                                                            │ 1189          │
│ Vida Boa                                                                                                                    │ 1190          │
│ Vai Passar                                                                                                                  │ 1191          │
│ Morena De Angola                                                                                                            │ 1192          │
│ Meu Caro Amigo                                                                                                              │ 1193          │
│ Mateus Enter                                                                                                                │ 1194          │
│ Samba Do Lado                                                                                                               │ 1195          │
│ Um Satélite Na Cabeça                                                                                                       │ 1196          │
│ Amor De Muito                                                                                                               │ 1197          │
│ Banditismo Por Uma Questa                                                                                                   │ 1198          │
│ Maracatu De Tiro Certeiro                                                                                                   │ 1199          │
│ Soldado Da Paz                                                                                                              │ 1200          │
│ Pensamento                                                                                                                  │ 1201          │
│ Falar A Verdade                                                                                                             │ 1202          │
│ Eu Também Quero Beijar                                                                                                      │ 1203          │
│ Felicidade Urgente                                                                                                          │ 1204          │
│ Levada do Amor (Ailoviu)                                                                                                    │ 1205          │
│ Communication Breakdown                                                                                                     │ 1206          │
│ I Can't Quit You Baby(2)                                                                                                    │ 1207          │
│ Advance Romance                                                                                                             │ 1208          │
│ Camisa Verde 2001                                                                                                           │ 1209          │
│ Mas Que Nada                                                                                                                │ 1210          │
│ Mistério da Raça                                                                                                            │ 1211          │
│ Tarde Em Itapoã                                                                                                             │ 1212          │
│ Um Jantar Pra Dois                                                                                                          │ 1213          │
│ Whiskey In The Jar                                                                                                          │ 1214          │
│ Tuesday's Gone                                                                                                              │ 1215          │
│ The More I See                                                                                                              │ 1216          │
│ Under Pressure                                                                                                              │ 1217          │
│ I Want It All                                                                                                               │ 1218          │
│ Innuendo                                                                                                                    │ 1219          │
│ Breakthru                                                                                                                   │ 1220          │
│ Headlong                                                                                                                    │ 1221          │
│ I'm Going Slightly Mad                                                                                                      │ 1222          │
│ The Show Must Go On                                                                                                         │ 1223          │
│ Hard Luck Woman                                                                                                             │ 1224          │
│ Goin' Blind                                                                                                                 │ 1225          │
│ I Was Made For Loving You                                                                                                   │ 1226          │
│ Beth                                                                                                                        │ 1227          │
│ Plaster Caster                                                                                                              │ 1228          │
│ Playtime                                                                                                                    │ 1229          │
│ J Squared                                                                                                                   │ 1230          │
│ Basket Case                                                                                                                 │ 1231          │
│ Jaded                                                                                                                       │ 1232          │
│ Nice Guys Finish Last                                                                                                       │ 1233          │
│ River Song                                                                                                                  │ 1234          │
│ Living On Love                                                                                                              │ 1235          │
│ Não Dá Mais Pra Segurar (Explode Coração)                                                                                   │ 1236          │
│ Eu Apenas Queria Que Voçê Soubesse                                                                                          │ 1237          │
│ Um Indio                                                                                                                    │ 1238          │
│ Fora Da Ordem                                                                                                               │ 1239          │
│ Chão De Estrelas                                                                                                            │ 1240          │
│ Stormbringer                                                                                                                │ 1241          │
│ Houses Of The Holy                                                                                                          │ 1242          │
│ Mangueira                                                                                                                   │ 1243          │
│ Love Of My Life                                                                                                             │ 1244          │
│ El Farol                                                                                                                    │ 1245          │
│ Um Love                                                                                                                     │ 1246          │
│ Jeru                                                                                                                        │ 1247          │
│ So What                                                                                                                     │ 1248          │
│ Black Satin                                                                                                                 │ 1249          │
│ Blue Rythm Fantasy                                                                                                          │ 1250          │
│ Bop Boogie                                                                                                                  │ 1251          │
│ Onde Anda Você                                                                                                              │ 1252          │
│ Samba Da Volta                                                                                                              │ 1253          │
│ Canto De Ossanha                                                                                                            │ 1254          │
│ Formosa                                                                                                                     │ 1255          │
│ Minha Namorada                                                                                                              │ 1256          │
│ Berimbau                                                                                                                    │ 1257          │
│ Pot-Pourri N.º 2                                                                                                            │ 1258          │
│ Carta Ao Tom 74                                                                                                             │ 1259          │
│ Pela Luz dos Olhos Teus (Miúcha e Tom Jobim)                                                                                │ 1260          │
│ Coração do Agreste (Fafá de Belém)                                                                                          │ 1261          │
│ Romaria (Renato Teixeira)                                                                                                   │ 1262          │
│ Preciso Apender a Viver Só (Maysa)                                                                                          │ 1263          │
│ Bad Moon Rising                                                                                                             │ 1264          │
│ Down On The Corner                                                                                                          │ 1265          │
│ Up Around The Bend                                                                                                          │ 1266          │
│ Hey Tonight                                                                                                                 │ 1267          │
│ Good Golly Miss Molly                                                                                                       │ 1268          │
│ Don't Look Now                                                                                                              │ 1269          │
│ It's Just A Thought                                                                                                         │ 1270          │
│ Brasil                                                                                                                      │ 1271          │
│ Meu Mundo Fica Completo (Com Você)                                                                                          │ 1272          │
│ Woman Is The Nigger Of The World (Ao Vivo)                                                                                  │ 1273          │
│ Todo Amor Que Houver Nesta Vida                                                                                             │ 1274          │
│ Socorro                                                                                                                     │ 1275          │
│ I Need Love                                                                                                                 │ 1276          │
│ Into The Fire                                                                                                               │ 1277          │
│ No One Came                                                                                                                 │ 1278          │
│ Hush                                                                                                                        │ 1279          │
│ Space Truckin'                                                                                                              │ 1280          │
│ A Touch Away                                                                                                                │ 1281          │
│ Love Conquers All                                                                                                           │ 1282          │
│ You Can't Do it Right (With the One You Love)                                                                               │ 1283          │
│ Ramshackle Man                                                                                                              │ 1284          │
│ Two Steps Behind [Acoustic Version]                                                                                         │ 1285          │
│ Rock Of Ages                                                                                                                │ 1286          │
│ Outbreak                                                                                                                    │ 1287          │
│ Álibi                                                                                                                       │ 1288          │
│ Oceano                                                                                                                      │ 1289          │
│ Dois Pra Lá, Dois Pra Cá                                                                                                    │ 1290          │
│ Casa no Campo                                                                                                               │ 1291          │
│ Romaria                                                                                                                     │ 1292          │
│ Me Deixas Louca                                                                                                             │ 1293          │
│ Saudosa Maloca                                                                                                              │ 1294          │
│ Madalena                                                                                                                    │ 1295          │
│ Aprendendo A Jogar                                                                                                          │ 1296          │
│ Badge                                                                                                                       │ 1297          │
│ Sunshine Of Your Love                                                                                                       │ 1298          │
│ Bell Bottom Blues                                                                                                           │ 1299          │
│ Swing Low Sweet Chariot                                                                                                     │ 1300          │
│ Let It Grow                                                                                                                 │ 1301          │
│ Before You Accuse Me                                                                                                        │ 1302          │
│ Nobody Knows You When You're Down & Out                                                                                     │ 1303          │
│ Alberta                                                                                                                     │ 1304          │
│ Stripsearch                                                                                                                 │ 1305          │
│ She Loves Me Not                                                                                                            │ 1306          │
│ Caffeine                                                                                                                    │ 1307          │
│ Kindergarten                                                                                                                │ 1308          │
│ Easy                                                                                                                        │ 1309          │
│ Cuckoo For Caca                                                                                                             │ 1310          │
│ What A Day                                                                                                                  │ 1311          │
│ Falling To Pieces                                                                                                           │ 1312          │
│ Woodpecker From Mars                                                                                                        │ 1313          │
│ Zeca Violeiro                                                                                                               │ 1314          │
│ No Way Back                                                                                                                 │ 1315          │
│ Still                                                                                                                       │ 1316          │
│ Razor                                                                                                                       │ 1317          │
│ Overdrive                                                                                                                   │ 1318          │
│ My Hero                                                                                                                     │ 1319          │
│ New York, New York                                                                                                          │ 1320          │
│ My Kind Of Town                                                                                                             │ 1321          │
│ Bad, Bad Leroy Brown                                                                                                        │ 1322          │
│ Zambação                                                                                                                    │ 1323          │
│ Divirta-Se (Saindo Da Sua)                                                                                                  │ 1324          │
│ Assum Preto                                                                                                                 │ 1325          │
│ Is This Love (Live)                                                                                                         │ 1326          │
│ Copacabana (Live)                                                                                                           │ 1327          │
│ Beira Mar                                                                                                                   │ 1328          │
│ Sampa                                                                                                                       │ 1329          │
│ Parabolicamará                                                                                                              │ 1330          │
│ Expresso 2222                                                                                                               │ 1331          │
│ Palco                                                                                                                       │ 1332          │
│ Sítio Do Pica-Pau Amarelo                                                                                                   │ 1333          │
│ Faceless                                                                                                                    │ 1334          │
│ Make Me Believe                                                                                                             │ 1335          │
│ Re-Align                                                                                                                    │ 1336          │
│ I Am                                                                                                                        │ 1337          │
│ Jesus Of Suburbia / City Of The Damned / I Don't Care / Dearly Beloved / Tales Of Another Broken Home                       │ 1338          │
│ St. Jimmy                                                                                                                   │ 1339          │
│ Letterbomb                                                                                                                  │ 1340          │
│ Welcome to the Jungle                                                                                                       │ 1341          │
│ Mr. Brownstone                                                                                                              │ 1342          │
│ Anything Goes                                                                                                               │ 1343          │
│ Perfect Crime                                                                                                               │ 1344          │
│ The Garden                                                                                                                  │ 1345          │
│ Civil War                                                                                                                   │ 1346          │
│ Breakdown                                                                                                                   │ 1347          │
│ Don't Cry                                                                                                                   │ 1348          │
│ L'Arc En Ciel De Miles                                                                                                      │ 1349          │
│ Jacob's Ladder                                                                                                              │ 1350          │
│ The Pilgrim                                                                                                                 │ 1351          │
│ The Trooper                                                                                                                 │ 1352          │
│ Iron Maiden                                                                                                                 │ 1353          │
│ Bring Your Daughter... To The Slaughter                                                                                     │ 1354          │
│ Dream Of Mirrors                                                                                                            │ 1355          │
│ Dance Of Death                                                                                                              │ 1356          │
│ Afraid To Shoot Strangers                                                                                                   │ 1357          │
│ Fear Of The Dark                                                                                                            │ 1358          │
│ 09 - Iron Maiden                                                                                                            │ 1359          │
│ Purgatory                                                                                                                   │ 1360          │
│ Powerslave                                                                                                                  │ 1361          │
│ Die With Your Boots On                                                                                                      │ 1362          │
│ The Evil That Men Do                                                                                                        │ 1363          │
│ Hallowed Be Thy Name                                                                                                        │ 1364          │
│ The Assassin                                                                                                                │ 1365          │
│ Aces High                                                                                                                   │ 1366          │
│ 2 Minutes To Midnight                                                                                                       │ 1367          │
│ Losfer Words                                                                                                                │ 1368          │
│ Duelists                                                                                                                    │ 1369          │
│ Powerslave                                                                                                                  │ 1370          │
│ Intro                                                                                                                       │ 1371          │
│ Ghost Of The Navigator                                                                                                      │ 1372          │
│ Wrathchild                                                                                                                  │ 1373          │
│ Blood Brothers                                                                                                              │ 1374          │
│ Dream Of Mirrors                                                                                                            │ 1375          │
│ Iron Maiden                                                                                                                 │ 1376          │
│ Run To The Hills                                                                                                            │ 1377          │
│ The Evil That Men Do                                                                                                        │ 1378          │
│ Only the Good Die Young                                                                                                     │ 1379          │
│ Heaven Can Wait                                                                                                             │ 1380          │
│ Children of the Damned                                                                                                      │ 1381          │
│ The Prisoner                                                                                                                │ 1382          │
│ The Aftermath                                                                                                               │ 1383          │
│ Futureal                                                                                                                    │ 1384          │
│ Don't Look To The Eyes Of A Stranger                                                                                        │ 1385          │
│ Papa's Got A Brand New Bag Pt.1                                                                                             │ 1386          │
│ Hey America                                                                                                                 │ 1387          │
│ Living In America                                                                                                           │ 1388          │
│ Hooked Up                                                                                                                   │ 1389          │
│ Planet Home                                                                                                                 │ 1390          │
│ Deeper Underground                                                                                                          │ 1391          │
│ Journey To Arnhemland                                                                                                       │ 1392          │
│ Radio Song                                                                                                                  │ 1393          │
│ Red House                                                                                                                   │ 1394          │
│ Hey Joe                                                                                                                     │ 1395          │
│ Always With Me, Always With You                                                                                             │ 1396          │
│ Mama Africa                                                                                                                 │ 1397          │
│ Santa Clara Clareou                                                                                                         │ 1398          │
│ Encontrar Alguém                                                                                                            │ 1399          │
│ No Futuro                                                                                                                   │ 1400          │
│ Cafezinho                                                                                                                   │ 1401          │
│ You've Got Another Thing Comin'                                                                                             │ 1402          │
│ Comin' Home                                                                                                                 │ 1403          │
│ Rock And Roll All Nite                                                                                                      │ 1404          │
│ Immigrant Song                                                                                                              │ 1405          │
│ Heartbreaker                                                                                                                │ 1406          │
│ Black Dog                                                                                                                   │ 1407          │
│ Stairway To Heaven                                                                                                          │ 1408          │
│ That's The Way                                                                                                              │ 1409          │
│ Thank You                                                                                                                   │ 1410          │
│ Poor Tom                                                                                                                    │ 1411          │
│ Walter's Walk                                                                                                               │ 1412          │
│ Wearing And Tearing                                                                                                         │ 1413          │
│ The Crunge                                                                                                                  │ 1414          │
│ The Ocean                                                                                                                   │ 1415          │
│ Hot Dog                                                                                                                     │ 1416          │
│ Black Dog                                                                                                                   │ 1417          │
│ Misty Mountain Hop                                                                                                          │ 1418          │
│ You Shook Me                                                                                                                │ 1419          │
│ How Many More Times                                                                                                         │ 1420          │
│ Living Loving Maid (She's Just A Woman)                                                                                     │ 1421          │
│ Celebration Day                                                                                                             │ 1422          │
│ Bron-Y-Aur Stomp                                                                                                            │ 1423          │
│ Night Flight                                                                                                                │ 1424          │
│ For Your Life                                                                                                               │ 1425          │
│ Rock & Roll                                                                                                                 │ 1426          │
│ Stairway To Heaven                                                                                                          │ 1427          │
│ Aloha                                                                                                                       │ 1428          │
│ Será                                                                                                                        │ 1429          │
│ Pais E Filhos                                                                                                               │ 1430          │
│ Rock And Roll Is Dead                                                                                                       │ 1431          │
│ I Belong To You                                                                                                             │ 1432          │
│ Casa                                                                                                                        │ 1433          │
│ A Cura                                                                                                                      │ 1434          │
│ Sereia                                                                                                                      │ 1435          │
│ Heart Of Lothian: Wide Boy / Curtain Call                                                                                   │ 1436          │
│ Cérebro Eletrônico                                                                                                          │ 1437          │
│ A Menina Dança                                                                                                              │ 1438          │
│ You've Been A Long Time Coming                                                                                              │ 1439          │
│ Abraham, Martin And John                                                                                                    │ 1440          │
│ Everything I Need                                                                                                           │ 1441          │
│ Nothing Else Matters                                                                                                        │ 1442          │
│ Of Wolf And Man                                                                                                             │ 1443          │
│ The God That Failed                                                                                                         │ 1444          │
│ The Struggle Within                                                                                                         │ 1445          │
│ The Small Hours                                                                                                             │ 1446          │
│ Crash Course In Brain Surgery                                                                                               │ 1447          │
│ Am I Evil?                                                                                                                  │ 1448          │
│ Breadfan                                                                                                                    │ 1449          │
│ Stone Cold Crazy                                                                                                            │ 1450          │
│ Damage Case                                                                                                                 │ 1451          │
│ The Four Horsemen                                                                                                           │ 1452          │
│ Whiplash                                                                                                                    │ 1453          │
│ Metal Militia                                                                                                               │ 1454          │
│ Until It Sleeps                                                                                                             │ 1455          │
│ Cure                                                                                                                        │ 1456          │
│ The Outlaw Torn                                                                                                             │ 1457          │
│ Leper Messiah                                                                                                               │ 1458          │
│ The Unforgiven II                                                                                                           │ 1459          │
│ Prince Charming                                                                                                             │ 1460          │
│ For Whom The Bell Tolls                                                                                                     │ 1461          │
│ Frantic                                                                                                                     │ 1462          │
│ Shoot Me Again                                                                                                              │ 1463          │
│ ...And Justice For All                                                                                                      │ 1464          │
│ To Live Is To Die                                                                                                           │ 1465          │
│ The Meaning Of The Blues                                                                                                    │ 1466          │
│ Paisagem Na Janela                                                                                                          │ 1467          │
│ Para Lennon E McCartney                                                                                                     │ 1468          │
│ Idolatrada                                                                                                                  │ 1469          │
│ Live To Win                                                                                                                 │ 1470          │
│ Dirty Love                                                                                                                  │ 1471          │
│ É Fogo                                                                                                                      │ 1472          │
│ Kickstart My Heart                                                                                                          │ 1473          │
│ Smokin' in The Boys Room                                                                                                    │ 1474          │
│ Smells Like Teen Spirit                                                                                                     │ 1475          │
│ Polly                                                                                                                       │ 1476          │
│ Polly                                                                                                                       │ 1477          │
│ Sangue Latino                                                                                                               │ 1478          │
│ Às Vezes                                                                                                                    │ 1479          │
│ Revolta Olodum                                                                                                              │ 1480          │
│ Reggae Odoyá                                                                                                                │ 1481          │
│ Protesto Do Olodum (Ao Vivo)                                                                                                │ 1482          │
│ Vulcão Dub - Fui Eu                                                                                                         │ 1483          │
│ Manguetown                                                                                                                  │ 1484          │
│ Bora-Bora                                                                                                                   │ 1485          │
│ I Feel Good (I Got You) - Sossego                                                                                           │ 1486          │
│ Sincero Breu                                                                                                                │ 1487          │
│ Selvagem                                                                                                                    │ 1488          │
│ Navegar Impreciso                                                                                                           │ 1489          │
│ Life During Wartime                                                                                                         │ 1490          │
│ Tendo A Lua                                                                                                                 │ 1491          │
│ Busca Vida                                                                                                                  │ 1492          │
│ Ela Disse Adeus                                                                                                             │ 1493          │
│ Óculos                                                                                                                      │ 1494          │
│ O Beco                                                                                                                      │ 1495          │
│ Romance Ideal                                                                                                               │ 1496          │
│ Flying High Again                                                                                                           │ 1497          │
│ Mr. Crowley                                                                                                                 │ 1498          │
│ Children Of The Grave                                                                                                       │ 1499          │
│ When The World Was Young                                                                                                    │ 1500          │
│ Walking Into Clarksdale                                                                                                     │ 1501          │
│ Slug                                                                                                                        │ 1502          │
│ Ito Okashi                                                                                                                  │ 1503          │
│ Prowler                                                                                                                     │ 1504          │
│ Given To Fly                                                                                                                │ 1505          │
│ Off He Goes                                                                                                                 │ 1506          │
│ Severed Hand                                                                                                                │ 1507          │
│ Inside Job                                                                                                                  │ 1508          │
│ Get Right                                                                                                                   │ 1509          │
│ Alive                                                                                                                       │ 1510          │
│ Go                                                                                                                          │ 1511          │
│ Elderly Woman Behind The Counter In A Small Town                                                                            │ 1512          │
│ Bush Doctor                                                                                                                 │ 1513          │
│ Time                                                                                                                        │ 1514          │
│ Hip Hop Rio                                                                                                                 │ 1515          │
│ Rappers Reais                                                                                                               │ 1516          │
│ Bicycle Race                                                                                                                │ 1517          │
│ We Are The Champions                                                                                                        │ 1518          │
│ Sheer Heart Attack                                                                                                          │ 1519          │
│ All Dead, All Dead                                                                                                          │ 1520          │
│ Fight From The Inside                                                                                                       │ 1521          │
│ Sleep On The Sidewalk                                                                                                       │ 1522          │
│ It's Late                                                                                                                   │ 1523          │
│ Shiny Happy People                                                                                                          │ 1524          │
│ Radio Song                                                                                                                  │ 1525          │
│ Get Up                                                                                                                      │ 1526          │
│ The Wrong Child                                                                                                             │ 1527          │
│ I Remember California                                                                                                       │ 1528          │
│ New Test Leper                                                                                                              │ 1529          │
│ Departure                                                                                                                   │ 1530          │
│ Zither                                                                                                                      │ 1531          │
│ Losing My Religion                                                                                                          │ 1532          │
│ Texarkana                                                                                                                   │ 1533          │
│ So Central Rain                                                                                                             │ 1534          │
│ Fall On Me                                                                                                                  │ 1535          │
│ Infeliz Natal                                                                                                               │ 1536          │
│ Esporrei Na Manivela                                                                                                        │ 1537          │
│ No Fundo Do Quintal Da Escola                                                                                               │ 1538          │
│ Que Luz É Essa                                                                                                              │ 1539          │
│ The Power Of Equality                                                                                                       │ 1540          │
│ Mellowship Slinky In B Major                                                                                                │ 1541          │
│ Sir Psycho Sexy                                                                                                             │ 1542          │
│ I Could Die For You                                                                                                         │ 1543          │
│ Around The World                                                                                                            │ 1544          │
│ I Like Dirt                                                                                                                 │ 1545          │
│ Freewill                                                                                                                    │ 1546          │
│ Fly By Night                                                                                                                │ 1547          │
│ Santana Jam                                                                                                                 │ 1548          │
│ The Right Thing                                                                                                             │ 1549          │
│ For Your Babies                                                                                                             │ 1550          │
│ Muçulmano                                                                                                                   │ 1551          │
│ Zé Trindade                                                                                                                 │ 1552          │
│ Lucky 13                                                                                                                    │ 1553          │
│ Waiting                                                                                                                     │ 1554          │
│ Drown                                                                                                                       │ 1555          │
│ Real Love                                                                                                                   │ 1556          │
│ [Untitled]                                                                                                                  │ 1557          │
│ Nothing To Say                                                                                                              │ 1558          │
│ Loud Love                                                                                                                   │ 1559          │
│ Get On The Snake                                                                                                            │ 1560          │
│ Outshined                                                                                                                   │ 1561          │
│ Spoonman                                                                                                                    │ 1562          │
│ Black Hole Sun                                                                                                              │ 1563          │
│ Pretty Noose                                                                                                                │ 1564          │
│ Bleed Together                                                                                                              │ 1565          │
│ Song For Lorraine                                                                                                           │ 1566          │
│ Little Linda                                                                                                                │ 1567          │
│ Tightrope                                                                                                                   │ 1568          │
│ Wall Of Denial                                                                                                              │ 1569          │
│ Dead And Bloated                                                                                                            │ 1570          │
│ Creep                                                                                                                       │ 1571          │
│ Soldier Side - Intro                                                                                                        │ 1572          │
│ Violent Pornography                                                                                                         │ 1573          │
│ Dark Corners                                                                                                                │ 1574          │
│ Midnight From The Inside Out                                                                                                │ 1575          │
│ Miracle To Me                                                                                                               │ 1576          │
│ Title Song                                                                                                                  │ 1577          │
│ Remedy                                                                                                                      │ 1578          │
│ Tommy Gun                                                                                                                   │ 1579          │
│ This Is Radio Clash                                                                                                         │ 1580          │
│ Nico                                                                                                                        │ 1581          │
│ Lil' Evil                                                                                                                   │ 1582          │
│ Love                                                                                                                        │ 1583          │
│ The Crystal Ship                                                                                                            │ 1584          │
│ Roxanne                                                                                                                     │ 1585          │
│ Every Breath You Take                                                                                                       │ 1586          │
│ As Tears Go By                                                                                                              │ 1587          │
│ You Got Me Rocking                                                                                                          │ 1588          │
│ Respectable                                                                                                                 │ 1589          │
│ Moon Is Up                                                                                                                  │ 1590          │
│ Mean Disposition                                                                                                            │ 1591          │
│ Release                                                                                                                     │ 1592          │
│ Psychopomp                                                                                                                  │ 1593          │
│ Boris The Spider                                                                                                            │ 1594          │
│ Happy Jack                                                                                                                  │ 1595          │
│ Pictures Of Lily                                                                                                            │ 1596          │
│ Magic Bus                                                                                                                   │ 1597          │
│ The Seeker                                                                                                                  │ 1598          │
│ Won't Get Fooled Again (Full Length Version)                                                                                │ 1599          │
│ 5.15                                                                                                                        │ 1600          │
│ Squeeze Box                                                                                                                 │ 1601          │
│ You Better You Bet                                                                                                          │ 1602          │
│ O Descobridor Dos Sete Mares                                                                                                │ 1603          │
│ Não Vou Ficar                                                                                                               │ 1604          │
│ Cristina Nº 2                                                                                                               │ 1605          │
│ O Que Me Importa                                                                                                            │ 1606          │
│ Eu Amo Você                                                                                                                 │ 1607          │
│ Nosso Adeus                                                                                                                 │ 1608          │
│ Formigueiro                                                                                                                 │ 1609          │
│ O Pulso                                                                                                                     │ 1610          │
│ A Melhor Forma                                                                                                              │ 1611          │
│ Homem Primata                                                                                                               │ 1612          │
│ Lugar Nenhum                                                                                                                │ 1613          │
│ Caras Como Eu                                                                                                               │ 1614          │
│ Toda Cor                                                                                                                    │ 1615          │
│ Exodus, Pt. 2                                                                                                               │ 1616          │
│ The Passage                                                                                                                 │ 1617          │
│ Crossroads, Pt. 1                                                                                                           │ 1618          │
│ Seven Minutes to Midnight                                                                                                   │ 1619          │
│ Company Man                                                                                                                 │ 1620          │
│ Orientation                                                                                                                 │ 1621          │
│ House of the Rising Sun                                                                                                     │ 1622          │
│ Lost Survival Guide                                                                                                         │ 1623          │
│ Enter 77                                                                                                                    │ 1624          │
│ Exposé                                                                                                                      │ 1625          │
│ Catch-22                                                                                                                    │ 1626          │
│ "?"                                                                                                                         │ 1627          │
│ Even Better Than The Real Thing                                                                                             │ 1628          │
│ Acrobat                                                                                                                     │ 1629          │
│ Peace On Earth                                                                                                              │ 1630          │
│ Dancing Barefoot                                                                                                            │ 1631          │
│ City Of Blinding Lights                                                                                                     │ 1632          │
│ All Because Of You                                                                                                          │ 1633          │
│ A Man And A Woman                                                                                                           │ 1634          │
│ One Step Closer                                                                                                             │ 1635          │
│ Yahweh                                                                                                                      │ 1636          │
│ Do You Feel Loved                                                                                                           │ 1637          │
│ If God Will Send His Angels                                                                                                 │ 1638          │
│ Last Night On Earth                                                                                                         │ 1639          │
│ Miami                                                                                                                       │ 1640          │
│ Wake Up Dead Man                                                                                                            │ 1641          │
│ Hawkmoon 269                                                                                                                │ 1642          │
│ Silver And Gold                                                                                                             │ 1643          │
│ When Love Comes To Town                                                                                                     │ 1644          │
│ Bullet The Blue Sky                                                                                                         │ 1645          │
│ With Or Without You                                                                                                         │ 1646          │
│ The Unforgettable Fire                                                                                                      │ 1647          │
│ Sunday Bloody Sunday                                                                                                        │ 1648          │
│ Two Hearts Beat As One                                                                                                      │ 1649          │
│ Numb                                                                                                                        │ 1650          │
│ Dirty Day                                                                                                                   │ 1651          │
│ Here I Am (Come And Take Me)                                                                                                │ 1652          │
│ C'est La Vie                                                                                                                │ 1653          │
│ Cathedral                                                                                                                   │ 1654          │
│ Little Guitars                                                                                                              │ 1655          │
│ Unchained                                                                                                                   │ 1656          │
│ Humans Being                                                                                                                │ 1657          │
│ Atomic Punk                                                                                                                 │ 1658          │
│ Dirty Water Dog                                                                                                             │ 1659          │
│ Do It For The Kids                                                                                                          │ 1660          │
│ Slither                                                                                                                     │ 1661          │
│ Samba Pra Endrigo                                                                                                           │ 1662          │
│ Still Of The Night                                                                                                          │ 1663          │
│ You're Gonna Break My Hart Again                                                                                            │ 1664          │
│ Coração Em Desalinho                                                                                                        │ 1665          │
│ Camarão que Dorme e Onda Leva                                                                                               │ 1666          │
│ The Hard Part                                                                                                               │ 1667          │
│ Hot Girl                                                                                                                    │ 1668          │
│ Email Surveillance                                                                                                          │ 1669          │
│ Gay Witch Hunt                                                                                                              │ 1670          │
│ The Convention                                                                                                              │ 1671          │
│ The Coup                                                                                                                    │ 1672          │
│ The Initiation                                                                                                              │ 1673          │
│ Branch Closing                                                                                                              │ 1674          │
│ The Convict                                                                                                                 │ 1675          │
│ Back from Vacation                                                                                                          │ 1676          │
│ Producer's Cut: The Return                                                                                                  │ 1677          │
│ Phyllis's Wedding                                                                                                           │ 1678          │
│ Safety Training                                                                                                             │ 1679          │
│ The Job                                                                                                                     │ 1680          │
│ Battlestar Galactica, Pt. 1                                                                                                 │ 1681          │
│ Lost Planet of the Gods, Pt. 2                                                                                              │ 1682          │
│ The Gun On Ice Planet Zero, Pt. 2                                                                                           │ 1683          │
│ The Living Legend, Pt. 2                                                                                                    │ 1684          │
│ Greetings from Earth, Pt. 1                                                                                                 │ 1685          │
│ Pilot                                                                                                                       │ 1686          │
│ Give Peace a Chance                                                                                                         │ 1687          │
│ Imagine                                                                                                                     │ 1688          │
│ Beautiful Boy                                                                                                               │ 1689          │
│ God                                                                                                                         │ 1690          │
│ War Pigs                                                                                                                    │ 1691          │
│ Iron Man/Children of the Grave                                                                                              │ 1692          │
│ Still Loving You                                                                                                            │ 1693          │
│ Salutations                                                                                                                 │ 1694          │
│ Commercial 2                                                                                                                │ 1695          │
│ Instinto Colectivo                                                                                                          │ 1696          │
│ Armadura                                                                                                                    │ 1697          │
│ Past, Present, and Future                                                                                                   │ 1698          │
│ Ji Yeon                                                                                                                     │ 1699          │
│ Love Comes                                                                                                                  │ 1700          │
│ There's No Place Like Home, Pt. 3                                                                                           │ 1701          │
│ Four Walled World                                                                                                           │ 1702          │
│ Billie Jean                                                                                                                 │ 1703          │
│ Sound of a Gun                                                                                                              │ 1704          │
│ Moth                                                                                                                        │ 1705          │
│ Suite for Solo Cello No. 1 in G Major, BWV 1007: I. Prélude                                                                 │ 1706          │
│ Die Walküre: The Ride of the Valkyries                                                                                      │ 1707          │
│ Scheherazade, Op. 35: I. The Sea and Sindbad's Ship                                                                         │ 1708          │
│ Concerto No.2 in F Major, BWV1047, I. Allegro                                                                               │ 1709          │
│ Concerto for Piano No. 2 in F Minor, Op. 21: II. Larghetto                                                                  │ 1710          │
│ Karelia Suite, Op.11: 2. Ballade (Tempo Di Menuetto)                                                                        │ 1711          │
│ Fantasia On Greensleeves                                                                                                    │ 1712          │
│ Concerto for Cello and Orchestra in E minor, Op. 85: I. Adagio - Moderato                                                   │ 1713          │
│ Wellington's Victory or the Battle Symphony, Op.91: 2. Symphony of Triumph                                                  │ 1714          │
│ Romeo et Juliette: No. 11 - Danse des Chevaliers                                                                            │ 1715          │
│ Symphonie Fantastique, Op. 14: V. Songe d'une nuit du sabbat                                                                │ 1716          │
│ Peer Gynt Suite No.1, Op.46: 1. Morning Mood                                                                                │ 1717          │
│ Symphony No. 41 in C Major, K. 551, "Jupiter": IV. Molto allegro                                                            │ 1718          │
│ Just Friends                                                                                                                │ 1719          │
│ Wake Up Alone                                                                                                               │ 1720          │
│ Rehab (Hot Chip Remix)                                                                                                      │ 1721          │
│ I Heard Love Is Blind                                                                                                       │ 1722          │
│ Help Yourself                                                                                                               │ 1723          │
│ Suite No. 3 in D, BWV 1068: III. Gavotte I & II                                                                             │ 1724          │
│ Music for the Funeral of Queen Mary: VI. "Thou Knowest, Lord, the Secrets of Our Hearts"                                    │ 1725          │
│ Symphony No. 2, Op. 16 -  "The Four Temperaments": II. Allegro Comodo e Flemmatico                                          │ 1726          │
│ String Quartet No. 12 in C Minor, D. 703 "Quartettsatz": II. Andante - Allegro assai                                        │ 1727          │
│ Fast As a Shark                                                                                                             │ 1728          │
│ Snowballed                                                                                                                  │ 1729          │
│ Go Down                                                                                                                     │ 1730          │
│ Hell Ain't A Bad Place To Be                                                                                                │ 1731          │
│ Amazing                                                                                                                     │ 1732          │
│ You Oughta Know                                                                                                             │ 1733          │
│ Not The Doctor                                                                                                              │ 1734          │
│ It Ain't Like That                                                                                                          │ 1735          │
│ Por Causa De Você                                                                                                           │ 1736          │
│ O Boto (Bôto)                                                                                                               │ 1737          │
│ Welcome Home (Sanitarium)                                                                                                   │ 1738          │
│ Exploder                                                                                                                    │ 1739          │
│ Doesn't Remind Me                                                                                                           │ 1740          │
│ Money                                                                                                                       │ 1741          │
│ Carol                                                                                                                       │ 1742          │
│ Solo-Panhandler                                                                                                             │ 1743          │
│ Bored To Tears                                                                                                              │ 1744          │
│ Blood In The Wall                                                                                                           │ 1745          │
│ Snowblind                                                                                                                   │ 1746          │
│ Cornucopia                                                                                                                  │ 1747          │
│ Laguna Sunrise                                                                                                              │ 1748          │
│ Under The Sun/Every Day Comes and Goes                                                                                      │ 1749          │
│ Body Count's In The House                                                                                                   │ 1750          │
│ Body Count                                                                                                                  │ 1751          │
│ Bowels Of The Devil                                                                                                         │ 1752          │
│ KKK Bitch                                                                                                                   │ 1753          │
│ Voodoo                                                                                                                      │ 1754          │
│ Evil Dick                                                                                                                   │ 1755          │
│ King In Crimson                                                                                                             │ 1756          │
│ Book Of Thel                                                                                                                │ 1757          │
│ Machine Men                                                                                                                 │ 1758          │
│ Let Me Love You Baby                                                                                                        │ 1759          │
│ Leave My Girl Alone                                                                                                         │ 1760          │
│ Jorge Da Capadócia                                                                                                          │ 1761          │
│ Bem Devagar                                                                                                                 │ 1762          │
│ Mel                                                                                                                         │ 1763          │
│ Sozinho (Hitmakers Classic Mix)                                                                                             │ 1764          │
│ Samba De Orly                                                                                                               │ 1765          │
│ Apesar De Você                                                                                                              │ 1766          │
│ Geni E O Zepelim                                                                                                            │ 1767          │
│ O Cidadão Do Mundo                                                                                                          │ 1768          │
│ Maracatu Atômico                                                                                                            │ 1769          │
│ Interlude Zumbi                                                                                                             │ 1770          │
│ Rios Pontes & Overdrives                                                                                                    │ 1771          │
│ Lixo Do Mangue                                                                                                              │ 1772          │
│ Podes Crer                                                                                                                  │ 1773          │
│ A Cor Do Sol                                                                                                                │ 1774          │
│ Doutor                                                                                                                      │ 1775          │
│ Linha Do Equador                                                                                                            │ 1776          │
│ TriboTchan                                                                                                                  │ 1777          │
│ Reggae Tchan                                                                                                                │ 1778          │
│ Communication Breakdown(2)                                                                                                  │ 1779          │
│ Carolina Hard-Core Ecstasy                                                                                                  │ 1780          │
│ X-9 2001                                                                                                                    │ 1781          │
│ Ipiranga 2001                                                                                                               │ 1782          │
│ Água de Beber                                                                                                               │ 1783          │
│ Tarde Em Itapoã                                                                                                             │ 1784          │
│ Tanto Tempo                                                                                                                 │ 1785          │
│ Eu Vim Da Bahia - Live                                                                                                      │ 1786          │
│ Linha Do Horizonte                                                                                                          │ 1787          │
│ Abrir A Porta                                                                                                               │ 1788          │
│ Momentos Que Marcam                                                                                                         │ 1789          │
│ Bumbo Da Mangueira                                                                                                          │ 1790          │
│ Santo Antonio                                                                                                               │ 1791          │
│ Só Tinha De Ser Com Você                                                                                                    │ 1792          │
│ Turn The Page                                                                                                               │ 1793          │
│ Astronomy                                                                                                                   │ 1794          │
│ A Kind Of Magic                                                                                                             │ 1795          │
│ I Want To Break Free                                                                                                        │ 1796          │
│ Who Wants To Live Forever                                                                                                   │ 1797          │
│ The Invisible Man                                                                                                           │ 1798          │
│ Black Diamond                                                                                                               │ 1799          │
│ Shock Me                                                                                                                    │ 1800          │
│ Calling Dr. Love                                                                                                            │ 1801          │
│ God Gave Rock 'n' Roll To You                                                                                               │ 1802          │
│ Surrender                                                                                                                   │ 1803          │
│ Best Thing                                                                                                                  │ 1804          │
│ When I Come Around                                                                                                          │ 1805          │
│ Walking Contradiction                                                                                                       │ 1806          │
│ Minority                                                                                                                    │ 1807          │
│ Slave                                                                                                                       │ 1808          │
│ Começaria Tudo Outra Vez                                                                                                    │ 1809          │
│ Comportamento Geral                                                                                                         │ 1810          │
│ Menino Do Rio                                                                                                               │ 1811          │
│ Ando Meio Desligado                                                                                                         │ 1812          │
│ Rita Lee                                                                                                                    │ 1813          │
│ Smoke On The Water                                                                                                          │ 1814          │
│ Beija-Flor                                                                                                                  │ 1815          │
│ Caprichosos                                                                                                                 │ 1816          │
│ Do You Like The Way                                                                                                         │ 1817          │
│ Manuel                                                                                                                      │ 1818          │
│ Do You Have Other Loves?                                                                                                    │ 1819          │
│ 'Round Midnight                                                                                                             │ 1820          │
│ E.S.P.                                                                                                                      │ 1821          │
│ Blue Rythm Fantasy                                                                                                          │ 1822          │
│ Drum Boogie                                                                                                                 │ 1823          │
│ Let Me Off Uptown                                                                                                           │ 1824          │
│ Opus No.1                                                                                                                   │ 1825          │
│ How High The Moon                                                                                                           │ 1826          │
│ Up An' Atom                                                                                                                 │ 1827          │
│ Lemon Drop                                                                                                                  │ 1828          │
│ Overtime                                                                                                                    │ 1829          │
│ Don't Take Your Love From Me                                                                                                │ 1830          │
│ Jungle Drums                                                                                                                │ 1831          │
│ Pot-Pourri N.º 4                                                                                                            │ 1832          │
│ Pot-Pourri N.º 5                                                                                                            │ 1833          │
│ Por Que Será                                                                                                                │ 1834          │
│ Samba Em Prelúdio                                                                                                           │ 1835          │
│ Chão de Giz (Elba Ramalho)                                                                                                  │ 1836          │
│ Caçador de Mim (Sá & Guarabyra)                                                                                             │ 1837          │
│ Susie Q                                                                                                                     │ 1838          │
│ Commotion                                                                                                                   │ 1839          │
│ Run Through The Jungle                                                                                                      │ 1840          │
│ Sweet Hitch-Hiker                                                                                                           │ 1841          │
│ Tombstone Shadow                                                                                                            │ 1842          │
│ The Midnight Special                                                                                                        │ 1843          │
│ Molina                                                                                                                      │ 1844          │
│ Eu Sou Neguinha (Ao Vivo)                                                                                                   │ 1845          │
│ Palavras Ao Vento                                                                                                           │ 1846          │
│ Metrô. Linha 743                                                                                                            │ 1847          │
│ Mis Penas Lloraba Yo (Ao Vivo) Soy Gitano (Tangos)                                                                          │ 1848          │
│ You Keep On Moving                                                                                                          │ 1849          │
│ No No No                                                                                                                    │ 1850          │
│ Nobody's Home                                                                                                               │ 1851          │
│ Maybe I'm A Leo                                                                                                             │ 1852          │
│ Sometimes I Feel Like Screaming                                                                                             │ 1853          │
│ King Of Dreams                                                                                                              │ 1854          │
│ Stormbringer                                                                                                                │ 1855          │
│ The Battle Rages On                                                                                                         │ 1856          │
│ One Man's Meat                                                                                                              │ 1857          │
│ When Love & Hate Collide                                                                                                    │ 1858          │
│ Otay                                                                                                                        │ 1859          │
│ Álibi                                                                                                                       │ 1860          │
│ Esquinas                                                                                                                    │ 1861          │
│ Se...                                                                                                                       │ 1862          │
│ Lilás                                                                                                                       │ 1863          │
│ Um Amor Puro                                                                                                                │ 1864          │
│ Nem Um Dia                                                                                                                  │ 1865          │
│ Açai                                                                                                                        │ 1866          │
│ Flor De Lis                                                                                                                 │ 1867          │
│ Azul                                                                                                                        │ 1868          │
│ Acelerou                                                                                                                    │ 1869          │
│ Atrás da Porta                                                                                                              │ 1870          │
│ Alô, Alô, Marciano                                                                                                          │ 1871          │
│ As Aparências Enganam                                                                                                       │ 1872          │
│ Layla                                                                                                                       │ 1873          │
│ Crossroads                                                                                                                  │ 1874          │
│ After Midnight                                                                                                              │ 1875          │
│ Promises                                                                                                                    │ 1876          │
│ Lonely Stranger                                                                                                             │ 1877          │
│ San Francisco Bay Blues                                                                                                     │ 1878          │
│ Last Cup Of Sorrow                                                                                                          │ 1879          │
│ Got That Feeling                                                                                                            │ 1880          │
│ Midlife Crisis                                                                                                              │ 1881          │
│ Be Aggressive                                                                                                               │ 1882          │
│ Get Out                                                                                                                     │ 1883          │
│ Take This Bottle                                                                                                            │ 1884          │
│ Surprise! You're Dead!                                                                                                      │ 1885          │
│ Falamansa Song                                                                                                              │ 1886          │
│ Medo De Escuro                                                                                                              │ 1887          │
│ The Last Song                                                                                                               │ 1888          │
│ Friend Of A Friend                                                                                                          │ 1889          │
│ Times Like These                                                                                                            │ 1890          │
│ Monkey Wrench                                                                                                               │ 1891          │
│ Everlong                                                                                                                    │ 1892          │
│ What Now My Love                                                                                                            │ 1893          │
│ It Was A Very Good Year                                                                                                     │ 1894          │
│ Entrando Na Sua (Intro)                                                                                                     │ 1895          │
│ Dujji                                                                                                                       │ 1896          │
│ Esperando Na Janela                                                                                                         │ 1897          │
│ Is This Love (Live)                                                                                                         │ 1898          │
│ Stir It Up (Live)                                                                                                           │ 1899          │
│ Refavela (Live)                                                                                                             │ 1900          │
│ Quanta (Live)                                                                                                               │ 1901          │
│ Pela Internet (Live)                                                                                                        │ 1902          │
│ Opachorô (Live)                                                                                                             │ 1903          │
│ A Novidade (Live)                                                                                                           │ 1904          │
│ De Ouro E Marfim (Live)                                                                                                     │ 1905          │
│ Lamento De Carnaval                                                                                                         │ 1906          │
│ Refazenda                                                                                                                   │ 1907          │
│ A Paz                                                                                                                       │ 1908          │
│ Tempo Rei                                                                                                                   │ 1909          │
│ Toda Menina Baiana                                                                                                          │ 1910          │
│ Changes                                                                                                                     │ 1911          │
│ I Fucking Hate You                                                                                                          │ 1912          │
│ American Idiot                                                                                                              │ 1913          │
│ Give Me Novacaine                                                                                                           │ 1914          │
│ Whatsername                                                                                                                 │ 1915          │
│ Paradise City                                                                                                               │ 1916          │
│ Rocket Queen                                                                                                                │ 1917          │
│ You Ain't the First                                                                                                         │ 1918          │
│ Garden of Eden                                                                                                              │ 1919          │
│ 14 Years                                                                                                                    │ 1920          │
│ Pretty Tied Up                                                                                                              │ 1921          │
│ Magnetic Ocean                                                                                                              │ 1922          │
│ She Wears Black                                                                                                             │ 1923          │
│ For the Greater Good of God                                                                                                 │ 1924          │
│ Where Eagles Dare                                                                                                           │ 1925          │
│ Can I Play With Madness                                                                                                     │ 1926          │
│ The Wicker Man                                                                                                              │ 1927          │
│ The Thin Line Between Love & Hate                                                                                           │ 1928          │
│ Face In The Sand                                                                                                            │ 1929          │
│ The Fugitive                                                                                                                │ 1930          │
│ 04 - Running Free                                                                                                           │ 1931          │
│ Another Life                                                                                                                │ 1932          │
│ 2 Minutes To Midnight                                                                                                       │ 1933          │
│ Run To The Hills                                                                                                            │ 1934          │
│ Wrathchild                                                                                                                  │ 1935          │
│ Hallowed Be Thy Name                                                                                                        │ 1936          │
│ The Trooper                                                                                                                 │ 1937          │
│ Sanctuary                                                                                                                   │ 1938          │
│ Tailgunner                                                                                                                  │ 1939          │
│ No Prayer For The Dying                                                                                                     │ 1940          │
│ Fates Warning                                                                                                               │ 1941          │
│ Run Silent Run Deep                                                                                                         │ 1942          │
│ Bring Your Daughter... ...To The Slaughter                                                                                  │ 1943          │
│ Where Eagles Dare                                                                                                           │ 1944          │
│ The Trooper                                                                                                                 │ 1945          │
│ To Tame A Land                                                                                                              │ 1946          │
│ Flash of The Blade                                                                                                          │ 1947          │
│ Rime of the Ancient Mariner                                                                                                 │ 1948          │
│ Brave New World                                                                                                             │ 1949          │
│ Sign Of The Cross                                                                                                           │ 1950          │
│ Fear Of The Dark                                                                                                            │ 1951          │
│ Moonchild                                                                                                                   │ 1952          │
│ The Clairvoyant                                                                                                             │ 1953          │
│ Stranger in a Strange Land                                                                                                  │ 1954          │
│ Gangland                                                                                                                    │ 1955          │
│ Sign Of The Cross                                                                                                           │ 1956          │
│ Judgement Of Heaven                                                                                                         │ 1957          │
│ The Angel And The Gambler                                                                                                   │ 1958          │
│ Como Estais Amigos                                                                                                          │ 1959          │
│ Say It Loud, I'm Black And I'm Proud Pt.1                                                                                   │ 1960          │
│ I'm Real                                                                                                                    │ 1961          │
│ Whatever It Is, I Just Can't Stop                                                                                           │ 1962          │
│ Destitute Illusions                                                                                                         │ 1963          │
│ Light Years                                                                                                                 │ 1964          │
│ Are You Gonna Be My Girl                                                                                                    │ 1965          │
│ Take It Or Leave It                                                                                                         │ 1966          │
│ May This Be Love                                                                                                            │ 1967          │
│ The Wind Cries Mary                                                                                                         │ 1968          │
│ Lords of Karma                                                                                                              │ 1969          │
│ Os Alquimistas Estão Chegando                                                                                               │ 1970          │
│ As Dores do Mundo                                                                                                           │ 1971          │
│ Sem Sentido                                                                                                                 │ 1972          │
│ Equinocio                                                                                                                   │ 1973          │
│ You've Got Another Thing Comin'                                                                                             │ 1974          │
│ Turbo Lover                                                                                                                 │ 1975          │
│ Freewheel Burning                                                                                                           │ 1976          │
│ Metal Meltdown                                                                                                              │ 1977          │
│ Diamonds And Rust (Live)                                                                                                    │ 1978          │
│ Tyrant (Live)                                                                                                               │ 1979          │
│ Plaster Caster                                                                                                              │ 1980          │
│ Do You Love Me                                                                                                              │ 1981          │
│ Sure Know Something                                                                                                         │ 1982          │
│ I Still Love You                                                                                                            │ 1983          │
│ Nothin' To Lose                                                                                                             │ 1984          │
│ Since I've Been Loving You                                                                                                  │ 1985          │
│ Going To California                                                                                                         │ 1986          │
│ We're Gonna Groove                                                                                                          │ 1987          │
│ Ozone Baby                                                                                                                  │ 1988          │
│ Over The Hills And Far Away                                                                                                 │ 1989          │
│ In The Evening                                                                                                              │ 1990          │
│ I'm Gonna Crawl                                                                                                             │ 1991          │
│ Four Sticks                                                                                                                 │ 1992          │
│ Dazed and Confused                                                                                                          │ 1993          │
│ Whole Lotta Love                                                                                                            │ 1994          │
│ Ramble On                                                                                                                   │ 1995          │
│ Since I've Been Loving You                                                                                                  │ 1996          │
│ Hats Off To (Roy) Harper                                                                                                    │ 1997          │
│ Sick Again                                                                                                                  │ 1998          │
│ Celebration Day                                                                                                             │ 1999          │
│ L'Avventura                                                                                                                 │ 2000          │
│ Leila                                                                                                                       │ 2001          │
│ Tempo Perdido                                                                                                               │ 2002          │
│ Giz                                                                                                                         │ 2003          │
│ Mr. Cab Driver                                                                                                              │ 2004          │
│ Assim Caminha A Humanidade                                                                                                  │ 2005          │
│ Satisfação                                                                                                                  │ 2006          │
│ Ro-Que-Se-Da-Ne                                                                                                             │ 2007          │
│ O Último Romântico (Ao Vivo)                                                                                                │ 2008          │
│ Childhoods End?                                                                                                             │ 2009          │
│ Panis Et Circenses                                                                                                          │ 2010          │
│ Segue O Seco                                                                                                                │ 2011          │
│ Abraham, Martin And John                                                                                                    │ 2012          │
│ Save The Children                                                                                                           │ 2013          │
│ You Sure Love To Ball                                                                                                       │ 2014          │
│ Praise                                                                                                                      │ 2015          │
│ Down Under                                                                                                                  │ 2016          │
│ Be Good Johnny                                                                                                              │ 2017          │
│ Down by the Sea                                                                                                             │ 2018          │
│ It's a Mistake                                                                                                              │ 2019          │
│ Shakes and Ladders                                                                                                          │ 2020          │
│ Holier Than Thou                                                                                                            │ 2021          │
│ Through The Never                                                                                                           │ 2022          │
│ My Friend Of Misery                                                                                                         │ 2023          │
│ The Wait                                                                                                                    │ 2024          │
│ Blitzkrieg                                                                                                                  │ 2025          │
│ So What                                                                                                                     │ 2026          │
│ Hit The Lights                                                                                                              │ 2027          │
│ Phantom Lord                                                                                                                │ 2028          │
│ The House Jack Built                                                                                                        │ 2029          │
│ Poor Twisted Me                                                                                                             │ 2030          │
│ Battery                                                                                                                     │ 2031          │
│ Orion                                                                                                                       │ 2032          │
│ Better Than You                                                                                                             │ 2033          │
│ Low Man's Lyric                                                                                                             │ 2034          │
│ Fade To Black                                                                                                               │ 2035          │
│ Invisible Kid                                                                                                               │ 2036          │
│ Eye Of The Beholder                                                                                                         │ 2037          │
│ The Duke                                                                                                                    │ 2038          │
│ Blues For Pablo (Alternate Take)                                                                                            │ 2039          │
│ Menestrel Das Alagoas                                                                                                       │ 2040          │
│ Beijo Partido                                                                                                               │ 2041          │
│ Norwegian Wood                                                                                                              │ 2042          │
│ Jailbait                                                                                                                    │ 2043          │
│ O Que Vai Em Meu Coração                                                                                                    │ 2044          │
│ A Moça e a Chuva                                                                                                            │ 2045          │
│ Same Ol' Situation                                                                                                          │ 2046          │
│ Shout At The Devil                                                                                                          │ 2047          │
│ Spank Thru                                                                                                                  │ 2048          │
│ Smells Like Teen Spirit                                                                                                     │ 2049          │
│ Sangue Latino                                                                                                               │ 2050          │
│ Folhas Secas                                                                                                                │ 2051          │
│ Poeira                                                                                                                      │ 2052          │
│ Quem Mata A Mulher Mata O Melhor                                                                                            │ 2053          │
│ O Braço Da Minha Guitarra                                                                                                   │ 2054          │
│ Mãe Terra                                                                                                                   │ 2055          │
│ Menino De Rua                                                                                                               │ 2056          │
│ Elza                                                                                                                        │ 2057          │
│ Nossa Gente (Avisa Là)                                                                                                      │ 2058          │
│ Todo Amor (Asas Da Liberdade)                                                                                               │ 2059          │
│ Jeito Faceiro                                                                                                               │ 2060          │
│ Olodum - Smile (Instrumental)                                                                                               │ 2061          │
│ Um Amor, Um Lugar                                                                                                           │ 2062          │
│ Uns Dias                                                                                                                    │ 2063          │
│ Brasília 5:31                                                                                                               │ 2064          │
│ Vamo Batê Lata                                                                                                              │ 2065          │
│ Mensagen De Amor (2000)                                                                                                     │ 2066          │
│ Saber Amar                                                                                                                  │ 2067          │
│ Cinema Mudo                                                                                                                 │ 2068          │
│ Meu Erro                                                                                                                    │ 2069          │
│ Será Que Vai Chover?                                                                                                        │ 2070          │
│ Mama, I'm Coming Home                                                                                                       │ 2071          │
│ Flying High Again                                                                                                           │ 2072          │
│ Paranoid                                                                                                                    │ 2073          │
│ Most High                                                                                                                   │ 2074          │
│ Your Blue Room                                                                                                              │ 2075          │
│ Plot 180                                                                                                                    │ 2076          │
│ Sanctuary                                                                                                                   │ 2077          │
│ Untitled                                                                                                                    │ 2078          │
│ Black                                                                                                                       │ 2079          │
│ Big Wave                                                                                                                    │ 2080          │
│ Cropduster                                                                                                                  │ 2081          │
│ 1/2 Full                                                                                                                    │ 2082          │
│ Oceans                                                                                                                      │ 2083          │
│ Dissident                                                                                                                   │ 2084          │
│ Don't Look Back                                                                                                             │ 2085          │
│ Pick Myself Up                                                                                                              │ 2086          │
│ Any Colour You Like                                                                                                         │ 2087          │
│ Rappers Reais                                                                                                               │ 2088          │
│ Nega Do Cabelo Duro                                                                                                         │ 2089          │
│ Hemp Family                                                                                                                 │ 2090          │
│ Se Liga                                                                                                                     │ 2091          │
│ Another One Bites The Dust                                                                                                  │ 2092          │
│ Fat Bottomed Girls                                                                                                          │ 2093          │
│ You're My Best Friend                                                                                                       │ 2094          │
│ Save Me                                                                                                                     │ 2095          │
│ Somebody To Love                                                                                                            │ 2096          │
│ Flash                                                                                                                       │ 2097          │
│ We Will Rock You                                                                                                            │ 2098          │
│ Spread Your Wings                                                                                                           │ 2099          │
│ Who Needs You                                                                                                               │ 2100          │
│ Me In Honey                                                                                                                 │ 2101          │
│ You Are The Everything                                                                                                      │ 2102          │
│ Hairshirt                                                                                                                   │ 2103          │
│ Undertow                                                                                                                    │ 2104          │
│ Binky The Doormat                                                                                                           │ 2105          │
│ Low                                                                                                                         │ 2106          │
│ Country Feedback                                                                                                            │ 2107          │
│ Don't Go Back To Rockville                                                                                                  │ 2108          │
│ I Believe                                                                                                                   │ 2109          │
│ A Sua                                                                                                                       │ 2110          │
│ Bê-a-Bá                                                                                                                     │ 2111          │
│ Sapato 36                                                                                                                   │ 2112          │
│ If You Have To Ask                                                                                                          │ 2113          │
│ Under The Bridge                                                                                                            │ 2114          │
│ This Is The Place                                                                                                           │ 2115          │
│ Tear                                                                                                                        │ 2116          │
│ Get On Top                                                                                                                  │ 2117          │
│ Right On Time                                                                                                               │ 2118          │
│ Anthem                                                                                                                      │ 2119          │
│ La Puesta Del Sol                                                                                                           │ 2120          │
│ Just Ain't Good Enough                                                                                                      │ 2121          │
│ If You Don't Know Me By Now                                                                                                 │ 2122          │
│ Água E Fogo                                                                                                                 │ 2123          │
│ Fica                                                                                                                        │ 2124          │
│ Os Exilados                                                                                                                 │ 2125          │
│ Waiting                                                                                                                     │ 2126          │
│ Saturnine                                                                                                                   │ 2127          │
│ Rock On                                                                                                                     │ 2128          │
│ Winterlong                                                                                                                  │ 2129          │
│ Blissed & Gone                                                                                                              │ 2130          │
│ Rhinocerous                                                                                                                 │ 2131          │
│ Cherub Rock                                                                                                                 │ 2132          │
│ Disarm                                                                                                                      │ 2133          │
│ Bullet With Butterfly Wings                                                                                                 │ 2134          │
│ Eye                                                                                                                         │ 2135          │
│ Stand Inside Your Love                                                                                                      │ 2136          │
│ Flower                                                                                                                      │ 2137          │
│ Jesus Christ Pose                                                                                                           │ 2138          │
│ The Day I Tried To Live                                                                                                     │ 2139          │
│ Burden In My Hand                                                                                                           │ 2140          │
│ Rasul                                                                                                                       │ 2141          │
│ End Of Romanticism                                                                                                          │ 2142          │
│ Travis Walk                                                                                                                 │ 2143          │
│ Sex Type Thing                                                                                                              │ 2144          │
│ Piece Of Pie                                                                                                                │ 2145          │
│ B.Y.O.B.                                                                                                                    │ 2146          │
│ Question!                                                                                                                   │ 2147          │
│ Duende                                                                                                                      │ 2148          │
│ Sting Me                                                                                                                    │ 2149          │
│ Black Moon Creeping                                                                                                         │ 2150          │
│ White Riot                                                                                                                  │ 2151          │
│ Train In Vain                                                                                                               │ 2152          │
│ War (The Process)                                                                                                           │ 2153          │
│ Speed Of Light                                                                                                              │ 2154          │
│ Wild Hearted Son                                                                                                            │ 2155          │
│ Sun King                                                                                                                    │ 2156          │
│ Back Door Man                                                                                                               │ 2157          │
│ Don't Stand so Close to Me                                                                                                  │ 2158          │
│ Message in a Bottle (new classic rock mix)                                                                                  │ 2159          │
│ Paint It Black                                                                                                              │ 2160          │
│ Corinna                                                                                                                     │ 2161          │
│ Love Is Strong                                                                                                              │ 2162          │
│ Sweethearts Together                                                                                                        │ 2163          │
│ Release                                                                                                                     │ 2164          │
│ Heaven Coming Down                                                                                                          │ 2165          │
│ The River (Remix)                                                                                                           │ 2166          │
│ Waiting On A Sign                                                                                                           │ 2167          │
│ Paint It Black                                                                                                              │ 2168          │
│ Army Ants                                                                                                                   │ 2169          │
│ Gyroscope                                                                                                                   │ 2170          │
│ Release                                                                                                                     │ 2171          │
│ Babylon                                                                                                                     │ 2172          │
│ I Can't Explain                                                                                                             │ 2173          │
│ I'm A Boy                                                                                                                   │ 2174          │
│ I Can See For Miles                                                                                                         │ 2175          │
│ Baba O'Riley                                                                                                                │ 2176          │
│ Join Together                                                                                                               │ 2177          │
│ Primavera                                                                                                                   │ 2178          │
│ New Love                                                                                                                    │ 2179          │
│ Compadre                                                                                                                    │ 2180          │
│ Não Quero Dinheiro                                                                                                          │ 2181          │
│ Canário Do Reino                                                                                                            │ 2182          │
│ Comida                                                                                                                      │ 2183          │
│ Marvin                                                                                                                      │ 2184          │
│ Cabeça Dinossauro                                                                                                           │ 2185          │
│ Polícia (Vinheta)                                                                                                           │ 2186          │
│ Sua Impossivel Chance                                                                                                       │ 2187          │
│ Insensível                                                                                                                  │ 2188          │
│ Collaborators                                                                                                               │ 2189          │
│ The Woman King                                                                                                              │ 2190          │
│ One Giant Leap                                                                                                              │ 2191          │
│ The Fix                                                                                                                     │ 2192          │
│ Man of Science, Man of Faith (Premiere)                                                                                     │ 2193          │
│ Walkabout                                                                                                                   │ 2194          │
│ The Moth                                                                                                                    │ 2195          │
│ Stranger In a Strange Land                                                                                                  │ 2196          │
│ Par Avion                                                                                                                   │ 2197          │
│ Outlaws                                                                                                                     │ 2198          │
│ Deus Ex Machina                                                                                                             │ 2199          │
│ Live Together, Die Alone, Pt. 1                                                                                             │ 2200          │
│ So Cruel                                                                                                                    │ 2201          │
│ Peace On Earth                                                                                                              │ 2202          │
│ When I Look At The World                                                                                                    │ 2203          │
│ New York                                                                                                                    │ 2204          │
│ The Three Sunrises                                                                                                          │ 2205          │
│ Sweetest Thing                                                                                                              │ 2206          │
│ Bass Trap                                                                                                                   │ 2207          │
│ Everlasting Love                                                                                                            │ 2208          │
│ Walk To The Water                                                                                                           │ 2209          │
│ Hallelujah Here She Comes                                                                                                   │ 2210          │
│ Trash, Trampoline And The Party Girl                                                                                        │ 2211          │
│ Love And Peace Or Else                                                                                                      │ 2212          │
│ Crumbs From Your Table                                                                                                      │ 2213          │
│ Discotheque                                                                                                                 │ 2214          │
│ Staring At The Sun                                                                                                          │ 2215          │
│ The Playboy Mansion                                                                                                         │ 2216          │
│ Desire                                                                                                                      │ 2217          │
│ Pride (In The Name Of Love)                                                                                                 │ 2218          │
│ The Star Spangled Banner                                                                                                    │ 2219          │
│ I Still Haven't Found What I'm Looking For                                                                                  │ 2220          │
│ Sweetest Thing                                                                                                              │ 2221          │
│ Seconds                                                                                                                     │ 2222          │
│ Red Light                                                                                                                   │ 2223          │
│ Lemon                                                                                                                       │ 2224          │
│ The Wanderer                                                                                                                │ 2225          │
│ Higher Ground                                                                                                               │ 2226          │
│ Secrets                                                                                                                     │ 2227          │
│ Eruption                                                                                                                    │ 2228          │
│ Dreams                                                                                                                      │ 2229          │
│ Eruption                                                                                                                    │ 2230          │
│ On Fire                                                                                                                     │ 2231          │
│ Year to the Day                                                                                                             │ 2232          │
│ Fall To Pieces                                                                                                              │ 2233          │
│ A Bencao E Outros                                                                                                           │ 2234          │
│ Um Homem Chamado Alfredo                                                                                                    │ 2235          │
│ Looking For Love                                                                                                            │ 2236          │
│ Sweet Lady Luck                                                                                                             │ 2237          │
│ Feirinha da Pavuna/Luz do Repente/Bagaço da Laranja                                                                         │ 2238          │
│ Samba pras moças                                                                                                            │ 2239          │
│ Hot Girl                                                                                                                    │ 2240          │
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┴───────────────┘
**/

-- Proporciona una consulta que incluya el nombre de la pista comprada Y el nombre del artista con cada ítem de línea de factura.

-- Proporciona una consulta que muestre el número total de pistas en cada lista de reproducción. El nombre de la lista de reproducción debe estar incluido en la tabla resultante.

-- Proporciona una consulta que muestre todas las pistas, pero no muestre IDs. La tabla resultante debe incluir el nombre del álbum, el tipo de medio y el género.

-- Proporciona una consulta que muestre todas las facturas.

-- Proporciona una consulta que muestre las ventas totales realizadas por cada agente de ventas.

-- ¿Qué agente de ventas realizó más ventas en 2009?

-- Escribir una consulta que muestre todas las playlists de la base de datos.

-- Escribe una consulta que liste todas las canciones de una playlist.
select t.* from playlist_track as pt, tracks as t, playlists as p where t.TrackId=pt.TrackId and p.PlaylistId=pt.PlaylistId and p.PlaylistId=3;
select t.* from playlist_track as pt INNER JOIN tracks as t, playlists as p ON t.TrackId=pt.TrackId and p.PlaylistId=pt.PlaylistId and p.PlaylistId=3;
/**
┌─────────┬───────────────────────────────────────────┬─────────┬─────────────┬─────────┬──────────┬──────────────┬────────────┬───────────┐
│ TrackId │                   Name                    │ AlbumId │ MediaTypeId │ GenreId │ Composer │ Milliseconds │   Bytes    │ UnitPrice │
├─────────┼───────────────────────────────────────────┼─────────┼─────────────┼─────────┼──────────┼──────────────┼────────────┼───────────┤
│ 2819    │ Battlestar Galactica: The Story So Far    │ 226     │ 3           │ 18      │          │ 2622250      │ 490750393  │ 1.99      │
│ 2820    │ Occupation / Precipice                    │ 227     │ 3           │ 19      │          │ 5286953      │ 1054423946 │ 1.99      │
│ 2821    │ Exodus, Pt. 1                             │ 227     │ 3           │ 19      │          │ 2621708      │ 475079441  │ 1.99      │
│ 2822    │ Exodus, Pt. 2                             │ 227     │ 3           │ 19      │          │ 2618000      │ 466820021  │ 1.99      │
│ 2823    │ Collaborators                             │ 227     │ 3           │ 19      │          │ 2626626      │ 483484911  │ 1.99      │
│ 2824    │ Torn                                      │ 227     │ 3           │ 19      │          │ 2631291      │ 495262585  │ 1.99      │
│ 2825    │ A Measure of Salvation                    │ 227     │ 3           │ 18      │          │ 2563938      │ 489715554  │ 1.99      │
│ 2826    │ Hero                                      │ 227     │ 3           │ 18      │          │ 2713755      │ 506896959  │ 1.99      │
│ 2827    │ Unfinished Business                       │ 227     │ 3           │ 18      │          │ 2622038      │ 528499160  │ 1.99      │
│ 2828    │ The Passage                               │ 227     │ 3           │ 18      │          │ 2623875      │ 490375760  │ 1.99      │
│ 2829    │ The Eye of Jupiter                        │ 227     │ 3           │ 18      │          │ 2618750      │ 517909587  │ 1.99      │
│ 2830    │ Rapture                                   │ 227     │ 3           │ 18      │          │ 2624541      │ 508406153  │ 1.99      │
│ 2831    │ Taking a Break from All Your Worries      │ 227     │ 3           │ 18      │          │ 2624207      │ 492700163  │ 1.99      │
│ 2832    │ The Woman King                            │ 227     │ 3           │ 18      │          │ 2626376      │ 552893447  │ 1.99      │
│ 2833    │ A Day In the Life                         │ 227     │ 3           │ 18      │          │ 2620245      │ 462818231  │ 1.99      │
│ 2834    │ Dirty Hands                               │ 227     │ 3           │ 18      │          │ 2627961      │ 537648614  │ 1.99      │
│ 2835    │ Maelstrom                                 │ 227     │ 3           │ 18      │          │ 2622372      │ 514154275  │ 1.99      │
│ 2836    │ The Son Also Rises                        │ 227     │ 3           │ 18      │          │ 2621830      │ 499258498  │ 1.99      │
│ 2837    │ Crossroads, Pt. 1                         │ 227     │ 3           │ 20      │          │ 2622622      │ 486233524  │ 1.99      │
│ 2838    │ Crossroads, Pt. 2                         │ 227     │ 3           │ 20      │          │ 2869953      │ 497335706  │ 1.99      │
│ 2839    │ Genesis                                   │ 228     │ 3           │ 19      │          │ 2611986      │ 515671080  │ 1.99      │
│ 2840    │ Don't Look Back                           │ 228     │ 3           │ 21      │          │ 2571154      │ 493628775  │ 1.99      │
│ 2841    │ One Giant Leap                            │ 228     │ 3           │ 21      │          │ 2607649      │ 521616246  │ 1.99      │
│ 2842    │ Collision                                 │ 228     │ 3           │ 21      │          │ 2605480      │ 526182322  │ 1.99      │
│ 2843    │ Hiros                                     │ 228     │ 3           │ 21      │          │ 2533575      │ 488835454  │ 1.99      │
│ 2844    │ Better Halves                             │ 228     │ 3           │ 21      │          │ 2573031      │ 549353481  │ 1.99      │
│ 2845    │ Nothing to Hide                           │ 228     │ 3           │ 19      │          │ 2605647      │ 510058181  │ 1.99      │
│ 2846    │ Seven Minutes to Midnight                 │ 228     │ 3           │ 21      │          │ 2613988      │ 515590682  │ 1.99      │
│ 2847    │ Homecoming                                │ 228     │ 3           │ 21      │          │ 2601351      │ 516015339  │ 1.99      │
│ 2848    │ Six Months Ago                            │ 228     │ 3           │ 19      │          │ 2602852      │ 505133869  │ 1.99      │
│ 2849    │ Fallout                                   │ 228     │ 3           │ 21      │          │ 2594761      │ 501145440  │ 1.99      │
│ 2850    │ The Fix                                   │ 228     │ 3           │ 21      │          │ 2600266      │ 507026323  │ 1.99      │
│ 2851    │ Distractions                              │ 228     │ 3           │ 21      │          │ 2590382      │ 537111289  │ 1.99      │
│ 2852    │ Run!                                      │ 228     │ 3           │ 21      │          │ 2602602      │ 542936677  │ 1.99      │
│ 2853    │ Unexpected                                │ 228     │ 3           │ 21      │          │ 2598139      │ 511777758  │ 1.99      │
│ 2854    │ Company Man                               │ 228     │ 3           │ 21      │          │ 2601226      │ 493168135  │ 1.99      │
│ 2855    │ Company Man                               │ 228     │ 3           │ 21      │          │ 2601101      │ 503786316  │ 1.99      │
│ 2856    │ Parasite                                  │ 228     │ 3           │ 21      │          │ 2602727      │ 487461520  │ 1.99      │
│ 2857    │ A Tale of Two Cities                      │ 229     │ 3           │ 19      │          │ 2636970      │ 513691652  │ 1.99      │
│ 2858    │ Lost (Pilot, Part 1) [Premiere]           │ 230     │ 3           │ 19      │          │ 2548875      │ 217124866  │ 1.99      │
│ 2859    │ Man of Science, Man of Faith (Premiere)   │ 231     │ 3           │ 19      │          │ 2612250      │ 543342028  │ 1.99      │
│ 2860    │ Adrift                                    │ 231     │ 3           │ 19      │          │ 2564958      │ 502663995  │ 1.99      │
│ 2861    │ Lost (Pilot, Part 2)                      │ 230     │ 3           │ 19      │          │ 2436583      │ 204995876  │ 1.99      │
│ 2862    │ The Glass Ballerina                       │ 229     │ 3           │ 21      │          │ 2637458      │ 535729216  │ 1.99      │
│ 2863    │ Further Instructions                      │ 229     │ 3           │ 19      │          │ 2563980      │ 502041019  │ 1.99      │
│ 2864    │ Orientation                               │ 231     │ 3           │ 19      │          │ 2609083      │ 500600434  │ 1.99      │
│ 2865    │ Tabula Rasa                               │ 230     │ 3           │ 19      │          │ 2627105      │ 210526410  │ 1.99      │
│ 2866    │ Every Man for Himself                     │ 229     │ 3           │ 21      │          │ 2637387      │ 513803546  │ 1.99      │
│ 2867    │ Everybody Hates Hugo                      │ 231     │ 3           │ 19      │          │ 2609192      │ 498163145  │ 1.99      │
│ 2868    │ Walkabout                                 │ 230     │ 3           │ 19      │          │ 2587370      │ 207748198  │ 1.99      │
│ 2869    │ ...And Found                              │ 231     │ 3           │ 19      │          │ 2563833      │ 500330548  │ 1.99      │
│ 2870    │ The Cost of Living                        │ 229     │ 3           │ 19      │          │ 2637500      │ 505647192  │ 1.99      │
│ 2871    │ White Rabbit                              │ 230     │ 3           │ 19      │          │ 2571965      │ 201654606  │ 1.99      │
│ 2872    │ Abandoned                                 │ 231     │ 3           │ 19      │          │ 2587041      │ 537348711  │ 1.99      │
│ 2873    │ House of the Rising Sun                   │ 230     │ 3           │ 19      │          │ 2590032      │ 210379525  │ 1.99      │
│ 2874    │ I Do                                      │ 229     │ 3           │ 19      │          │ 2627791      │ 504676825  │ 1.99      │
│ 2875    │ Not In Portland                           │ 229     │ 3           │ 21      │          │ 2637303      │ 499061234  │ 1.99      │
│ 2876    │ Not In Portland                           │ 229     │ 3           │ 21      │          │ 2637345      │ 510546847  │ 1.99      │
│ 2877    │ The Moth                                  │ 230     │ 3           │ 19      │          │ 2631327      │ 228896396  │ 1.99      │
│ 2878    │ The Other 48 Days                         │ 231     │ 3           │ 19      │          │ 2610625      │ 535256753  │ 1.99      │
│ 2879    │ Collision                                 │ 231     │ 3           │ 19      │          │ 2564916      │ 475656544  │ 1.99      │
│ 2880    │ Confidence Man                            │ 230     │ 3           │ 19      │          │ 2615244      │ 223756475  │ 1.99      │
│ 2881    │ Flashes Before Your Eyes                  │ 229     │ 3           │ 21      │          │ 2636636      │ 537760755  │ 1.99      │
│ 2882    │ Lost Survival Guide                       │ 229     │ 3           │ 21      │          │ 2632590      │ 486675063  │ 1.99      │
│ 2883    │ Solitary                                  │ 230     │ 3           │ 19      │          │ 2612894      │ 207045178  │ 1.99      │
│ 2884    │ What Kate Did                             │ 231     │ 3           │ 19      │          │ 2610250      │ 484583988  │ 1.99      │
│ 2885    │ Raised By Another                         │ 230     │ 3           │ 19      │          │ 2590459      │ 223623810  │ 1.99      │
│ 2886    │ Stranger In a Strange Land                │ 229     │ 3           │ 21      │          │ 2636428      │ 505056021  │ 1.99      │
│ 2887    │ The 23rd Psalm                            │ 231     │ 3           │ 19      │          │ 2610416      │ 487401604  │ 1.99      │
│ 2888    │ All the Best Cowboys Have Daddy Issues    │ 230     │ 3           │ 19      │          │ 2555492      │ 211743651  │ 1.99      │
│ 2889    │ The Hunting Party                         │ 231     │ 3           │ 21      │          │ 2611333      │ 520350364  │ 1.99      │
│ 2890    │ Tricia Tanaka Is Dead                     │ 229     │ 3           │ 21      │          │ 2635010      │ 548197162  │ 1.99      │
│ 2891    │ Enter 77                                  │ 229     │ 3           │ 21      │          │ 2629796      │ 517521422  │ 1.99      │
│ 2892    │ Fire + Water                              │ 231     │ 3           │ 21      │          │ 2600333      │ 488458695  │ 1.99      │
│ 2893    │ Whatever the Case May Be                  │ 230     │ 3           │ 19      │          │ 2616410      │ 183867185  │ 1.99      │
│ 2894    │ Hearts and Minds                          │ 230     │ 3           │ 19      │          │ 2619462      │ 207607466  │ 1.99      │
│ 2895    │ Par Avion                                 │ 229     │ 3           │ 21      │          │ 2629879      │ 517079642  │ 1.99      │
│ 2896    │ The Long Con                              │ 231     │ 3           │ 19      │          │ 2679583      │ 518376636  │ 1.99      │
│ 2897    │ One of Them                               │ 231     │ 3           │ 21      │          │ 2698791      │ 542332389  │ 1.99      │
│ 2898    │ Special                                   │ 230     │ 3           │ 19      │          │ 2618530      │ 219961967  │ 1.99      │
│ 2899    │ The Man from Tallahassee                  │ 229     │ 3           │ 21      │          │ 2637637      │ 550893556  │ 1.99      │
│ 2900    │ Exposé                                    │ 229     │ 3           │ 21      │          │ 2593760      │ 511338017  │ 1.99      │
│ 2901    │ Homecoming                                │ 230     │ 3           │ 19      │          │ 2515882      │ 210675221  │ 1.99      │
│ 2902    │ Maternity Leave                           │ 231     │ 3           │ 21      │          │ 2780416      │ 555244214  │ 1.99      │
│ 2903    │ Left Behind                               │ 229     │ 3           │ 21      │          │ 2635343      │ 538491964  │ 1.99      │
│ 2904    │ Outlaws                                   │ 230     │ 3           │ 19      │          │ 2619887      │ 206500939  │ 1.99      │
│ 2905    │ The Whole Truth                           │ 231     │ 3           │ 21      │          │ 2610125      │ 495487014  │ 1.99      │
│ 2906    │ ...In Translation                         │ 230     │ 3           │ 19      │          │ 2604575      │ 215441983  │ 1.99      │
│ 2907    │ Lockdown                                  │ 231     │ 3           │ 21      │          │ 2610250      │ 543886056  │ 1.99      │
│ 2908    │ One of Us                                 │ 229     │ 3           │ 21      │          │ 2638096      │ 502387276  │ 1.99      │
│ 2909    │ Catch-22                                  │ 229     │ 3           │ 21      │          │ 2561394      │ 489773399  │ 1.99      │
│ 2910    │ Dave                                      │ 231     │ 3           │ 19      │          │ 2825166      │ 574325829  │ 1.99      │
│ 2911    │ Numbers                                   │ 230     │ 3           │ 19      │          │ 2609772      │ 214709143  │ 1.99      │
│ 2912    │ D.O.C.                                    │ 229     │ 3           │ 21      │          │ 2616032      │ 518556641  │ 1.99      │
│ 2913    │ Deus Ex Machina                           │ 230     │ 3           │ 19      │          │ 2582009      │ 214996732  │ 1.99      │
│ 2914    │ S.O.S.                                    │ 231     │ 3           │ 19      │          │ 2639541      │ 517979269  │ 1.99      │
│ 2915    │ Do No Harm                                │ 230     │ 3           │ 19      │          │ 2618487      │ 212039309  │ 1.99      │
│ 2916    │ Two for the Road                          │ 231     │ 3           │ 21      │          │ 2610958      │ 502404558  │ 1.99      │
│ 2917    │ The Greater Good                          │ 230     │ 3           │ 19      │          │ 2617784      │ 214130273  │ 1.99      │
│ 2918    │ "?"                                       │ 231     │ 3           │ 19      │          │ 2782333      │ 528227089  │ 1.99      │
│ 2919    │ Born to Run                               │ 230     │ 3           │ 19      │          │ 2618619      │ 213772057  │ 1.99      │
│ 2920    │ Three Minutes                             │ 231     │ 3           │ 19      │          │ 2763666      │ 531556853  │ 1.99      │
│ 2921    │ Exodus (Part 1)                           │ 230     │ 3           │ 19      │          │ 2620747      │ 213107744  │ 1.99      │
│ 2922    │ Live Together, Die Alone, Pt. 1           │ 231     │ 3           │ 21      │          │ 2478041      │ 457364940  │ 1.99      │
│ 2923    │ Exodus (Part 2) [Season Finale]           │ 230     │ 3           │ 19      │          │ 2605557      │ 208667059  │ 1.99      │
│ 2924    │ Live Together, Die Alone, Pt. 2           │ 231     │ 3           │ 19      │          │ 2656531      │ 503619265  │ 1.99      │
│ 2925    │ Exodus (Part 3) [Season Finale]           │ 230     │ 3           │ 19      │          │ 2619869      │ 197937785  │ 1.99      │
│ 3165    │ The Brig                                  │ 229     │ 3           │ 21      │          │ 2617325      │ 488919543  │ 1.99      │
│ 3166    │ .07%                                      │ 228     │ 3           │ 21      │          │ 2585794      │ 541715199  │ 1.99      │
│ 3167    │ Five Years Gone                           │ 228     │ 3           │ 21      │          │ 2587712      │ 530551890  │ 1.99      │
│ 3168    │ The Hard Part                             │ 228     │ 3           │ 21      │          │ 2601017      │ 475996611  │ 1.99      │
│ 3169    │ The Man Behind the Curtain                │ 229     │ 3           │ 21      │          │ 2615990      │ 493951081  │ 1.99      │
│ 3170    │ Greatest Hits                             │ 229     │ 3           │ 21      │          │ 2617117      │ 522102916  │ 1.99      │
│ 3171    │ Landslide                                 │ 228     │ 3           │ 21      │          │ 2600725      │ 518677861  │ 1.99      │
│ 3172    │ The Office: An American Workplace (Pilot) │ 249     │ 3           │ 19      │          │ 1380833      │ 290482361  │ 1.99      │
│ 3173    │ Diversity Day                             │ 249     │ 3           │ 19      │          │ 1306416      │ 257879716  │ 1.99      │
│ 3174    │ Health Care                               │ 249     │ 3           │ 19      │          │ 1321791      │ 260493577  │ 1.99      │
│ 3175    │ The Alliance                              │ 249     │ 3           │ 19      │          │ 1317125      │ 266203162  │ 1.99      │
│ 3176    │ Basketball                                │ 249     │ 3           │ 19      │          │ 1323541      │ 267464180  │ 1.99      │
│ 3177    │ Hot Girl                                  │ 249     │ 3           │ 19      │          │ 1325458      │ 267836576  │ 1.99      │
│ 3178    │ The Dundies                               │ 250     │ 3           │ 19      │          │ 1253541      │ 246845576  │ 1.99      │
│ 3179    │ Sexual Harassment                         │ 250     │ 3           │ 19      │          │ 1294541      │ 273069146  │ 1.99      │
│ 3180    │ Office Olympics                           │ 250     │ 3           │ 19      │          │ 1290458      │ 256247623  │ 1.99      │
│ 3181    │ The Fire                                  │ 250     │ 3           │ 19      │          │ 1288166      │ 266856017  │ 1.99      │
│ 3182    │ Halloween                                 │ 250     │ 3           │ 19      │          │ 1315333      │ 249205209  │ 1.99      │
│ 3183    │ The Fight                                 │ 250     │ 3           │ 19      │          │ 1320028      │ 277149457  │ 1.99      │
│ 3184    │ The Client                                │ 250     │ 3           │ 19      │          │ 1299341      │ 253836788  │ 1.99      │
│ 3185    │ Performance Review                        │ 250     │ 3           │ 19      │          │ 1292458      │ 256143822  │ 1.99      │
│ 3186    │ Email Surveillance                        │ 250     │ 3           │ 19      │          │ 1328870      │ 265101113  │ 1.99      │
│ 3187    │ Christmas Party                           │ 250     │ 3           │ 19      │          │ 1282115      │ 260891300  │ 1.99      │
│ 3188    │ Booze Cruise                              │ 250     │ 3           │ 19      │          │ 1267958      │ 252518021  │ 1.99      │
│ 3189    │ The Injury                                │ 250     │ 3           │ 19      │          │ 1275275      │ 253912762  │ 1.99      │
│ 3190    │ The Secret                                │ 250     │ 3           │ 19      │          │ 1264875      │ 253143200  │ 1.99      │
│ 3191    │ The Carpet                                │ 250     │ 3           │ 19      │          │ 1264375      │ 256477011  │ 1.99      │
│ 3192    │ Boys and Girls                            │ 250     │ 3           │ 19      │          │ 1278333      │ 255245729  │ 1.99      │
│ 3193    │ Valentine's Day                           │ 250     │ 3           │ 19      │          │ 1270375      │ 253552710  │ 1.99      │
│ 3194    │ Dwight's Speech                           │ 250     │ 3           │ 19      │          │ 1278041      │ 255001728  │ 1.99      │
│ 3195    │ Take Your Daughter to Work Day            │ 250     │ 3           │ 19      │          │ 1268333      │ 253451012  │ 1.99      │
│ 3196    │ Michael's Birthday                        │ 250     │ 3           │ 19      │          │ 1237791      │ 247238398  │ 1.99      │
│ 3197    │ Drug Testing                              │ 250     │ 3           │ 19      │          │ 1278625      │ 244626927  │ 1.99      │
│ 3198    │ Conflict Resolution                       │ 250     │ 3           │ 19      │          │ 1274583      │ 253808658  │ 1.99      │
│ 3199    │ Casino Night - Season Finale              │ 250     │ 3           │ 19      │          │ 1712791      │ 327642458  │ 1.99      │
│ 3200    │ Gay Witch Hunt                            │ 251     │ 3           │ 19      │          │ 1326534      │ 276942637  │ 1.99      │
│ 3201    │ The Convention                            │ 251     │ 3           │ 19      │          │ 1297213      │ 255117055  │ 1.99      │
│ 3202    │ The Coup                                  │ 251     │ 3           │ 19      │          │ 1276526      │ 267205501  │ 1.99      │
│ 3203    │ Grief Counseling                          │ 251     │ 3           │ 19      │          │ 1282615      │ 256912833  │ 1.99      │
│ 3204    │ The Initiation                            │ 251     │ 3           │ 19      │          │ 1280113      │ 251728257  │ 1.99      │
│ 3205    │ Diwali                                    │ 251     │ 3           │ 19      │          │ 1279904      │ 252726644  │ 1.99      │
│ 3206    │ Branch Closing                            │ 251     │ 3           │ 19      │          │ 1822781      │ 358761786  │ 1.99      │
│ 3207    │ The Merger                                │ 251     │ 3           │ 19      │          │ 1801926      │ 345960631  │ 1.99      │
│ 3208    │ The Convict                               │ 251     │ 3           │ 22      │          │ 1273064      │ 248863427  │ 1.99      │
│ 3209    │ A Benihana Christmas, Pts. 1 & 2          │ 251     │ 3           │ 22      │          │ 2519436      │ 515301752  │ 1.99      │
│ 3210    │ Back from Vacation                        │ 251     │ 3           │ 22      │          │ 1271688      │ 245378749  │ 1.99      │
│ 3211    │ Traveling Salesmen                        │ 251     │ 3           │ 22      │          │ 1289039      │ 250822697  │ 1.99      │
│ 3212    │ Producer's Cut: The Return                │ 251     │ 3           │ 22      │          │ 1700241      │ 337219980  │ 1.99      │
│ 3213    │ Ben Franklin                              │ 251     │ 3           │ 22      │          │ 1271938      │ 264168080  │ 1.99      │
│ 3214    │ Phyllis's Wedding                         │ 251     │ 3           │ 22      │          │ 1271521      │ 258561054  │ 1.99      │
│ 3215    │ Business School                           │ 251     │ 3           │ 22      │          │ 1302093      │ 254402605  │ 1.99      │
│ 3216    │ Cocktails                                 │ 251     │ 3           │ 22      │          │ 1272522      │ 259011909  │ 1.99      │
│ 3217    │ The Negotiation                           │ 251     │ 3           │ 22      │          │ 1767851      │ 371663719  │ 1.99      │
│ 3218    │ Safety Training                           │ 251     │ 3           │ 22      │          │ 1271229      │ 253054534  │ 1.99      │
│ 3219    │ Product Recall                            │ 251     │ 3           │ 22      │          │ 1268268      │ 251208610  │ 1.99      │
│ 3220    │ Women's Appreciation                      │ 251     │ 3           │ 22      │          │ 1732649      │ 338778844  │ 1.99      │
│ 3221    │ Beach Games                               │ 251     │ 3           │ 22      │          │ 1676134      │ 333671149  │ 1.99      │
│ 3222    │ The Job                                   │ 251     │ 3           │ 22      │          │ 2541875      │ 501060138  │ 1.99      │
│ 3223    │ How to Stop an Exploding Man              │ 228     │ 3           │ 21      │          │ 2687103      │ 487881159  │ 1.99      │
│ 3224    │ Through a Looking Glass                   │ 229     │ 3           │ 21      │          │ 5088838      │ 1059546140 │ 1.99      │
│ 3226    │ Battlestar Galactica, Pt. 1               │ 253     │ 3           │ 20      │          │ 2952702      │ 541359437  │ 1.99      │
│ 3227    │ Battlestar Galactica, Pt. 2               │ 253     │ 3           │ 20      │          │ 2956081      │ 521387924  │ 1.99      │
│ 3228    │ Battlestar Galactica, Pt. 3               │ 253     │ 3           │ 20      │          │ 2927802      │ 554509033  │ 1.99      │
│ 3229    │ Lost Planet of the Gods, Pt. 1            │ 253     │ 3           │ 20      │          │ 2922547      │ 537812711  │ 1.99      │
│ 3230    │ Lost Planet of the Gods, Pt. 2            │ 253     │ 3           │ 20      │          │ 2914664      │ 534343985  │ 1.99      │
│ 3231    │ The Lost Warrior                          │ 253     │ 3           │ 20      │          │ 2920045      │ 558872190  │ 1.99      │
│ 3232    │ The Long Patrol                           │ 253     │ 3           │ 20      │          │ 2925008      │ 513122217  │ 1.99      │
│ 3233    │ The Gun On Ice Planet Zero, Pt. 1         │ 253     │ 3           │ 20      │          │ 2907615      │ 540980196  │ 1.99      │
│ 3234    │ The Gun On Ice Planet Zero, Pt. 2         │ 253     │ 3           │ 20      │          │ 2924341      │ 546542281  │ 1.99      │
│ 3235    │ The Magnificent Warriors                  │ 253     │ 3           │ 20      │          │ 2924716      │ 570152232  │ 1.99      │
│ 3236    │ The Young Lords                           │ 253     │ 3           │ 20      │          │ 2863571      │ 587051735  │ 1.99      │
│ 3237    │ The Living Legend, Pt. 1                  │ 253     │ 3           │ 20      │          │ 2924507      │ 503641007  │ 1.99      │
│ 3238    │ The Living Legend, Pt. 2                  │ 253     │ 3           │ 20      │          │ 2923298      │ 515632754  │ 1.99      │
│ 3239    │ Fire In Space                             │ 253     │ 3           │ 20      │          │ 2926593      │ 536784757  │ 1.99      │
│ 3240    │ War of the Gods, Pt. 1                    │ 253     │ 3           │ 20      │          │ 2922630      │ 505761343  │ 1.99      │
│ 3241    │ War of the Gods, Pt. 2                    │ 253     │ 3           │ 20      │          │ 2923381      │ 487899692  │ 1.99      │
│ 3242    │ The Man With Nine Lives                   │ 253     │ 3           │ 20      │          │ 2956998      │ 577829804  │ 1.99      │
│ 3243    │ Murder On the Rising Star                 │ 253     │ 3           │ 20      │          │ 2935894      │ 551759986  │ 1.99      │
│ 3244    │ Greetings from Earth, Pt. 1               │ 253     │ 3           │ 20      │          │ 2960293      │ 536824558  │ 1.99      │
│ 3245    │ Greetings from Earth, Pt. 2               │ 253     │ 3           │ 20      │          │ 2903778      │ 527842860  │ 1.99      │
│ 3246    │ Baltar's Escape                           │ 253     │ 3           │ 20      │          │ 2922088      │ 525564224  │ 1.99      │
│ 3247    │ Experiment In Terra                       │ 253     │ 3           │ 20      │          │ 2923548      │ 547982556  │ 1.99      │
│ 3248    │ Take the Celestra                         │ 253     │ 3           │ 20      │          │ 2927677      │ 512381289  │ 1.99      │
│ 3249    │ The Hand of God                           │ 253     │ 3           │ 20      │          │ 2924007      │ 536583079  │ 1.99      │
│ 3250    │ Pilot                                     │ 254     │ 3           │ 19      │          │ 2484567      │ 492670102  │ 1.99      │
│ 3251    │ Through the Looking Glass, Pt. 2          │ 229     │ 3           │ 21      │          │ 2617117      │ 550943353  │ 1.99      │
│ 3252    │ Through the Looking Glass, Pt. 1          │ 229     │ 3           │ 21      │          │ 2610860      │ 493211809  │ 1.99      │
│ 3337    │ Past, Present, and Future                 │ 261     │ 3           │ 21      │          │ 2492867      │ 490796184  │ 1.99      │
│ 3338    │ The Beginning of the End                  │ 261     │ 3           │ 21      │          │ 2611903      │ 526865050  │ 1.99      │
│ 3339    │ LOST Season 4 Trailer                     │ 261     │ 3           │ 21      │          │ 112712       │ 20831818   │ 1.99      │
│ 3340    │ LOST In 8:15                              │ 261     │ 3           │ 21      │          │ 497163       │ 98460675   │ 1.99      │
│ 3341    │ Confirmed Dead                            │ 261     │ 3           │ 21      │          │ 2611986      │ 512168460  │ 1.99      │
│ 3342    │ The Economist                             │ 261     │ 3           │ 21      │          │ 2609025      │ 516934914  │ 1.99      │
│ 3343    │ Eggtown                                   │ 261     │ 3           │ 19      │          │ 2608817      │ 501061240  │ 1.99      │
│ 3344    │ The Constant                              │ 261     │ 3           │ 21      │          │ 2611569      │ 520209363  │ 1.99      │
│ 3345    │ The Other Woman                           │ 261     │ 3           │ 21      │          │ 2605021      │ 513246663  │ 1.99      │
│ 3346    │ Ji Yeon                                   │ 261     │ 3           │ 19      │          │ 2588797      │ 506458858  │ 1.99      │
│ 3347    │ Meet Kevin Johnson                        │ 261     │ 3           │ 19      │          │ 2612028      │ 504132981  │ 1.99      │
│ 3348    │ The Shape of Things to Come               │ 261     │ 3           │ 21      │          │ 2591299      │ 502284266  │ 1.99      │
│ 3360    │ Something Nice Back Home                  │ 261     │ 3           │ 21      │          │ 2612779      │ 484711353  │ 1.99      │
│ 3361    │ Cabin Fever                               │ 261     │ 3           │ 21      │          │ 2612028      │ 477733942  │ 1.99      │
│ 3362    │ There's No Place Like Home, Pt. 1         │ 261     │ 3           │ 21      │          │ 2609526      │ 522919189  │ 1.99      │
│ 3363    │ There's No Place Like Home, Pt. 2         │ 261     │ 3           │ 21      │          │ 2497956      │ 523748920  │ 1.99      │
│ 3364    │ There's No Place Like Home, Pt. 3         │ 261     │ 3           │ 21      │          │ 2582957      │ 486161766  │ 1.99      │
│ 3428    │ Branch Closing                            │ 251     │ 3           │ 22      │          │ 1814855      │ 360331351  │ 1.99      │
│ 3429    │ The Return                                │ 251     │ 3           │ 22      │          │ 1705080      │ 343877320  │ 1.99      │
└─────────┴───────────────────────────────────────────┴─────────┴─────────────┴─────────┴──────────┴──────────────┴────────────┴───────────┘
**/
-- Escribe una consulta que liste exclusivamente el nombre de las canciones de una playlist concreta, con el nombre de su género y el nombre de tipo de medio.

```

</div>