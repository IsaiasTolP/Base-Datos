<div align="justify">

# <div align="center">Tarea de Consultas 11 (Jardinería)</div>

## Consultas sobre un tabla

```sql

-- Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.
select codigo_oficina, ciudad from oficina;
/**
┌────────────────┬──────────────────────┐
│ codigo_oficina │        ciudad        │
├────────────────┼──────────────────────┤
│ BCN-ES         │ Barcelona            │
│ BOS-USA        │ Boston               │
│ LON-UK         │ Londres              │
│ MAD-ES         │ Madrid               │
│ PAR-FR         │ Paris                │
│ SFC-USA        │ San Francisco        │
│ SYD-AU         │ Sydney               │
│ TAL-ES         │ Talavera de la Reina │
│ TOK-JP         │ Tokyo                │
└────────────────┴──────────────────────┘
**/
-- Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
select ciudad, telefono from oficina where pais='España';
/**
┌──────────────────────┬────────────────┐
│        ciudad        │    telefono    │
├──────────────────────┼────────────────┤
│ Barcelona            │ +34 93 3561182 │
│ Madrid               │ +34 91 7514487 │
│ Talavera de la Reina │ +34 925 867231 │
└──────────────────────┴────────────────┘
**/
-- Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.
select nombre, apellido1, apellido2, email from empleado where codigo_jefe=7;
/**
┌─────────┬───────────┬───────────┬──────────────────────────┐
│ nombre  │ apellido1 │ apellido2 │          email           │
├─────────┼───────────┼───────────┼──────────────────────────┤
│ Mariano │ López     │ Murcia    │ mlopez@jardineria.es     │
│ Lucio   │ Campoamor │ Martín    │ lcampoamor@jardineria.es │
│ Hilario │ Rodriguez │ Huertas   │ hrodriguez@jardineria.es │
└─────────┴───────────┴───────────┴──────────────────────────┘
**/
-- Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.
select puesto, nombre, apellido1, apellido2, email from empleado where codigo_jefe is NULL;
/**
┌──────────────────┬────────┬───────────┬───────────┬──────────────────────┐
│      puesto      │ nombre │ apellido1 │ apellido2 │        email         │
├──────────────────┼────────┼───────────┼───────────┼──────────────────────┤
│ Director General │ Marcos │ Magaña    │ Perez     │ marcos@jardineria.es │
└──────────────────┴────────┴───────────┴───────────┴──────────────────────┘
**/
-- Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean representantes de ventas.
select nombre, apellido1, apellido2, puesto from empleado where puesto!='Representante Ventas';
/**
┌──────────┬────────────┬───────────┬───────────────────────┐
│  nombre  │ apellido1  │ apellido2 │        puesto         │
├──────────┼────────────┼───────────┼───────────────────────┤
│ Marcos   │ Magaña     │ Perez     │ Director General      │
│ Ruben    │ López      │ Martinez  │ Subdirector Marketing │
│ Alberto  │ Soria      │ Carrasco  │ Subdirector Ventas    │
│ Maria    │ Solís      │ Jerez     │ Secretaria            │
│ Carlos   │ Soria      │ Jimenez   │ Director Oficina      │
│ Emmanuel │ Magaña     │ Perez     │ Director Oficina      │
│ Francois │ Fignon     │           │ Director Oficina      │
│ Michael  │ Bolton     │           │ Director Oficina      │
│ Hilary   │ Washington │           │ Director Oficina      │
│ Nei      │ Nishikori  │           │ Director Oficina      │
│ Amy      │ Johnson    │           │ Director Oficina      │
│ Kevin    │ Fallmer    │           │ Director Oficina      │
└──────────┴────────────┴───────────┴───────────────────────┘
**/
-- Devuelve un listado con el nombre de los todos los clientes españoles.
select nombre_cliente from cliente where pais='Spain';
/**
┌────────────────────────────────┐
│         nombre_cliente         │
├────────────────────────────────┤
│ Lasas S.A.                     │
│ Beragua                        │
│ Club Golf Puerta del hierro    │
│ Naturagua                      │
│ DaraDistribuciones             │
│ Madrileña de riegos            │
│ Lasas S.A.                     │
│ Camunas Jardines S.L.          │
│ Dardena S.A.                   │
│ Jardin de Flores               │
│ Flores Marivi                  │
│ Flowers, S.A                   │
│ Naturajardin                   │
│ Golf S.A.                      │
│ Americh Golf Management SL     │
│ Aloha                          │
│ El Prat                        │
│ Sotogrande                     │
│ Vivero Humanes                 │
│ Fuenla City                    │
│ Jardines y Mansiones Cactus SL │
│ Jardinerías Matías SL          │
│ Agrojardin                     │
│ Top Campo                      │
│ Jardineria Sara                │
│ Campohermoso                   │
│ Flores S.L.                    │
└────────────────────────────────┘
**/
-- Devuelve un listado con los distintos estados por los que puede pasar un pedido.
select DISTINCT(estado) from pedido;
/**
┌───────────┐
│  estado   │
├───────────┤
│ Entregado │
│ Rechazado │
│ Pendiente │
└───────────┘
**/
-- Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos.
select c.codigo_cliente from cliente as c JOIN pago as p ON c.codigo_cliente=p.codigo_cliente and fecha_pago regexp '2008' group by c.codigo_cliente;
/**
┌────────────────┐
│ codigo_cliente │
├────────────────┤
│ 1              │
│ 13             │
│ 14             │
│ 26             │
└────────────────┘
**/
-- Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.
select  codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega from pedido where fecha_entrega>fecha_esperada;
/**
┌───────────────┬────────────────┬────────────────┬───────────────┐
│ codigo_pedido │ codigo_cliente │ fecha_esperada │ fecha_entrega │
├───────────────┼────────────────┼────────────────┼───────────────┤
│ 9             │ 1              │ 2008-12-27     │ 2008-12-28    │
│ 13            │ 7              │ 2009-01-14     │ 2009-01-15    │
│ 16            │ 7              │ 2009-01-07     │ 2009-01-15    │
│ 17            │ 7              │ 2009-01-09     │ 2009-01-11    │
│ 18            │ 9              │ 2009-01-06     │ 2009-01-07    │
│ 22            │ 9              │ 2009-01-11     │ 2009-01-13    │
│ 28            │ 3              │ 2009-02-17     │ 2009-02-20    │
│ 31            │ 13             │ 2008-09-30     │ 2008-10-04    │
│ 32            │ 4              │ 2007-01-19     │ 2007-01-27    │
│ 38            │ 19             │ 2009-03-06     │ 2009-03-07    │
│ 39            │ 19             │ 2009-03-07     │ 2009-03-09    │
│ 40            │ 19             │ 2009-03-10     │ 2009-03-13    │
│ 42            │ 19             │ 2009-03-23     │ 2009-03-27    │
│ 43            │ 23             │ 2009-03-26     │ 2009-03-28    │
│ 44            │ 23             │ 2009-03-27     │ 2009-03-30    │
│ 45            │ 23             │ 2009-03-04     │ 2009-03-07    │
│ 46            │ 23             │ 2009-03-04     │ 2009-03-05    │
│ 49            │ 26             │ 2008-07-22     │ 2008-07-30    │
│ 55            │ 14             │ 2009-01-10     │ 2009-01-11    │
│ 60            │ 1              │ 2008-12-27     │ 2008-12-28    │
│ 68            │ 3              │ 2009-02-17     │ 2009-02-20    │
│ 92            │ 27             │ 2009-04-30     │ 2009-05-03    │
│ 96            │ 35             │ 2008-04-12     │ 2008-04-13    │
│ 103           │ 30             │ 2009-01-20     │ 2009-01-24    │
│ 106           │ 30             │ 2009-05-15     │ 2009-05-20    │
│ 112           │ 36             │ 2009-04-06     │ 2009-05-07    │
│ 113           │ 36             │ 2008-11-09     │ 2009-01-09    │
│ 114           │ 36             │ 2009-01-29     │ 2009-01-31    │
│ 115           │ 36             │ 2009-01-26     │ 2009-02-27    │
│ 123           │ 30             │ 2009-01-20     │ 2009-01-24    │
│ 126           │ 30             │ 2009-05-15     │ 2009-05-20    │
│ 128           │ 38             │ 2008-12-10     │ 2008-12-29    │
└───────────────┴────────────────┴────────────────┴───────────────┘
**/
-- Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha esperada.
select codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega from pedido where
-- Devuelve un listado de todos los pedidos que fueron rechazados en 2009.
select * from pedido where estado='Rechazado' and fecha_entrega regexp '2009';
/**
┌───────────────┬──────────────┬────────────────┬───────────────┬───────────┬───────────────────────────────────────────────────────────┬────────────────┐
│ codigo_pedido │ fecha_pedido │ fecha_esperada │ fecha_entrega │  estado   │                        comentarios                        │ codigo_cliente │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼───────────────────────────────────────────────────────────┼────────────────┤
│ 21            │ 2009-01-09   │ 2009-01-09     │ 2009-01-09    │ Rechazado │ mal pago                                                  │ 9              │
│ 40            │ 2009-03-09   │ 2009-03-10     │ 2009-03-13    │ Rechazado │                                                           │ 19             │
│ 46            │ 2009-04-03   │ 2009-03-04     │ 2009-03-05    │ Rechazado │                                                           │ 23             │
│ 113           │ 2008-10-28   │ 2008-11-09     │ 2009-01-09    │ Rechazado │ El producto ha sido rechazado por la tardanza de el envio │ 36             │
└───────────────┴──────────────┴────────────────┴───────────────┴───────────┴───────────────────────────────────────────────────────────┴────────────────┘
**/
-- Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año.
select * from pedido where fecha_entrega regexp '-01-';
/**
┌───────────────┬──────────────┬────────────────┬───────────────┬───────────┬───────────────────────────────────────────────────────────┬────────────────┐
│ codigo_pedido │ fecha_pedido │ fecha_esperada │ fecha_entrega │  estado   │                        comentarios                        │ codigo_cliente │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼───────────────────────────────────────────────────────────┼────────────────┤
│ 1             │ 2006-01-17   │ 2006-01-19     │ 2006-01-19    │ Entregado │ Pagado a plazos                                           │ 5              │
│ 13            │ 2009-01-12   │ 2009-01-14     │ 2009-01-15    │ Entregado │                                                           │ 7              │
│ 15            │ 2009-01-09   │ 2009-01-12     │ 2009-01-11    │ Entregado │                                                           │ 7              │
│ 16            │ 2009-01-06   │ 2009-01-07     │ 2009-01-15    │ Entregado │                                                           │ 7              │
│ 17            │ 2009-01-08   │ 2009-01-09     │ 2009-01-11    │ Entregado │ mal estado                                                │ 7              │
│ 18            │ 2009-01-05   │ 2009-01-06     │ 2009-01-07    │ Entregado │                                                           │ 9              │
│ 21            │ 2009-01-09   │ 2009-01-09     │ 2009-01-09    │ Rechazado │ mal pago                                                  │ 9              │
│ 22            │ 2009-01-11   │ 2009-01-11     │ 2009-01-13    │ Entregado │                                                           │ 9              │
│ 32            │ 2007-01-07   │ 2007-01-19     │ 2007-01-27    │ Entregado │ Entrega tardia, el cliente puso reclamacion               │ 4              │
│ 55            │ 2008-12-10   │ 2009-01-10     │ 2009-01-11    │ Entregado │ Retrasado 1 dia por problemas de transporte               │ 14             │
│ 58            │ 2009-01-24   │ 2009-01-31     │ 2009-01-30    │ Entregado │ Todo correcto                                             │ 3              │
│ 64            │ 2009-01-24   │ 2009-01-31     │ 2009-01-30    │ Entregado │ Todo correcto                                             │ 1              │
│ 75            │ 2009-01-11   │ 2009-01-13     │ 2009-01-13    │ Entregado │ El pedido llego perfectamente                             │ 15             │
│ 79            │ 2009-01-12   │ 2009-01-13     │ 2009-01-13    │ Entregado │                                                           │ 28             │
│ 82            │ 2009-01-20   │ 2009-01-29     │ 2009-01-29    │ Entregado │ El pedido llego un poco mas tarde de la hora fijada       │ 28             │
│ 95            │ 2008-01-04   │ 2008-01-19     │ 2008-01-19    │ Entregado │                                                           │ 35             │
│ 100           │ 2009-01-10   │ 2009-01-15     │ 2009-01-15    │ Entregado │ El pedido llego perfectamente                             │ 16             │
│ 102           │ 2008-12-28   │ 2009-01-08     │ 2009-01-08    │ Entregado │ Pago pendiente                                            │ 16             │
│ 103           │ 2009-01-15   │ 2009-01-20     │ 2009-01-24    │ Pendiente │                                                           │ 30             │
│ 113           │ 2008-10-28   │ 2008-11-09     │ 2009-01-09    │ Rechazado │ El producto ha sido rechazado por la tardanza de el envio │ 36             │
│ 114           │ 2009-01-15   │ 2009-01-29     │ 2009-01-31    │ Entregado │ El envio llego dos dias más tarde debido al mal tiempo    │ 36             │
│ 119           │ 2009-01-10   │ 2009-01-15     │ 2009-01-15    │ Entregado │ El pedido llego perfectamente                             │ 16             │
│ 121           │ 2008-12-28   │ 2009-01-08     │ 2009-01-08    │ Entregado │ Pago pendiente                                            │ 16             │
│ 123           │ 2009-01-15   │ 2009-01-20     │ 2009-01-24    │ Pendiente │                                                           │ 30             │
└───────────────┴──────────────┴────────────────┴───────────────┴───────────┴───────────────────────────────────────────────────────────┴────────────────┘
**/
-- Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de mayor a menor.
select * from pago where fecha_pago regexp '2008' and forma_pago='PayPal';
/**
┌────────────────┬────────────┬────────────────┬────────────┬───────┐
│ codigo_cliente │ forma_pago │ id_transaccion │ fecha_pago │ total │
├────────────────┼────────────┼────────────────┼────────────┼───────┤
│ 1              │ PayPal     │ ak-std-000001  │ 2008-11-10 │ 2000  │
│ 1              │ PayPal     │ ak-std-000002  │ 2008-12-10 │ 2000  │
│ 13             │ PayPal     │ ak-std-000014  │ 2008-08-04 │ 2246  │
│ 14             │ PayPal     │ ak-std-000015  │ 2008-07-15 │ 4160  │
│ 26             │ PayPal     │ ak-std-000020  │ 2008-03-18 │ 18846 │
└────────────────┴────────────┴────────────────┴────────────┴───────┘
**/
-- Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en cuenta que no deben aparecer formas de pago repetidas.
select DISTINCT(forma_pago) from pago;
/**
┌───────────────┐
│  forma_pago   │
├───────────────┤
│ PayPal        │
│ Transferencia │
│ Cheque        │
└───────────────┘
**/
-- Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades en stock. El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio.
-- Quito la descripción porque se muy mal la tabla.
select codigo_producto, nombre, gama, dimensiones, proveedor, precio_proveedor, precio_venta, cantidad_en_stock from producto where gama='Ornamentales' and cantidad_en_stock>100 order by precio_venta DESC;
/**
┌─────────────────┬──────────────────────────────────────────────┬──────────────┬─────────────┬──────────────────┬──────────────────┬──────────────┬───────────────────┐
│ codigo_producto │                    nombre                    │     gama     │ dimensiones │    proveedor     │ precio_proveedor │ precio_venta │ cantidad_en_stock │
├─────────────────┼──────────────────────────────────────────────┼──────────────┼─────────────┼──────────────────┼──────────────────┼──────────────┼───────────────────┤
│ OR-115          │ Forsytia Intermedia \"Lynwood\"              │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 5                │ 7            │ 120               │
│ OR-116          │ Hibiscus Syriacus  \"Diana\" -Blanco Puro    │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 5                │ 7            │ 120               │
│ OR-117          │ Hibiscus Syriacus  \"Helene\" -Blanco-C.rojo │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 5                │ 7            │ 120               │
│ OR-118          │ Hibiscus Syriacus \"Pink Giant\" Rosa        │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 5                │ 7            │ 120               │
│ OR-112          │ Escallonia (Mix)                             │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 4                │ 5            │ 120               │
│ OR-113          │ Evonimus Emerald Gayeti                      │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 4                │ 5            │ 120               │
│ OR-114          │ Evonimus Pulchellus                          │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 4                │ 5            │ 120               │
│ OR-119          │ Laurus Nobilis Arbusto - Ramificado Bajo     │ Ornamentales │ 40-50       │ Viveros EL OASIS │ 4                │ 5            │ 120               │
│ OR-120          │ Lonicera Nitida                              │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 4                │ 5            │ 120               │
│ OR-121          │ Lonicera Nitida \"Maigrum\"                  │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 4                │ 5            │ 120               │
│ OR-122          │ Lonicera Pileata                             │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 4                │ 5            │ 120               │
│ OR-123          │ Philadelphus \"Virginal\"                    │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 4                │ 5            │ 120               │
│ OR-124          │ Prunus pisardii                              │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 4                │ 5            │ 120               │
│ OR-125          │ Viburnum Tinus \"Eve Price\"                 │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 4                │ 5            │ 120               │
│ OR-126          │ Weigelia \"Bristol Ruby\"                    │ Ornamentales │ 35-45       │ Viveros EL OASIS │ 4                │ 5            │ 120               │
└─────────────────┴──────────────────────────────────────────────┴──────────────┴─────────────┴──────────────────┴──────────────────┴──────────────┴───────────────────┘
**/
-- Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30.
select * from cliente where ciudad='Madrid' and codigo_empleado_rep_ventas IN (11, 30);
/**
┌────────────────┬─────────────────────────────┬─────────────────┬───────────────────┬───────────┬───────────┬───────────────────┬──────────────────┬────────┬────────┬───────┬───────────────┬────────────────────────────┬────────────────┐
│ codigo_cliente │       nombre_cliente        │ nombre_contacto │ apellido_contacto │ telefono  │    fax    │ linea_direccion1  │ linea_direccion2 │ ciudad │ region │ pais  │ codigo_postal │ codigo_empleado_rep_ventas │ limite_credito │
├────────────────┼─────────────────────────────┼─────────────────┼───────────────────┼───────────┼───────────┼───────────────────┼──────────────────┼────────┼────────┼───────┼───────────────┼────────────────────────────┼────────────────┤
│ 7              │ Beragua                     │ Jose            │ Bermejo           │ 654987321 │ 916549872 │ C/pintor segundo  │ Getafe           │ Madrid │ Madrid │ Spain │ 28942         │ 11                         │ 20000          │
│ 8              │ Club Golf Puerta del hierro │ Paco            │ Lopez             │ 62456810  │ 919535678 │ C/sinesio delgado │ Madrid           │ Madrid │ Madrid │ Spain │ 28930         │ 11                         │ 40000          │
│ 9              │ Naturagua                   │ Guillermo       │ Rengifo           │ 689234750 │ 916428956 │ C/majadahonda     │ Boadilla         │ Madrid │ Madrid │ Spain │ 28947         │ 11                         │ 32000          │
│ 10             │ DaraDistribuciones          │ David           │ Serrano           │ 675598001 │ 916421756 │ C/azores          │ Fuenlabrada      │ Madrid │ Madrid │ Spain │ 28946         │ 11                         │ 50000          │
│ 11             │ Madrileña de riegos         │ Jose            │ Tacaño            │ 655983045 │ 916689215 │ C/Lagañas         │ Fuenlabrada      │ Madrid │ Madrid │ Spain │ 28943         │ 11                         │ 20000          │
│ 15             │ Jardin de Flores            │ Javier          │ Villar            │ 654865643 │ 914538776 │ C/ Oña 34         │                  │ Madrid │ Madrid │ Spain │ 28950         │ 30                         │ 40000          │
│ 18             │ Naturajardin                │ Victoria        │ Cruz              │ 612343529 │ 916548735 │ Plaza Magallón 15 │                  │ Madrid │ Madrid │ Spain │ 28011         │ 30                         │ 5050           │
└────────────────┴─────────────────────────────┴─────────────────┴───────────────────┴───────────┴───────────┴───────────────────┴──────────────────┴────────┴────────┴───────┴───────────────┴────────────────────────────┴────────────────┘
**/
```

## Consultas multitabla (Where)
```sql
-- Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.
select c.nombre_cliente, e.nombre, e.apellido1, e.apellido2 from cliente as c, empleado as e where c.codigo_empleado_rep_ventas=e.codigo_empleado;
/**
┌────────────────────────────────┬─────────────────┬────────────┬───────────┐
│         nombre_cliente         │     nombre      │ apellido1  │ apellido2 │
├────────────────────────────────┼─────────────────┼────────────┼───────────┤
│ GoldFish Garden                │ Walter Santiago │ Sanchez    │ Lopez     │
│ Gardening Associates           │ Walter Santiago │ Sanchez    │ Lopez     │
│ Gerudo Valley                  │ Lorena          │ Paxton     │           │
│ Tendo Garden                   │ Lorena          │ Paxton     │           │
│ Lasas S.A.                     │ Mariano         │ López      │ Murcia    │
│ Beragua                        │ Emmanuel        │ Magaña     │ Perez     │
│ Club Golf Puerta del hierro    │ Emmanuel        │ Magaña     │ Perez     │
│ Naturagua                      │ Emmanuel        │ Magaña     │ Perez     │
│ DaraDistribuciones             │ Emmanuel        │ Magaña     │ Perez     │
│ Madrileña de riegos            │ Emmanuel        │ Magaña     │ Perez     │
│ Lasas S.A.                     │ Mariano         │ López      │ Murcia    │
│ Camunas Jardines S.L.          │ Mariano         │ López      │ Murcia    │
│ Dardena S.A.                   │ Mariano         │ López      │ Murcia    │
│ Jardin de Flores               │ Julian          │ Bellinelli │           │
│ Flores Marivi                  │ Felipe          │ Rosas      │ Marquez   │
│ Flowers, S.A                   │ Felipe          │ Rosas      │ Marquez   │
│ Naturajardin                   │ Julian          │ Bellinelli │           │
│ Golf S.A.                      │ José Manuel     │ Martinez   │ De la Osa │
│ Americh Golf Management SL     │ José Manuel     │ Martinez   │ De la Osa │
│ Aloha                          │ José Manuel     │ Martinez   │ De la Osa │
│ El Prat                        │ José Manuel     │ Martinez   │ De la Osa │
│ Sotogrande                     │ José Manuel     │ Martinez   │ De la Osa │
│ Vivero Humanes                 │ Julian          │ Bellinelli │           │
│ Fuenla City                    │ Felipe          │ Rosas      │ Marquez   │
│ Jardines y Mansiones Cactus SL │ Lucio           │ Campoamor  │ Martín    │
│ Jardinerías Matías SL          │ Lucio           │ Campoamor  │ Martín    │
│ Agrojardin                     │ Julian          │ Bellinelli │           │
│ Top Campo                      │ Felipe          │ Rosas      │ Marquez   │
│ Jardineria Sara                │ Felipe          │ Rosas      │ Marquez   │
│ Campohermoso                   │ Julian          │ Bellinelli │           │
│ france telecom                 │ Lionel          │ Narvaez    │           │
│ Musée du Louvre                │ Lionel          │ Narvaez    │           │
│ Tutifruti S.A                  │ Mariko          │ Kishi      │           │
│ Flores S.L.                    │ Michael         │ Bolton     │           │
│ The Magic Garden               │ Michael         │ Bolton     │           │
│ El Jardin Viviente S.L         │ Mariko          │ Kishi      │           │
└────────────────────────────────┴─────────────────┴────────────┴───────────┘
**/
-- Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.
select c.nombre_cliente, e.nombre from cliente as c, empleado as e, pago as p where c.codigo_cliente=p.codigo_cliente and c.codigo_empleado_rep_ventas=e.codigo_empleado group by c.codigo_cliente;
/**
┌────────────────────────────────┬─────────────────┐
│         nombre_cliente         │     nombre      │
├────────────────────────────────┼─────────────────┤
│ GoldFish Garden                │ Walter Santiago │
│ Gardening Associates           │ Walter Santiago │
│ Gerudo Valley                  │ Lorena          │
│ Tendo Garden                   │ Lorena          │
│ Beragua                        │ Emmanuel        │
│ Naturagua                      │ Emmanuel        │
│ Camunas Jardines S.L.          │ Mariano         │
│ Dardena S.A.                   │ Mariano         │
│ Jardin de Flores               │ Julian          │
│ Flores Marivi                  │ Felipe          │
│ Golf S.A.                      │ José Manuel     │
│ Sotogrande                     │ José Manuel     │
│ Jardines y Mansiones Cactus SL │ Lucio           │
│ Jardinerías Matías SL          │ Lucio           │
│ Agrojardin                     │ Julian          │
│ Jardineria Sara                │ Felipe          │
│ Tutifruti S.A                  │ Mariko          │
│ El Jardin Viviente S.L         │ Mariko          │
└────────────────────────────────┴─────────────────┘
**/
-- Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.
select c.nombre_cliente, e.nombre from cliente as c, empleado as e, pago as p where c.codigo_cliente NOT IN (select codigo_cliente from pago) and c.codigo_empleado_rep_ventas=e.codigo_empleado group by c.codigo_cliente;
/**
┌─────────────────────────────┬─────────────┐
│       nombre_cliente        │   nombre    │
├─────────────────────────────┼─────────────┤
│ Lasas S.A.                  │ Mariano     │
│ Club Golf Puerta del hierro │ Emmanuel    │
│ DaraDistribuciones          │ Emmanuel    │
│ Madrileña de riegos         │ Emmanuel    │
│ Lasas S.A.                  │ Mariano     │
│ Flowers, S.A                │ Felipe      │
│ Naturajardin                │ Julian      │
│ Americh Golf Management SL  │ José Manuel │
│ Aloha                       │ José Manuel │
│ El Prat                     │ José Manuel │
│ Vivero Humanes              │ Julian      │
│ Fuenla City                 │ Felipe      │
│ Top Campo                   │ Felipe      │
│ Campohermoso                │ Julian      │
│ france telecom              │ Lionel      │
│ Musée du Louvre             │ Lionel      │
│ Flores S.L.                 │ Michael     │
│ The Magic Garden            │ Michael     │
└─────────────────────────────┴─────────────┘
**/
-- Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
select c.nombre_cliente, e.nombre, o.ciudad from cliente as c, empleado as e, pago as p, oficina as o where c.codigo_cliente=p.codigo_cliente and c.codigo_empleado_rep_ventas=e.codigo_empleado and e.codigo_oficina=o.codigo_oficina group by c.codigo_cliente;
/**
┌────────────────────────────────┬─────────────────┬──────────────────────┐
│         nombre_cliente         │     nombre      │        ciudad        │
├────────────────────────────────┼─────────────────┼──────────────────────┤
│ GoldFish Garden                │ Walter Santiago │ San Francisco        │
│ Gardening Associates           │ Walter Santiago │ San Francisco        │
│ Gerudo Valley                  │ Lorena          │ Boston               │
│ Tendo Garden                   │ Lorena          │ Boston               │
│ Beragua                        │ Emmanuel        │ Barcelona            │
│ Naturagua                      │ Emmanuel        │ Barcelona            │
│ Camunas Jardines S.L.          │ Mariano         │ Madrid               │
│ Dardena S.A.                   │ Mariano         │ Madrid               │
│ Jardin de Flores               │ Julian          │ Sydney               │
│ Flores Marivi                  │ Felipe          │ Talavera de la Reina │
│ Golf S.A.                      │ José Manuel     │ Barcelona            │
│ Sotogrande                     │ José Manuel     │ Barcelona            │
│ Jardines y Mansiones Cactus SL │ Lucio           │ Madrid               │
│ Jardinerías Matías SL          │ Lucio           │ Madrid               │
│ Agrojardin                     │ Julian          │ Sydney               │
│ Jardineria Sara                │ Felipe          │ Talavera de la Reina │
│ Tutifruti S.A                  │ Mariko          │ Sydney               │
│ El Jardin Viviente S.L         │ Mariko          │ Sydney               │
└────────────────────────────────┴─────────────────┴──────────────────────┘
**/
-- Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
select c.nombre_cliente, e.nombre, o.ciudad from cliente as c, empleado as e, pago as p, oficina as o where c.codigo_cliente NOT IN (select codigo_cliente from pago) and c.codigo_empleado_rep_ventas=e.codigo_empleado and e.codigo_oficina=o.codigo_oficina group by c.codigo_cliente;
/**
┌─────────────────────────────┬─────────────┬──────────────────────┐
│       nombre_cliente        │   nombre    │        ciudad        │
├─────────────────────────────┼─────────────┼──────────────────────┤
│ Lasas S.A.                  │ Mariano     │ Madrid               │
│ Club Golf Puerta del hierro │ Emmanuel    │ Barcelona            │
│ DaraDistribuciones          │ Emmanuel    │ Barcelona            │
│ Madrileña de riegos         │ Emmanuel    │ Barcelona            │
│ Lasas S.A.                  │ Mariano     │ Madrid               │
│ Flowers, S.A                │ Felipe      │ Talavera de la Reina │
│ Naturajardin                │ Julian      │ Sydney               │
│ Americh Golf Management SL  │ José Manuel │ Barcelona            │
│ Aloha                       │ José Manuel │ Barcelona            │
│ El Prat                     │ José Manuel │ Barcelona            │
│ Vivero Humanes              │ Julian      │ Sydney               │
│ Fuenla City                 │ Felipe      │ Talavera de la Reina │
│ Top Campo                   │ Felipe      │ Talavera de la Reina │
│ Campohermoso                │ Julian      │ Sydney               │
│ france telecom              │ Lionel      │ Paris                │
│ Musée du Louvre             │ Lionel      │ Paris                │
│ Flores S.L.                 │ Michael     │ San Francisco        │
│ The Magic Garden            │ Michael     │ San Francisco        │
└─────────────────────────────┴─────────────┴──────────────────────┘
**/
-- Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.

-- Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
select c.nombre_cliente, e.nombre, o.ciudad from cliente as c, empleado as e, oficina as o where c.codigo_empleado_rep_ventas=e.codigo_empleado and e.codigo_oficina=o.codigo_oficina group by c.codigo_cliente;
/**
┌────────────────────────────────┬─────────────────┬──────────────────────┐
│         nombre_cliente         │     nombre      │        ciudad        │
├────────────────────────────────┼─────────────────┼──────────────────────┤
│ GoldFish Garden                │ Walter Santiago │ San Francisco        │
│ Gardening Associates           │ Walter Santiago │ San Francisco        │
│ Gerudo Valley                  │ Lorena          │ Boston               │
│ Tendo Garden                   │ Lorena          │ Boston               │
│ Lasas S.A.                     │ Mariano         │ Madrid               │
│ Beragua                        │ Emmanuel        │ Barcelona            │
│ Club Golf Puerta del hierro    │ Emmanuel        │ Barcelona            │
│ Naturagua                      │ Emmanuel        │ Barcelona            │
│ DaraDistribuciones             │ Emmanuel        │ Barcelona            │
│ Madrileña de riegos            │ Emmanuel        │ Barcelona            │
│ Lasas S.A.                     │ Mariano         │ Madrid               │
│ Camunas Jardines S.L.          │ Mariano         │ Madrid               │
│ Dardena S.A.                   │ Mariano         │ Madrid               │
│ Jardin de Flores               │ Julian          │ Sydney               │
│ Flores Marivi                  │ Felipe          │ Talavera de la Reina │
│ Flowers, S.A                   │ Felipe          │ Talavera de la Reina │
│ Naturajardin                   │ Julian          │ Sydney               │
│ Golf S.A.                      │ José Manuel     │ Barcelona            │
│ Americh Golf Management SL     │ José Manuel     │ Barcelona            │
│ Aloha                          │ José Manuel     │ Barcelona            │
│ El Prat                        │ José Manuel     │ Barcelona            │
│ Sotogrande                     │ José Manuel     │ Barcelona            │
│ Vivero Humanes                 │ Julian          │ Sydney               │
│ Fuenla City                    │ Felipe          │ Talavera de la Reina │
│ Jardines y Mansiones Cactus SL │ Lucio           │ Madrid               │
│ Jardinerías Matías SL          │ Lucio           │ Madrid               │
│ Agrojardin                     │ Julian          │ Sydney               │
│ Top Campo                      │ Felipe          │ Talavera de la Reina │
│ Jardineria Sara                │ Felipe          │ Talavera de la Reina │
│ Campohermoso                   │ Julian          │ Sydney               │
│ france telecom                 │ Lionel          │ Paris                │
│ Musée du Louvre                │ Lionel          │ Paris                │
│ Tutifruti S.A                  │ Mariko          │ Sydney               │
│ Flores S.L.                    │ Michael         │ San Francisco        │
│ The Magic Garden               │ Michael         │ San Francisco        │
│ El Jardin Viviente S.L         │ Mariko          │ Sydney               │
└────────────────────────────────┴─────────────────┴──────────────────────┘
**/
-- Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.
select e.nombre as "Nombre empleado", j.nombre as "Nombre jefe" from empleado as e, empleado as j where e.codigo_jefe=j.codigo_empleado;
/**
┌─────────────────┬─────────────┐
│ Nombre empleado │ Nombre jefe │
├─────────────────┼─────────────┤
│ Ruben           │ Marcos      │
│ Alberto         │ Ruben       │
│ Maria           │ Ruben       │
│ Felipe          │ Alberto     │
│ Juan Carlos     │ Alberto     │
│ Carlos          │ Alberto     │
│ Mariano         │ Carlos      │
│ Lucio           │ Carlos      │
│ Hilario         │ Carlos      │
│ Emmanuel        │ Alberto     │
│ José Manuel     │ Emmanuel    │
│ David           │ Emmanuel    │
│ Oscar           │ Emmanuel    │
│ Francois        │ Alberto     │
│ Lionel          │ Francois    │
│ Laurent         │ Francois    │
│ Michael         │ Alberto     │
│ Walter Santiago │ Michael     │
│ Hilary          │ Alberto     │
│ Marcus          │ Hilary      │
│ Lorena          │ Hilary      │
│ Nei             │ Alberto     │
│ Narumi          │ Nei         │
│ Takuma          │ Nei         │
│ Amy             │ Alberto     │
│ Larry           │ Amy         │
│ John            │ Amy         │
│ Kevin           │ Alberto     │
│ Julian          │ Kevin       │
│ Mariko          │ Kevin       │
└─────────────────┴─────────────┘
**/
-- Devuelve un listado que muestre el nombre de cada empleados, el nombre de su jefe y el nombre del jefe de sus jefe.
select e.nombre as "Nombre empleado", j.nombre as "Nombre jefe", jj.nombre as "Jefe del jefe" from empleado as e, empleado as j, empleado as jj where e.codigo_jefe=j.codigo_empleado and j.codigo_jefe=jj.codigo_empleado;
/**
┌─────────────────┬─────────────┬───────────────┐
│ Nombre empleado │ Nombre jefe │ Jefe del jefe │
├─────────────────┼─────────────┼───────────────┤
│ Alberto         │ Ruben       │ Marcos        │
│ Maria           │ Ruben       │ Marcos        │
│ Felipe          │ Alberto     │ Ruben         │
│ Juan Carlos     │ Alberto     │ Ruben         │
│ Carlos          │ Alberto     │ Ruben         │
│ Mariano         │ Carlos      │ Alberto       │
│ Lucio           │ Carlos      │ Alberto       │
│ Hilario         │ Carlos      │ Alberto       │
│ Emmanuel        │ Alberto     │ Ruben         │
│ José Manuel     │ Emmanuel    │ Alberto       │
│ David           │ Emmanuel    │ Alberto       │
│ Oscar           │ Emmanuel    │ Alberto       │
│ Francois        │ Alberto     │ Ruben         │
│ Lionel          │ Francois    │ Alberto       │
│ Laurent         │ Francois    │ Alberto       │
│ Michael         │ Alberto     │ Ruben         │
│ Walter Santiago │ Michael     │ Alberto       │
│ Hilary          │ Alberto     │ Ruben         │
│ Marcus          │ Hilary      │ Alberto       │
│ Lorena          │ Hilary      │ Alberto       │
│ Nei             │ Alberto     │ Ruben         │
│ Narumi          │ Nei         │ Alberto       │
│ Takuma          │ Nei         │ Alberto       │
│ Amy             │ Alberto     │ Ruben         │
│ Larry           │ Amy         │ Alberto       │
│ John            │ Amy         │ Alberto       │
│ Kevin           │ Alberto     │ Ruben         │
│ Julian          │ Kevin       │ Alberto       │
│ Mariko          │ Kevin       │ Alberto       │
└─────────────────┴─────────────┴───────────────┘
**/
-- Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.
select c.nombre_cliente from cliente as c, pedido as p where p.fecha_esperada<p.fecha_entrega and c.codigo_cliente=p.codigo_cliente group by c.nombre_cliente;
/**
┌────────────────────────────────┐
│         nombre_cliente         │
├────────────────────────────────┤
│ Beragua                        │
│ Camunas Jardines S.L.          │
│ Dardena S.A.                   │
│ El Jardin Viviente S.L         │
│ Flores S.L.                    │
│ Gardening Associates           │
│ Gerudo Valley                  │
│ GoldFish Garden                │
│ Golf S.A.                      │
│ Jardineria Sara                │
│ Jardinerías Matías SL          │
│ Jardines y Mansiones Cactus SL │
│ Naturagua                      │
│ Sotogrande                     │
│ Tutifruti S.A                  │
└────────────────────────────────┘
**/
-- Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.
select c.codigo_cliente, c.nombre_cliente, GROUP_CONCAT(DISTINCT g.gama) as "Gamas compradas" from cliente as c, pedido as p, detalle_pedido as dp, producto as pr, gama_producto as g where c.codigo_cliente=p.codigo_cliente and p.codigo_pedido=dp.codigo_pedido and dp.codigo_producto=pr.codigo_producto and pr.gama=g.gama group by c.codigo_cliente;
/**
┌────────────────┬────────────────────────────────┬───────────────────────────────────────────────┐
│ codigo_cliente │         nombre_cliente         │                Gamas compradas                │
├────────────────┼────────────────────────────────┼───────────────────────────────────────────────┤
│ 1              │ GoldFish Garden                │ Frutales,Aromáticas,Ornamentales              │
│ 3              │ Gardening Associates           │ Frutales,Ornamentales                         │
│ 4              │ Gerudo Valley                  │ Herramientas,Ornamentales,Frutales            │
│ 5              │ Tendo Garden                   │ Frutales,Ornamentales,Aromáticas              │
│ 7              │ Beragua                        │ Herramientas,Frutales,Ornamentales            │
│ 9              │ Naturagua                      │ Herramientas,Frutales,Ornamentales            │
│ 13             │ Camunas Jardines S.L.          │ Aromáticas,Frutales,Ornamentales              │
│ 14             │ Dardena S.A.                   │ Herramientas,Frutales,Ornamentales            │
│ 15             │ Jardin de Flores               │ Frutales,Ornamentales,Aromáticas,Herramientas │
│ 16             │ Flores Marivi                  │ Ornamentales,Frutales,Aromáticas,Herramientas │
│ 19             │ Golf S.A.                      │ Herramientas,Aromáticas                       │
│ 23             │ Sotogrande                     │ Aromáticas,Frutales                           │
│ 26             │ Jardines y Mansiones Cactus SL │ Frutales,Ornamentales                         │
│ 27             │ Jardinerías Matías SL          │ Aromáticas,Frutales,Herramientas              │
│ 28             │ Agrojardin                     │ Ornamentales,Frutales                         │
│ 30             │ Jardineria Sara                │ Frutales,Ornamentales,Aromáticas,Herramientas │
│ 35             │ Tutifruti S.A                  │ Frutales,Ornamentales                         │
│ 36             │ Flores S.L.                    │ Frutales                                      │
│ 38             │ El Jardin Viviente S.L         │ Frutales,Ornamentales,Aromáticas,Herramientas │
└────────────────┴────────────────────────────────┴───────────────────────────────────────────────┘
**/
```

## Consultas multitabla (inner join)

```sql
-- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
select c.* from cliente as c LEFT JOIN pago as p ON c.codigo_cliente=p.codigo_cliente where p.codigo_cliente is null;
/**
┌────────────────┬─────────────────────────────┬─────────────────┬───────────────────┬────────────────┬────────────────┬──────────────────────────┬──────────────────┬──────────────────────┬─────────────┬────────────────┬───────────────┬────────────────────────────┬────────────────┐
│ codigo_cliente │       nombre_cliente        │ nombre_contacto │ apellido_contacto │    telefono    │      fax       │     linea_direccion1     │ linea_direccion2 │        ciudad        │   region    │      pais      │ codigo_postal │ codigo_empleado_rep_ventas │ limite_credito │
├────────────────┼─────────────────────────────┼─────────────────┼───────────────────┼────────────────┼────────────────┼──────────────────────────┼──────────────────┼──────────────────────┼─────────────┼────────────────┼───────────────┼────────────────────────────┼────────────────┤
│ 6              │ Lasas S.A.                  │ Antonio         │ Lasas             │ 34916540145    │ 34914851312    │ C/Leganes 15             │                  │ Fuenlabrada          │ Madrid      │ Spain          │ 28945         │ 8                          │ 154310         │
│ 8              │ Club Golf Puerta del hierro │ Paco            │ Lopez             │ 62456810       │ 919535678      │ C/sinesio delgado        │ Madrid           │ Madrid               │ Madrid      │ Spain          │ 28930         │ 11                         │ 40000          │
│ 10             │ DaraDistribuciones          │ David           │ Serrano           │ 675598001      │ 916421756      │ C/azores                 │ Fuenlabrada      │ Madrid               │ Madrid      │ Spain          │ 28946         │ 11                         │ 50000          │
│ 11             │ Madrileña de riegos         │ Jose            │ Tacaño            │ 655983045      │ 916689215      │ C/Lagañas                │ Fuenlabrada      │ Madrid               │ Madrid      │ Spain          │ 28943         │ 11                         │ 20000          │
│ 12             │ Lasas S.A.                  │ Antonio         │ Lasas             │ 34916540145    │ 34914851312    │ C/Leganes 15             │                  │ Fuenlabrada          │ Madrid      │ Spain          │ 28945         │ 8                          │ 154310         │
│ 17             │ Flowers, S.A                │ Beatriz         │ Fernandez         │ 698754159      │ 978453216      │ C/Luis Salquillo4        │                  │ Montornes del valles │ Barcelona   │ Spain          │ 24586         │ 5                          │ 3500           │
│ 18             │ Naturajardin                │ Victoria        │ Cruz              │ 612343529      │ 916548735      │ Plaza Magallón 15        │                  │ Madrid               │ Madrid      │ Spain          │ 28011         │ 30                         │ 5050           │
│ 20             │ Americh Golf Management SL  │ Mario           │ Suarez            │ 964493072      │ 964493063      │ C/Letardo                │                  │ Barcelona            │ Cataluña    │ Spain          │ 12320         │ 12                         │ 20000          │
│ 21             │ Aloha                       │ Cristian        │ Rodrigez          │ 916485852      │ 914489898      │ C/Roman 3                │                  │ Canarias             │ Canarias    │ Spain          │ 35488         │ 12                         │ 50000          │
│ 22             │ El Prat                     │ Francisco       │ Camacho           │ 916882323      │ 916493211      │ Avenida Tibidabo         │                  │ Barcelona            │ Cataluña    │ Spain          │ 12320         │ 12                         │ 30000          │
│ 24             │ Vivero Humanes              │ Federico        │ Gomez             │ 654987690      │ 916040875      │ C/Miguel Echegaray 54    │                  │ Humanes              │ Madrid      │ Spain          │ 28970         │ 30                         │ 7430           │
│ 25             │ Fuenla City                 │ Tony            │ Muñoz Mena        │ 675842139      │ 915483754      │ C/Callo 52               │                  │ Fuenlabrada          │ Madrid      │ Spain          │ 28574         │ 5                          │ 4500           │
│ 29             │ Top Campo                   │ Joseluis        │ Sanchez           │ 685746512      │ 974315924      │ C/Ibiza 32               │                  │ Humanes              │ Madrid      │ Spain          │ 28574         │ 5                          │ 5500           │
│ 31             │ Campohermoso                │ Luis            │ Jimenez           │ 645925376      │ 916159116      │ C/Peru 78                │                  │ Fuenlabrada          │ Madrid      │ Spain          │ 28945         │ 30                         │ 3250           │
│ 32             │ france telecom              │ FraÃ§ois        │ Toulou            │ (33)5120578961 │ (33)5120578961 │ 6 place d Alleray 15Ã¨me │                  │ Paris                │             │ France         │ 75010         │ 16                         │ 10000          │
│ 33             │ Musée du Louvre             │ Pierre          │ Delacroux         │ (33)0140205050 │ (33)0140205442 │ Quai du Louvre           │                  │ Paris                │             │ France         │ 75058         │ 16                         │ 30000          │
│ 36             │ Flores S.L.                 │ Antonio         │ Romero            │ 654352981      │ 685249700      │ Avenida España           │                  │ Madrid               │ Fuenlabrada │ Spain          │ 29643         │ 18                         │ 6000           │
│ 37             │ The Magic Garden            │ Richard         │ Mcain             │ 926523468      │ 9364875882     │ Lihgting Park            │                  │ London               │ London      │ United Kingdom │ 65930         │ 18                         │ 10000          │
└────────────────┴─────────────────────────────┴─────────────────┴───────────────────┴────────────────┴────────────────┴──────────────────────────┴──────────────────┴──────────────────────┴─────────────┴────────────────┴───────────────┴────────────────────────────┴────────────────┘
**/
-- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido.
select c.* from cliente as c LEFT JOIN pedido as p ON c.codigo_cliente=p.codigo_cliente where p.codigo_cliente is null;
/**
┌────────────────┬─────────────────────────────┬─────────────────┬───────────────────┬────────────────┬────────────────┬──────────────────────────┬──────────────────┬──────────────────────┬───────────┬────────────────┬───────────────┬────────────────────────────┬────────────────┐
│ codigo_cliente │       nombre_cliente        │ nombre_contacto │ apellido_contacto │    telefono    │      fax       │     linea_direccion1     │ linea_direccion2 │        ciudad        │  region   │      pais      │ codigo_postal │ codigo_empleado_rep_ventas │ limite_credito │
├────────────────┼─────────────────────────────┼─────────────────┼───────────────────┼────────────────┼────────────────┼──────────────────────────┼──────────────────┼──────────────────────┼───────────┼────────────────┼───────────────┼────────────────────────────┼────────────────┤
│ 6              │ Lasas S.A.                  │ Antonio         │ Lasas             │ 34916540145    │ 34914851312    │ C/Leganes 15             │                  │ Fuenlabrada          │ Madrid    │ Spain          │ 28945         │ 8                          │ 154310         │
│ 8              │ Club Golf Puerta del hierro │ Paco            │ Lopez             │ 62456810       │ 919535678      │ C/sinesio delgado        │ Madrid           │ Madrid               │ Madrid    │ Spain          │ 28930         │ 11                         │ 40000          │
│ 10             │ DaraDistribuciones          │ David           │ Serrano           │ 675598001      │ 916421756      │ C/azores                 │ Fuenlabrada      │ Madrid               │ Madrid    │ Spain          │ 28946         │ 11                         │ 50000          │
│ 11             │ Madrileña de riegos         │ Jose            │ Tacaño            │ 655983045      │ 916689215      │ C/Lagañas                │ Fuenlabrada      │ Madrid               │ Madrid    │ Spain          │ 28943         │ 11                         │ 20000          │
│ 12             │ Lasas S.A.                  │ Antonio         │ Lasas             │ 34916540145    │ 34914851312    │ C/Leganes 15             │                  │ Fuenlabrada          │ Madrid    │ Spain          │ 28945         │ 8                          │ 154310         │
│ 17             │ Flowers, S.A                │ Beatriz         │ Fernandez         │ 698754159      │ 978453216      │ C/Luis Salquillo4        │                  │ Montornes del valles │ Barcelona │ Spain          │ 24586         │ 5                          │ 3500           │
│ 18             │ Naturajardin                │ Victoria        │ Cruz              │ 612343529      │ 916548735      │ Plaza Magallón 15        │                  │ Madrid               │ Madrid    │ Spain          │ 28011         │ 30                         │ 5050           │
│ 20             │ Americh Golf Management SL  │ Mario           │ Suarez            │ 964493072      │ 964493063      │ C/Letardo                │                  │ Barcelona            │ Cataluña  │ Spain          │ 12320         │ 12                         │ 20000          │
│ 21             │ Aloha                       │ Cristian        │ Rodrigez          │ 916485852      │ 914489898      │ C/Roman 3                │                  │ Canarias             │ Canarias  │ Spain          │ 35488         │ 12                         │ 50000          │
│ 22             │ El Prat                     │ Francisco       │ Camacho           │ 916882323      │ 916493211      │ Avenida Tibidabo         │                  │ Barcelona            │ Cataluña  │ Spain          │ 12320         │ 12                         │ 30000          │
│ 24             │ Vivero Humanes              │ Federico        │ Gomez             │ 654987690      │ 916040875      │ C/Miguel Echegaray 54    │                  │ Humanes              │ Madrid    │ Spain          │ 28970         │ 30                         │ 7430           │
│ 25             │ Fuenla City                 │ Tony            │ Muñoz Mena        │ 675842139      │ 915483754      │ C/Callo 52               │                  │ Fuenlabrada          │ Madrid    │ Spain          │ 28574         │ 5                          │ 4500           │
│ 29             │ Top Campo                   │ Joseluis        │ Sanchez           │ 685746512      │ 974315924      │ C/Ibiza 32               │                  │ Humanes              │ Madrid    │ Spain          │ 28574         │ 5                          │ 5500           │
│ 31             │ Campohermoso                │ Luis            │ Jimenez           │ 645925376      │ 916159116      │ C/Peru 78                │                  │ Fuenlabrada          │ Madrid    │ Spain          │ 28945         │ 30                         │ 3250           │
│ 32             │ france telecom              │ FraÃ§ois        │ Toulou            │ (33)5120578961 │ (33)5120578961 │ 6 place d Alleray 15Ã¨me │                  │ Paris                │           │ France         │ 75010         │ 16                         │ 10000          │
│ 33             │ Musée du Louvre             │ Pierre          │ Delacroux         │ (33)0140205050 │ (33)0140205442 │ Quai du Louvre           │                  │ Paris                │           │ France         │ 75058         │ 16                         │ 30000          │
│ 37             │ The Magic Garden            │ Richard         │ Mcain             │ 926523468      │ 9364875882     │ Lihgting Park            │                  │ London               │ London    │ United Kingdom │ 65930         │ 18                         │ 10000          │
└────────────────┴─────────────────────────────┴─────────────────┴───────────────────┴────────────────┴────────────────┴──────────────────────────┴──────────────────┴──────────────────────┴───────────┴────────────────┴───────────────┴────────────────────────────┴────────────────┘
**/
-- Devuelve un listado que muestre los clientes que no han realizado ningún pago y los que no han realizado ningún pedido.
select c.* from cliente as c LEFT JOIN pago as p ON c.codigo_cliente=p.codigo_cliente 
LEFT JOIN pedido as pe ON c.codigo_cliente=pe.codigo_cliente 
where pe.codigo_cliente is null and p.codigo_cliente is null;
/**
┌────────────────┬─────────────────────────────┬─────────────────┬───────────────────┬────────────────┬────────────────┬──────────────────────────┬──────────────────┬──────────────────────┬───────────┬────────────────┬───────────────┬────────────────────────────┬────────────────┐
│ codigo_cliente │       nombre_cliente        │ nombre_contacto │ apellido_contacto │    telefono    │      fax       │     linea_direccion1     │ linea_direccion2 │        ciudad        │  region   │      pais      │ codigo_postal │ codigo_empleado_rep_ventas │ limite_credito │
├────────────────┼─────────────────────────────┼─────────────────┼───────────────────┼────────────────┼────────────────┼──────────────────────────┼──────────────────┼──────────────────────┼───────────┼────────────────┼───────────────┼────────────────────────────┼────────────────┤
│ 6              │ Lasas S.A.                  │ Antonio         │ Lasas             │ 34916540145    │ 34914851312    │ C/Leganes 15             │                  │ Fuenlabrada          │ Madrid    │ Spain          │ 28945         │ 8                          │ 154310         │
│ 8              │ Club Golf Puerta del hierro │ Paco            │ Lopez             │ 62456810       │ 919535678      │ C/sinesio delgado        │ Madrid           │ Madrid               │ Madrid    │ Spain          │ 28930         │ 11                         │ 40000          │
│ 10             │ DaraDistribuciones          │ David           │ Serrano           │ 675598001      │ 916421756      │ C/azores                 │ Fuenlabrada      │ Madrid               │ Madrid    │ Spain          │ 28946         │ 11                         │ 50000          │
│ 11             │ Madrileña de riegos         │ Jose            │ Tacaño            │ 655983045      │ 916689215      │ C/Lagañas                │ Fuenlabrada      │ Madrid               │ Madrid    │ Spain          │ 28943         │ 11                         │ 20000          │
│ 12             │ Lasas S.A.                  │ Antonio         │ Lasas             │ 34916540145    │ 34914851312    │ C/Leganes 15             │                  │ Fuenlabrada          │ Madrid    │ Spain          │ 28945         │ 8                          │ 154310         │
│ 17             │ Flowers, S.A                │ Beatriz         │ Fernandez         │ 698754159      │ 978453216      │ C/Luis Salquillo4        │                  │ Montornes del valles │ Barcelona │ Spain          │ 24586         │ 5                          │ 3500           │
│ 18             │ Naturajardin                │ Victoria        │ Cruz              │ 612343529      │ 916548735      │ Plaza Magallón 15        │                  │ Madrid               │ Madrid    │ Spain          │ 28011         │ 30                         │ 5050           │
│ 20             │ Americh Golf Management SL  │ Mario           │ Suarez            │ 964493072      │ 964493063      │ C/Letardo                │                  │ Barcelona            │ Cataluña  │ Spain          │ 12320         │ 12                         │ 20000          │
│ 21             │ Aloha                       │ Cristian        │ Rodrigez          │ 916485852      │ 914489898      │ C/Roman 3                │                  │ Canarias             │ Canarias  │ Spain          │ 35488         │ 12                         │ 50000          │
│ 22             │ El Prat                     │ Francisco       │ Camacho           │ 916882323      │ 916493211      │ Avenida Tibidabo         │                  │ Barcelona            │ Cataluña  │ Spain          │ 12320         │ 12                         │ 30000          │
│ 24             │ Vivero Humanes              │ Federico        │ Gomez             │ 654987690      │ 916040875      │ C/Miguel Echegaray 54    │                  │ Humanes              │ Madrid    │ Spain          │ 28970         │ 30                         │ 7430           │
│ 25             │ Fuenla City                 │ Tony            │ Muñoz Mena        │ 675842139      │ 915483754      │ C/Callo 52               │                  │ Fuenlabrada          │ Madrid    │ Spain          │ 28574         │ 5                          │ 4500           │
│ 29             │ Top Campo                   │ Joseluis        │ Sanchez           │ 685746512      │ 974315924      │ C/Ibiza 32               │                  │ Humanes              │ Madrid    │ Spain          │ 28574         │ 5                          │ 5500           │
│ 31             │ Campohermoso                │ Luis            │ Jimenez           │ 645925376      │ 916159116      │ C/Peru 78                │                  │ Fuenlabrada          │ Madrid    │ Spain          │ 28945         │ 30                         │ 3250           │
│ 32             │ france telecom              │ FraÃ§ois        │ Toulou            │ (33)5120578961 │ (33)5120578961 │ 6 place d Alleray 15Ã¨me │                  │ Paris                │           │ France         │ 75010         │ 16                         │ 10000          │
│ 33             │ Musée du Louvre             │ Pierre          │ Delacroux         │ (33)0140205050 │ (33)0140205442 │ Quai du Louvre           │                  │ Paris                │           │ France         │ 75058         │ 16                         │ 30000          │
│ 37             │ The Magic Garden            │ Richard         │ Mcain             │ 926523468      │ 9364875882     │ Lihgting Park            │                  │ London               │ London    │ United Kingdom │ 65930         │ 18                         │ 10000          │
└────────────────┴─────────────────────────────┴─────────────────┴───────────────────┴────────────────┴────────────────┴──────────────────────────┴──────────────────┴──────────────────────┴───────────┴────────────────┴───────────────┴────────────────────────────┴────────────────┘
**/
-- Devuelve un listado que muestre solamente los empleados que no tienen una oficina asociada.
select e.* from empleado as e LEFT JOIN oficina as o ON e.codigo_oficina=o.codigo_oficina where o.codigo_oficina is null;
/**
Todos los empleados tiene una oficina asociada
**/
-- Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado.
select e.* from empleado as e LEFT JOIN cliente as c ON e.codigo_empleado=c.codigo_empleado_rep_ventas where c.codigo_empleado_rep_ventas is null;
/**
┌─────────────────┬─────────────┬────────────┬───────────┬───────────┬───────────────────────────┬────────────────┬─────────────┬───────────────────────┐
│ codigo_empleado │   nombre    │ apellido1  │ apellido2 │ extension │           email           │ codigo_oficina │ codigo_jefe │        puesto         │
├─────────────────┼─────────────┼────────────┼───────────┼───────────┼───────────────────────────┼────────────────┼─────────────┼───────────────────────┤
│ 1               │ Marcos      │ Magaña     │ Perez     │ 3897      │ marcos@jardineria.es      │ TAL-ES         │             │ Director General      │
│ 2               │ Ruben       │ López      │ Martinez  │ 2899      │ rlopez@jardineria.es      │ TAL-ES         │ 1           │ Subdirector Marketing │
│ 3               │ Alberto     │ Soria      │ Carrasco  │ 2837      │ asoria@jardineria.es      │ TAL-ES         │ 2           │ Subdirector Ventas    │
│ 4               │ Maria       │ Solís      │ Jerez     │ 2847      │ msolis@jardineria.es      │ TAL-ES         │ 2           │ Secretaria            │
│ 6               │ Juan Carlos │ Ortiz      │ Serrano   │ 2845      │ cortiz@jardineria.es      │ TAL-ES         │ 3           │ Representante Ventas  │
│ 7               │ Carlos      │ Soria      │ Jimenez   │ 2444      │ csoria@jardineria.es      │ MAD-ES         │ 3           │ Director Oficina      │
│ 10              │ Hilario     │ Rodriguez  │ Huertas   │ 2444      │ hrodriguez@jardineria.es  │ MAD-ES         │ 7           │ Representante Ventas  │
│ 13              │ David       │ Palma      │ Aceituno  │ 2519      │ dpalma@jardineria.es      │ BCN-ES         │ 11          │ Representante Ventas  │
│ 14              │ Oscar       │ Palma      │ Aceituno  │ 2519      │ opalma@jardineria.es      │ BCN-ES         │ 11          │ Representante Ventas  │
│ 15              │ Francois    │ Fignon     │           │ 9981      │ ffignon@gardening.com     │ PAR-FR         │ 3           │ Director Oficina      │
│ 17              │ Laurent     │ Serra      │           │ 9982      │ lserra@gardening.com      │ PAR-FR         │ 15          │ Representante Ventas  │
│ 20              │ Hilary      │ Washington │           │ 7565      │ hwashington@gardening.com │ BOS-USA        │ 3           │ Director Oficina      │
│ 21              │ Marcus      │ Paxton     │           │ 7565      │ mpaxton@gardening.com     │ BOS-USA        │ 20          │ Representante Ventas  │
│ 23              │ Nei         │ Nishikori  │           │ 8734      │ nnishikori@gardening.com  │ TOK-JP         │ 3           │ Director Oficina      │
│ 24              │ Narumi      │ Riko       │           │ 8734      │ nriko@gardening.com       │ TOK-JP         │ 23          │ Representante Ventas  │
│ 25              │ Takuma      │ Nomura     │           │ 8735      │ tnomura@gardening.com     │ TOK-JP         │ 23          │ Representante Ventas  │
│ 26              │ Amy         │ Johnson    │           │ 3321      │ ajohnson@gardening.com    │ LON-UK         │ 3           │ Director Oficina      │
│ 27              │ Larry       │ Westfalls  │           │ 3322      │ lwestfalls@gardening.com  │ LON-UK         │ 26          │ Representante Ventas  │
│ 28              │ John        │ Walton     │           │ 3322      │ jwalton@gardening.com     │ LON-UK         │ 26          │ Representante Ventas  │
│ 29              │ Kevin       │ Fallmer    │           │ 3210      │ kfalmer@gardening.com     │ SYD-AU         │ 3           │ Director Oficina      │
└─────────────────┴─────────────┴────────────┴───────────┴───────────┴───────────────────────────┴────────────────┴─────────────┴───────────────────────┘
**/
-- Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado junto con los datos de la oficina donde trabajan.
select e.*, o.* from empleado as e 
LEFT JOIN cliente as c ON e.codigo_empleado=c.codigo_empleado_rep_ventas 
JOIN oficina as o ON e.codigo_oficina=o.codigo_oficina
where c.codigo_empleado_rep_ventas is null;
/**
┌─────────────────┬─────────────┬────────────┬───────────┬───────────┬───────────────────────────┬────────────────┬─────────────┬───────────────────────┬────────────────┬──────────────────────┬────────────┬───────────────────┬───────────────┬─────────────────┬──────────────────────────────┬─────────────────────┐
│ codigo_empleado │   nombre    │ apellido1  │ apellido2 │ extension │           email           │ codigo_oficina │ codigo_jefe │        puesto         │ codigo_oficina │        ciudad        │    pais    │      region       │ codigo_postal │    telefono     │       linea_direccion1       │  linea_direccion2   │
├─────────────────┼─────────────┼────────────┼───────────┼───────────┼───────────────────────────┼────────────────┼─────────────┼───────────────────────┼────────────────┼──────────────────────┼────────────┼───────────────────┼───────────────┼─────────────────┼──────────────────────────────┼─────────────────────┤
│ 1               │ Marcos      │ Magaña     │ Perez     │ 3897      │ marcos@jardineria.es      │ TAL-ES         │             │ Director General      │ TAL-ES         │ Talavera de la Reina │ España     │ Castilla-LaMancha │ 45632         │ +34 925 867231  │ Francisco Aguirre, 32        │ 5º piso (exterior)  │
│ 2               │ Ruben       │ López      │ Martinez  │ 2899      │ rlopez@jardineria.es      │ TAL-ES         │ 1           │ Subdirector Marketing │ TAL-ES         │ Talavera de la Reina │ España     │ Castilla-LaMancha │ 45632         │ +34 925 867231  │ Francisco Aguirre, 32        │ 5º piso (exterior)  │
│ 3               │ Alberto     │ Soria      │ Carrasco  │ 2837      │ asoria@jardineria.es      │ TAL-ES         │ 2           │ Subdirector Ventas    │ TAL-ES         │ Talavera de la Reina │ España     │ Castilla-LaMancha │ 45632         │ +34 925 867231  │ Francisco Aguirre, 32        │ 5º piso (exterior)  │
│ 4               │ Maria       │ Solís      │ Jerez     │ 2847      │ msolis@jardineria.es      │ TAL-ES         │ 2           │ Secretaria            │ TAL-ES         │ Talavera de la Reina │ España     │ Castilla-LaMancha │ 45632         │ +34 925 867231  │ Francisco Aguirre, 32        │ 5º piso (exterior)  │
│ 6               │ Juan Carlos │ Ortiz      │ Serrano   │ 2845      │ cortiz@jardineria.es      │ TAL-ES         │ 3           │ Representante Ventas  │ TAL-ES         │ Talavera de la Reina │ España     │ Castilla-LaMancha │ 45632         │ +34 925 867231  │ Francisco Aguirre, 32        │ 5º piso (exterior)  │
│ 7               │ Carlos      │ Soria      │ Jimenez   │ 2444      │ csoria@jardineria.es      │ MAD-ES         │ 3           │ Director Oficina      │ MAD-ES         │ Madrid               │ España     │ Madrid            │ 28032         │ +34 91 7514487  │ Bulevar Indalecio Prieto, 32 │                     │
│ 10              │ Hilario     │ Rodriguez  │ Huertas   │ 2444      │ hrodriguez@jardineria.es  │ MAD-ES         │ 7           │ Representante Ventas  │ MAD-ES         │ Madrid               │ España     │ Madrid            │ 28032         │ +34 91 7514487  │ Bulevar Indalecio Prieto, 32 │                     │
│ 13              │ David       │ Palma      │ Aceituno  │ 2519      │ dpalma@jardineria.es      │ BCN-ES         │ 11          │ Representante Ventas  │ BCN-ES         │ Barcelona            │ España     │ Barcelona         │ 08019         │ +34 93 3561182  │ Avenida Diagonal, 38         │ 3A escalera Derecha │
│ 14              │ Oscar       │ Palma      │ Aceituno  │ 2519      │ opalma@jardineria.es      │ BCN-ES         │ 11          │ Representante Ventas  │ BCN-ES         │ Barcelona            │ España     │ Barcelona         │ 08019         │ +34 93 3561182  │ Avenida Diagonal, 38         │ 3A escalera Derecha │
│ 15              │ Francois    │ Fignon     │           │ 9981      │ ffignon@gardening.com     │ PAR-FR         │ 3           │ Director Oficina      │ PAR-FR         │ Paris                │ Francia    │ EMEA              │ 75017         │ +33 14 723 4404 │ 29 Rue Jouffroy d'abbans     │                     │
│ 17              │ Laurent     │ Serra      │           │ 9982      │ lserra@gardening.com      │ PAR-FR         │ 15          │ Representante Ventas  │ PAR-FR         │ Paris                │ Francia    │ EMEA              │ 75017         │ +33 14 723 4404 │ 29 Rue Jouffroy d'abbans     │                     │
│ 20              │ Hilary      │ Washington │           │ 7565      │ hwashington@gardening.com │ BOS-USA        │ 3           │ Director Oficina      │ BOS-USA        │ Boston               │ EEUU       │ MA                │ 02108         │ +1 215 837 0825 │ 1550 Court Place             │ Suite 102           │
│ 21              │ Marcus      │ Paxton     │           │ 7565      │ mpaxton@gardening.com     │ BOS-USA        │ 20          │ Representante Ventas  │ BOS-USA        │ Boston               │ EEUU       │ MA                │ 02108         │ +1 215 837 0825 │ 1550 Court Place             │ Suite 102           │
│ 23              │ Nei         │ Nishikori  │           │ 8734      │ nnishikori@gardening.com  │ TOK-JP         │ 3           │ Director Oficina      │ TOK-JP         │ Tokyo                │ Japón      │ Chiyoda-Ku        │ 102-8578      │ +81 33 224 5000 │ 4-1 Kioicho                  │                     │
│ 24              │ Narumi      │ Riko       │           │ 8734      │ nriko@gardening.com       │ TOK-JP         │ 23          │ Representante Ventas  │ TOK-JP         │ Tokyo                │ Japón      │ Chiyoda-Ku        │ 102-8578      │ +81 33 224 5000 │ 4-1 Kioicho                  │                     │
│ 25              │ Takuma      │ Nomura     │           │ 8735      │ tnomura@gardening.com     │ TOK-JP         │ 23          │ Representante Ventas  │ TOK-JP         │ Tokyo                │ Japón      │ Chiyoda-Ku        │ 102-8578      │ +81 33 224 5000 │ 4-1 Kioicho                  │                     │
│ 26              │ Amy         │ Johnson    │           │ 3321      │ ajohnson@gardening.com    │ LON-UK         │ 3           │ Director Oficina      │ LON-UK         │ Londres              │ Inglaterra │ EMEA              │ EC2N 1HN      │ +44 20 78772041 │ 52 Old Broad Street          │ Ground Floor        │
│ 27              │ Larry       │ Westfalls  │           │ 3322      │ lwestfalls@gardening.com  │ LON-UK         │ 26          │ Representante Ventas  │ LON-UK         │ Londres              │ Inglaterra │ EMEA              │ EC2N 1HN      │ +44 20 78772041 │ 52 Old Broad Street          │ Ground Floor        │
│ 28              │ John        │ Walton     │           │ 3322      │ jwalton@gardening.com     │ LON-UK         │ 26          │ Representante Ventas  │ LON-UK         │ Londres              │ Inglaterra │ EMEA              │ EC2N 1HN      │ +44 20 78772041 │ 52 Old Broad Street          │ Ground Floor        │
│ 29              │ Kevin       │ Fallmer    │           │ 3210      │ kfalmer@gardening.com     │ SYD-AU         │ 3           │ Director Oficina      │ SYD-AU         │ Sydney               │ Australia  │ APAC              │ NSW 2010      │ +61 2 9264 2451 │ 5-11 Wentworth Avenue        │ Floor #2            │
└─────────────────┴─────────────┴────────────┴───────────┴───────────┴───────────────────────────┴────────────────┴─────────────┴───────────────────────┴────────────────┴──────────────────────┴────────────┴───────────────────┴───────────────┴─────────────────┴──────────────────────────────┴─────────────────────┘
**/
-- Devuelve un listado que muestre los empleados que no tienen una oficina asociada y los que no tienen un cliente asociado.
select e.* from empleado as e 
LEFT JOIN cliente as c ON e.codigo_empleado=c.codigo_empleado_rep_ventas 
LEFT JOIN oficina as o ON e.codigo_oficina=o.codigo_oficina
where c.codigo_empleado_rep_ventas is null and o.codigo_oficina is null;
/**
Todos los empleados tienen oficina
**/
-- Devuelve un listado de los productos que nunca han aparecido en un pedido.
select pd.* from detalle_pedido as dp
RIGHT JOIN producto as pd ON dp.codigo_producto=pd.codigo_producto
where dp.codigo_producto is null;
/**
┌─────────────────┬─────────────────────────────────────────────────────────────┬──────────────┬─────────────┬───────────────────────────┬──────────────────────────────────────────────────────────────┬───────────────────┬──────────────┬──────────────────┐
│ codigo_producto │                           nombre                            │     gama     │ dimensiones │         proveedor         │                         descripcion                          │ cantidad_en_stock │ precio_venta │ precio_proveedor │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-104          │ Olea-Olivos                                                 │ Frutales     │ 12/4        │ Frutales Talavera S.A     │ Existen dos hipótesis sobre el origen del olivo, una que pos │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │ tula que proviene de las costas de Siria, Líbano e Israel y  │                   │              │                  │
│                 │                                                             │              │             │                           │ otra que considera que lo considera originario de Asia menor │                   │              │                  │
│                 │                                                             │              │             │                           │ . La llegada a Europa probablemente tuvo lugar de mano de lo │                   │              │                  │
│                 │                                                             │              │             │                           │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │                   │              │                  │
│                 │                                                             │              │             │                           │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │                   │              │                  │
│                 │                                                             │              │             │                           │ icios de la presencia del olivo en las costas mediterráneas  │                   │              │                  │
│                 │                                                             │              │             │                           │ españolas coinciden con el dominio romano, aunque fueron pos │                   │              │                  │
│                 │                                                             │              │             │                           │ teriormente los árabes los que impulsaron su cultivo en Anda │                   │              │                  │
│                 │                                                             │              │             │                           │ lucía, convirtiendo a España en el primer país productor de  │                   │              │                  │
│                 │                                                             │              │             │                           │ aceite de oliva a nivel mundial.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-14           │ Calamondin Mini                                             │ Frutales     │             │ Frutales Talavera S.A     │ Se trata de un pequeño arbolito de copa densa, con tendencia │ 15                │ 10           │ 8                │
│                 │                                                             │              │             │                           │  a la verticalidad, inerme o con cortas espinas. Sus hojas s │                   │              │                  │
│                 │                                                             │              │             │                           │ on pequeñas, elípticas de 5-10 cm de longitud, con los pecío │                   │              │                  │
│                 │                                                             │              │             │                           │ los estrechamente alados.Posee 1 o 2 flores en situación axi │                   │              │                  │
│                 │                                                             │              │             │                           │ lar, al final de las ramillas.Sus frutos son muy pequeños (3 │                   │              │                  │
│                 │                                                             │              │             │                           │ -3,5 cm de diámetro), con pocas semillas, esféricos u ovales │                   │              │                  │
│                 │                                                             │              │             │                           │ , con la zona apical aplanada; corteza de color naranja-roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zo, muy fina y fácilmente separable de la pulpa, que es dulc │                   │              │                  │
│                 │                                                             │              │             │                           │ e, ácida y comestible..                                      │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-19           │ Camelia Blanco, Chrysler Rojo, Soraya Naranja,              │ Frutales     │             │ NaranjasValencianas.com   │                                                              │ 350               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-20           │ Landora Amarillo, Rose Gaujard bicolor blanco-rojo          │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 350               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-21           │ Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 350               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-24           │ Albaricoquero Corbato                                       │ Frutales     │             │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-25           │ Albaricoquero Moniqui                                       │ Frutales     │             │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-26           │ Albaricoquero Kurrot                                        │ Frutales     │             │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-27           │ Cerezo Burlat                                               │ Frutales     │             │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-28           │ Cerezo Picota                                               │ Frutales     │             │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-30           │ Ciruelo R. Claudia Verde                                    │ Frutales     │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-32           │ Ciruelo Golden Japan                                        │ Frutales     │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-35           │ Ciruelo Claudia Negra                                       │ Frutales     │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-38           │ Higuera Verdal                                              │ Frutales     │             │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 400               │ 9            │ 7                │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-39           │ Higuera Breva                                               │ Frutales     │             │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 400               │ 9            │ 7                │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-44           │ Melocotonero Spring Crest                                   │ Frutales     │             │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-46           │ Melocotonero Federica                                       │ Frutales     │             │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-49           │ Parra Uva de Mesa                                           │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 400               │ 8            │ 6                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-5            │ Mandarino -Plantón joven                                    │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 15                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-50           │ Peral Castell                                               │ Frutales     │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-51           │ Peral Williams                                              │ Frutales     │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-52           │ Peral Conference                                            │ Frutales     │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-55           │ Olivo Cipresino                                             │ Frutales     │             │ Frutales Talavera S.A     │ Existen dos hipótesis sobre el origen del olivo, una que pos │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ tula que proviene de las costas de Siria, Líbano e Israel y  │                   │              │                  │
│                 │                                                             │              │             │                           │ otra que considera que lo considera originario de Asia menor │                   │              │                  │
│                 │                                                             │              │             │                           │ . La llegada a Europa probablemente tuvo lugar de mano de lo │                   │              │                  │
│                 │                                                             │              │             │                           │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │                   │              │                  │
│                 │                                                             │              │             │                           │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │                   │              │                  │
│                 │                                                             │              │             │                           │ icios de la presencia del olivo en las costas mediterráneas  │                   │              │                  │
│                 │                                                             │              │             │                           │ españolas coinciden con el dominio romano, aunque fueron pos │                   │              │                  │
│                 │                                                             │              │             │                           │ teriormente los árabes los que impulsaron su cultivo en Anda │                   │              │                  │
│                 │                                                             │              │             │                           │ lucía, convirtiendo a España en el primer país productor de  │                   │              │                  │
│                 │                                                             │              │             │                           │ aceite de oliva a nivel mundial.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-59           │ Albaricoquero                                               │ Frutales     │ 10/12       │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 200               │ 22           │ 17               │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-61           │ Albaricoquero                                               │ Frutales     │ 14/16       │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 200               │ 49           │ 39               │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-62           │ Albaricoquero                                               │ Frutales     │ 16/18       │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 200               │ 70           │ 56               │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-63           │ Cerezo                                                      │ Frutales     │ 8/10        │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 300               │ 11           │ 8                │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-65           │ Cerezo                                                      │ Frutales     │ 12/14       │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 200               │ 32           │ 25               │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-68           │ Cerezo                                                      │ Frutales     │ 18/20       │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 50                │ 80           │ 64               │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-70           │ Ciruelo                                                     │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 50                │ 11           │ 8                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-73           │ Granado                                                     │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 50                │ 13           │ 10               │
│                 │                                                             │              │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                                             │              │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                                             │              │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                                             │              │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                                             │              │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                                             │              │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                                             │              │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-74           │ Granado                                                     │ Frutales     │ 10/12       │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                                             │              │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                                             │              │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                                             │              │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                                             │              │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                                             │              │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                                             │              │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-76           │ Granado                                                     │ Frutales     │ 14/16       │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                                             │              │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                                             │              │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                                             │              │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                                             │              │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                                             │              │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                                             │              │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-83           │ Higuera                                                     │ Frutales     │ 18/20       │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 50                │ 80           │ 64               │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-88           │ Manzano                                                     │ Frutales     │ 12/14       │ Frutales Talavera S.A     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │ 50                │ 32           │ 25               │
│                 │                                                             │              │             │                           │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │                   │              │                  │
│                 │                                                             │              │             │                           │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │                   │              │                  │
│                 │                                                             │              │             │                           │  color ceniciento verdoso sobre los ramos y escamosa y gris  │                   │              │                  │
│                 │                                                             │              │             │                           │ parda sobre las partes viejas del árbol. Tiene una vida de u │                   │              │                  │
│                 │                                                             │              │             │                           │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │                   │              │                  │
│                 │                                                             │              │             │                           │ e el tallo, de color verde oscuro, a veces tendiendo a negru │                   │              │                  │
│                 │                                                             │              │             │                           │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │                   │              │                  │
│                 │                                                             │              │             │                           │ n una espina                                                 │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-92           │ Melocotonero                                                │ Frutales     │ 8/10        │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 50                │ 11           │ 8                │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-93           │ Melocotonero                                                │ Frutales     │ 10/12       │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-95           │ Melocotonero                                                │ Frutales     │ 14/16       │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-96           │ Membrillero                                                 │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │ 50                │ 11           │ 8                │
│                 │                                                             │              │             │                           │ so y la corteza lisa, grisácea, que se desprende en escamas  │                   │              │                  │
│                 │                                                             │              │             │                           │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-97           │ Membrillero                                                 │ Frutales     │ 10/12       │ Frutales Talavera S.A     │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │ so y la corteza lisa, grisácea, que se desprende en escamas  │                   │              │                  │
│                 │                                                             │              │             │                           │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-98           │ Membrillero                                                 │ Frutales     │ 12/14       │ Frutales Talavera S.A     │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │ 50                │ 32           │ 25               │
│                 │                                                             │              │             │                           │ so y la corteza lisa, grisácea, que se desprende en escamas  │                   │              │                  │
│                 │                                                             │              │             │                           │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-99           │ Membrillero                                                 │ Frutales     │ 14/16       │ Frutales Talavera S.A     │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │ so y la corteza lisa, grisácea, que se desprende en escamas  │                   │              │                  │
│                 │                                                             │              │             │                           │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-001          │ Arbustos Mix Maceta                                         │ Ornamentales │ 40-60       │ Valencia Garden Service   │                                                              │ 25                │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-100          │ Mimosa Injerto CLASICA Dealbata                             │ Ornamentales │ 100-110     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 12           │ 9                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-103          │ Mimosa Semilla Bayleyana                                    │ Ornamentales │ 200-225     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 10           │ 8                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-105          │ Mimosa Semilla Espectabilis                                 │ Ornamentales │ 160-170     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 6            │ 4                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-106          │ Mimosa Semilla Longifolia                                   │ Ornamentales │ 200-225     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 10           │ 8                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-107          │ Mimosa Semilla Floribunda 4 estaciones                      │ Ornamentales │ 120-140     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 6            │ 4                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-108          │ Abelia Floribunda                                           │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 100               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-109          │ Callistemom (Mix)                                           │ Ornamentales │ 35-45       │ Viveros EL OASIS          │ Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y │ 100               │ 5            │ 4                │
│                 │                                                             │              │             │                           │  colgantes (de ahí lo de \"llorón\")..                       │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-110          │ Callistemom (Mix)                                           │ Ornamentales │ 40-60       │ Viveros EL OASIS          │ Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y │ 100               │ 2            │ 1                │
│                 │                                                             │              │             │                           │  colgantes (de ahí lo de \"llorón\")..                       │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-111          │ Corylus Avellana \"Contorta\"                               │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 100               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-112          │ Escallonia (Mix)                                            │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-113          │ Evonimus Emerald Gayeti                                     │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-114          │ Evonimus Pulchellus                                         │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-117          │ Hibiscus Syriacus  \"Helene\" -Blanco-C.rojo                │ Ornamentales │ 35-45       │ Viveros EL OASIS          │ Por su capacidad de soportar podas, pueden ser fácilmente mo │ 120               │ 7            │ 5                │
│                 │                                                             │              │             │                           │ ldeadas como bonsái en el transcurso de pocos años. Flores d │                   │              │                  │
│                 │                                                             │              │             │                           │ e muchos colores según la variedad, desde el blanco puro al  │                   │              │                  │
│                 │                                                             │              │             │                           │ rojo intenso, del amarillo al anaranjado. La flor apenas dur │                   │              │                  │
│                 │                                                             │              │             │                           │ a 1 día, pero continuamente aparecen nuevas y la floración s │                   │              │                  │
│                 │                                                             │              │             │                           │ e prolonga durante todo el periodo de crecimiento vegetativo │                   │              │                  │
│                 │                                                             │              │             │                           │ .                                                            │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-118          │ Hibiscus Syriacus \"Pink Giant\" Rosa                       │ Ornamentales │ 35-45       │ Viveros EL OASIS          │ Por su capacidad de soportar podas, pueden ser fácilmente mo │ 120               │ 7            │ 5                │
│                 │                                                             │              │             │                           │ ldeadas como bonsái en el transcurso de pocos años. Flores d │                   │              │                  │
│                 │                                                             │              │             │                           │ e muchos colores según la variedad, desde el blanco puro al  │                   │              │                  │
│                 │                                                             │              │             │                           │ rojo intenso, del amarillo al anaranjado. La flor apenas dur │                   │              │                  │
│                 │                                                             │              │             │                           │ a 1 día, pero continuamente aparecen nuevas y la floración s │                   │              │                  │
│                 │                                                             │              │             │                           │ e prolonga durante todo el periodo de crecimiento vegetativo │                   │              │                  │
│                 │                                                             │              │             │                           │ .                                                            │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-121          │ Lonicera Nitida \"Maigrum\"                                 │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-124          │ Prunus pisardii                                             │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-126          │ Weigelia \"Bristol Ruby\"                                   │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-131          │ Leptospermum formado PIRAMIDE                               │ Ornamentales │ 80-100      │ Viveros EL OASIS          │                                                              │ 50                │ 18           │ 14               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-132          │ Leptospermum COPA                                           │ Ornamentales │ 110/120     │ Viveros EL OASIS          │                                                              │ 50                │ 18           │ 14               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-133          │ Nerium oleander-CALIDAD \"GARDEN\"                          │ Ornamentales │ 40-45       │ Viveros EL OASIS          │                                                              │ 50                │ 2            │ 1                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-134          │ Nerium Oleander Arbusto GRANDE                              │ Ornamentales │ 160-200     │ Viveros EL OASIS          │                                                              │ 100               │ 38           │ 30               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-135          │ Nerium oleander COPA  Calibre 6/8                           │ Ornamentales │ 50-60       │ Viveros EL OASIS          │                                                              │ 100               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-137          │ ROSAL TREPADOR                                              │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-138          │ Camelia Blanco, Chrysler Rojo, Soraya Naranja,              │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-142          │ Solanum Jazminoide                                          │ Ornamentales │ 150-160     │ Viveros EL OASIS          │                                                              │ 100               │ 2            │ 1                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-143          │ Wisteria Sinensis  azul, rosa, blanca                       │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 9            │ 7                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-144          │ Wisteria Sinensis INJERTADAS DECÃ“                          │ Ornamentales │ 140-150     │ Viveros EL OASIS          │                                                              │ 100               │ 12           │ 9                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-145          │ Bougamvillea Sanderiana Tutor                               │ Ornamentales │ 80-100      │ Viveros EL OASIS          │                                                              │ 100               │ 2            │ 1                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-148          │ Bougamvillea Sanderiana Espaldera                           │ Ornamentales │ 45-50       │ Viveros EL OASIS          │                                                              │ 100               │ 7            │ 5                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-149          │ Bougamvillea Sanderiana Espaldera                           │ Ornamentales │ 140-150     │ Viveros EL OASIS          │                                                              │ 100               │ 17           │ 13               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-151          │ Bougamvillea Sanderiana, 3 tut. piramide                    │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-153          │ Expositor Árboles clima mediterráneo                        │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-154          │ Expositor Árboles borde del mar                             │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-158          │ Brachychiton Acerifolius                                    │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-161          │ Cassia Corimbosa                                            │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-162          │ Cassia Corimbosa                                            │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-163          │ Chitalpa Summer Bells                                       │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-164          │ Erytrina Kafra                                              │ Ornamentales │ 170-180     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-166          │ Eucalyptus Citriodora                                       │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-167          │ Eucalyptus Ficifolia                                        │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-169          │ Hibiscus Syriacus  Var. Injertadas 1 Tallo                  │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 12           │ 9                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-170          │ Lagunaria Patersonii                                        │ Ornamentales │ 140-150     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-171          │ Lagunaria Patersonii                                        │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-173          │ Morus Alba                                                  │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-175          │ Platanus Acerifolia                                         │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-178          │ Salix Babylonica  Pendula                                   │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-180          │ Tamarix  Ramosissima Pink Cascade                           │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-182          │ Tecoma Stands                                               │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-183          │ Tecoma Stands                                               │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-184          │ Tipuana Tipu                                                │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-185          │ Pleioblastus distichus-Bambú enano                          │ Ornamentales │ 15-20       │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-187          │ Sasa palmata                                                │ Ornamentales │ 40-45       │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-189          │ Phylostachys aurea                                          │ Ornamentales │ 180-200     │ Viveros EL OASIS          │                                                              │ 80                │ 22           │ 17               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-190          │ Phylostachys aurea                                          │ Ornamentales │ 250-300     │ Viveros EL OASIS          │                                                              │ 80                │ 32           │ 25               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-191          │ Phylostachys Bambusa Spectabilis                            │ Ornamentales │ 180-200     │ Viveros EL OASIS          │                                                              │ 80                │ 24           │ 19               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-192          │ Phylostachys biseti                                         │ Ornamentales │ 160-170     │ Viveros EL OASIS          │                                                              │ 80                │ 22           │ 17               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-194          │ Pseudosasa japonica (Metake)                                │ Ornamentales │ 225-250     │ Viveros EL OASIS          │                                                              │ 80                │ 20           │ 16               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-195          │ Pseudosasa japonica (Metake)                                │ Ornamentales │ 30-40       │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-197          │ Cedrus Deodara \"Feeling Blue\" Novedad                     │ Ornamentales │ rastrero    │ Viveros EL OASIS          │                                                              │ 80                │ 12           │ 9                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-198          │ Juniperus chinensis \"Blue Alps\"                           │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-199          │ Juniperus Chinensis Stricta                                 │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-201          │ Juniperus squamata \"Blue Star\"                            │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-202          │ Juniperus x media Phitzeriana verde                         │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-212          │ Bismarckia Nobilis                                          │ Ornamentales │ 200 - 220   │ Viveros EL OASIS          │                                                              │ 4                 │ 217          │ 173              │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-215          │ Brahea Armata                                               │ Ornamentales │ 120 - 140   │ Viveros EL OASIS          │                                                              │ 100               │ 112          │ 89               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-216          │ Brahea Edulis                                               │ Ornamentales │ 80 - 100    │ Viveros EL OASIS          │                                                              │ 100               │ 19           │ 15               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-219          │ Butia Capitata                                              │ Ornamentales │ 90 - 110    │ Viveros EL OASIS          │                                                              │ 100               │ 29           │ 23               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-220          │ Butia Capitata                                              │ Ornamentales │ 90 - 120    │ Viveros EL OASIS          │                                                              │ 100               │ 36           │ 28               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-221          │ Butia Capitata                                              │ Ornamentales │ 85 - 105    │ Viveros EL OASIS          │                                                              │ 100               │ 59           │ 47               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-223          │ Chamaerops Humilis                                          │ Ornamentales │ 40 - 45     │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-224          │ Chamaerops Humilis                                          │ Ornamentales │ 50 - 60     │ Viveros EL OASIS          │                                                              │ 100               │ 7            │ 5                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-228          │ Chamaerops Humilis \"Cerifera\"                             │ Ornamentales │ 70 - 80     │ Viveros EL OASIS          │                                                              │ 100               │ 32           │ 25               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-229          │ Chrysalidocarpus Lutescens -ARECA                           │ Ornamentales │ 130 - 150   │ Viveros EL OASIS          │                                                              │ 100               │ 22           │ 17               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-230          │ Cordyline Australis -DRACAENA                               │ Ornamentales │ 190 - 210   │ Viveros EL OASIS          │                                                              │ 100               │ 38           │ 30               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-231          │ Cycas Revoluta                                              │ Ornamentales │ 55 - 65     │ Viveros EL OASIS          │                                                              │ 100               │ 15           │ 12               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-232          │ Cycas Revoluta                                              │ Ornamentales │ 80 - 90     │ Viveros EL OASIS          │                                                              │ 100               │ 34           │ 27               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-233          │ Dracaena Drago                                              │ Ornamentales │ 60 - 70     │ Viveros EL OASIS          │                                                              │ 1                 │ 13           │ 10               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-235          │ Dracaena Drago                                              │ Ornamentales │ 150 - 175   │ Viveros EL OASIS          │                                                              │ 2                 │ 92           │ 73               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-238          │ Livistonia Decipiens                                        │ Ornamentales │ 90 - 110    │ Viveros EL OASIS          │                                                              │ 50                │ 19           │ 15               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-239          │ Livistonia Decipiens                                        │ Ornamentales │ 180 - 200   │ Viveros EL OASIS          │                                                              │ 50                │ 49           │ 39               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-242          │ Rhaphis Excelsa                                             │ Ornamentales │ 80 - 100    │ Viveros EL OASIS          │                                                              │ 50                │ 21           │ 16               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-244          │ Sabal Minor                                                 │ Ornamentales │ 60 - 75     │ Viveros EL OASIS          │                                                              │ 50                │ 11           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-245          │ Sabal Minor                                                 │ Ornamentales │ 120 - 140   │ Viveros EL OASIS          │                                                              │ 50                │ 34           │ 27               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-246          │ Trachycarpus Fortunei                                       │ Ornamentales │ 90 - 105    │ Viveros EL OASIS          │                                                              │ 50                │ 18           │ 14               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-248          │ Washingtonia Robusta                                        │ Ornamentales │ 60 - 70     │ Viveros EL OASIS          │                                                              │ 15                │ 3            │ 2                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-251          │ Zamia Furfuracaea                                           │ Ornamentales │ 90 - 110    │ Viveros EL OASIS          │                                                              │ 15                │ 168          │ 134              │
└─────────────────┴─────────────────────────────────────────────────────────────┴──────────────┴─────────────┴───────────────────────────┴──────────────────────────────────────────────────────────────┴───────────────────┴──────────────┴──────────────────┘
**/
-- Devuelve un listado de los productos que nunca han aparecido en un pedido. El resultado debe mostrar el nombre, la descripción y la imagen del producto.
select pd.nombre, pd.descripcion, g.imagen from detalle_pedido as dp
RIGHT JOIN producto as pd ON dp.codigo_producto=pd.codigo_producto
JOIN gama_producto as g ON pd.gama=g.gama
where dp.codigo_producto is null;
/**
┌─────────────────────────────────────────────────────────────┬──────────────────────────────────────────────────────────────┬────────┐
│                           nombre                            │                         descripcion                          │ imagen │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Olea-Olivos                                                 │ Existen dos hipótesis sobre el origen del olivo, una que pos │        │
│                                                             │ tula que proviene de las costas de Siria, Líbano e Israel y  │        │
│                                                             │ otra que considera que lo considera originario de Asia menor │        │
│                                                             │ . La llegada a Europa probablemente tuvo lugar de mano de lo │        │
│                                                             │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │        │
│                                                             │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │        │
│                                                             │ icios de la presencia del olivo en las costas mediterráneas  │        │
│                                                             │ españolas coinciden con el dominio romano, aunque fueron pos │        │
│                                                             │ teriormente los árabes los que impulsaron su cultivo en Anda │        │
│                                                             │ lucía, convirtiendo a España en el primer país productor de  │        │
│                                                             │ aceite de oliva a nivel mundial.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Calamondin Mini                                             │ Se trata de un pequeño arbolito de copa densa, con tendencia │        │
│                                                             │  a la verticalidad, inerme o con cortas espinas. Sus hojas s │        │
│                                                             │ on pequeñas, elípticas de 5-10 cm de longitud, con los pecío │        │
│                                                             │ los estrechamente alados.Posee 1 o 2 flores en situación axi │        │
│                                                             │ lar, al final de las ramillas.Sus frutos son muy pequeños (3 │        │
│                                                             │ -3,5 cm de diámetro), con pocas semillas, esféricos u ovales │        │
│                                                             │ , con la zona apical aplanada; corteza de color naranja-roji │        │
│                                                             │ zo, muy fina y fácilmente separable de la pulpa, que es dulc │        │
│                                                             │ e, ácida y comestible..                                      │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Camelia Blanco, Chrysler Rojo, Soraya Naranja,              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Landora Amarillo, Rose Gaujard bicolor blanco-rojo          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Albaricoquero Corbato                                       │ árbol que puede pasar de los 6 m de altura, en la región med │        │
│                                                             │ iterránea con ramas formando una copa redondeada. La corteza │        │
│                                                             │  del tronco es pardo-violácea, agrietada; las ramas son roji │        │
│                                                             │ zas y extendidas cuando jóvenes y las ramas secundarias son  │        │
│                                                             │ cortas, divergentes y escasas. Las yemas latentes son frecue │        │
│                                                             │ ntes especialmente sobre las ramas viejas.                   │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Albaricoquero Moniqui                                       │ árbol que puede pasar de los 6 m de altura, en la región med │        │
│                                                             │ iterránea con ramas formando una copa redondeada. La corteza │        │
│                                                             │  del tronco es pardo-violácea, agrietada; las ramas son roji │        │
│                                                             │ zas y extendidas cuando jóvenes y las ramas secundarias son  │        │
│                                                             │ cortas, divergentes y escasas. Las yemas latentes son frecue │        │
│                                                             │ ntes especialmente sobre las ramas viejas.                   │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Albaricoquero Kurrot                                        │ árbol que puede pasar de los 6 m de altura, en la región med │        │
│                                                             │ iterránea con ramas formando una copa redondeada. La corteza │        │
│                                                             │  del tronco es pardo-violácea, agrietada; las ramas son roji │        │
│                                                             │ zas y extendidas cuando jóvenes y las ramas secundarias son  │        │
│                                                             │ cortas, divergentes y escasas. Las yemas latentes son frecue │        │
│                                                             │ ntes especialmente sobre las ramas viejas.                   │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cerezo Burlat                                               │ Las principales especies de cerezo cultivadas en el mundo so │        │
│                                                             │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │        │
│                                                             │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │        │
│                                                             │  son naturales del sureste de Europa y oeste de Asia. El cer │        │
│                                                             │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │        │
│                                                             │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │        │
│                                                             │ evado por los pájaros y las migraciones humanas. Fue uno de  │        │
│                                                             │ los frutales más apreciados por los griegos y con el Imperio │        │
│                                                             │  Romano se extendió a regiones muy diversas. En la actualida │        │
│                                                             │ d, el cerezo se encuentra difundido por numerosas regiones y │        │
│                                                             │  países del mundo con clima templado                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cerezo Picota                                               │ Las principales especies de cerezo cultivadas en el mundo so │        │
│                                                             │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │        │
│                                                             │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │        │
│                                                             │  son naturales del sureste de Europa y oeste de Asia. El cer │        │
│                                                             │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │        │
│                                                             │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │        │
│                                                             │ evado por los pájaros y las migraciones humanas. Fue uno de  │        │
│                                                             │ los frutales más apreciados por los griegos y con el Imperio │        │
│                                                             │  Romano se extendió a regiones muy diversas. En la actualida │        │
│                                                             │ d, el cerezo se encuentra difundido por numerosas regiones y │        │
│                                                             │  países del mundo con clima templado                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Ciruelo R. Claudia Verde                                    │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │        │
│                                                             │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │        │
│                                                             │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │        │
│                                                             │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │        │
│                                                             │ osas                                                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Ciruelo Golden Japan                                        │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │        │
│                                                             │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │        │
│                                                             │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │        │
│                                                             │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │        │
│                                                             │ osas                                                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Ciruelo Claudia Negra                                       │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │        │
│                                                             │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │        │
│                                                             │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │        │
│                                                             │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │        │
│                                                             │ osas                                                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Higuera Verdal                                              │ La higuera (Ficus carica L.) es un árbol típico de secano en │        │
│                                                             │  los países mediterráneos. Su rusticidad y su fácil multipli │        │
│                                                             │ cación hacen de la higuera un frutal muy apropiado para el c │        │
│                                                             │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │        │
│                                                             │ e no requiere cuidado alguno una vez plantado y arraigado, l │        │
│                                                             │ imitándose el hombre a recoger de él los frutos cuando madur │        │
│                                                             │ an, unos para consumo en fresco y otros para conserva. Las ú │        │
│                                                             │ nicas higueras con cuidados culturales esmerados, en muchas  │        │
│                                                             │ comarcas, son las brevales, por el interés económico de su p │        │
│                                                             │ rimera cosecha, la de brevas.                                │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Higuera Breva                                               │ La higuera (Ficus carica L.) es un árbol típico de secano en │        │
│                                                             │  los países mediterráneos. Su rusticidad y su fácil multipli │        │
│                                                             │ cación hacen de la higuera un frutal muy apropiado para el c │        │
│                                                             │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │        │
│                                                             │ e no requiere cuidado alguno una vez plantado y arraigado, l │        │
│                                                             │ imitándose el hombre a recoger de él los frutos cuando madur │        │
│                                                             │ an, unos para consumo en fresco y otros para conserva. Las ú │        │
│                                                             │ nicas higueras con cuidados culturales esmerados, en muchas  │        │
│                                                             │ comarcas, son las brevales, por el interés económico de su p │        │
│                                                             │ rimera cosecha, la de brevas.                                │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Melocotonero Spring Crest                                   │ Árbol caducifolio de porte bajo con corteza lisa, de color c │        │
│                                                             │ eniciento. Sus hojas son alargadas con el margen ligeramente │        │
│                                                             │  aserrado, de color verde brillante, algo más claras por el  │        │
│                                                             │ envés. El melocotonero está muy arraigado en la cultura asiá │        │
│                                                             │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │        │
│                                                             │ id japonés, nació del interior de un enorme melocotón que fl │        │
│                                                             │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │        │
│                                                             │ onfiere longevidad al ser humano, ya que formaba parte de la │        │
│                                                             │  dieta de sus dioses inmortales.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Melocotonero Federica                                       │ Árbol caducifolio de porte bajo con corteza lisa, de color c │        │
│                                                             │ eniciento. Sus hojas son alargadas con el margen ligeramente │        │
│                                                             │  aserrado, de color verde brillante, algo más claras por el  │        │
│                                                             │ envés. El melocotonero está muy arraigado en la cultura asiá │        │
│                                                             │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │        │
│                                                             │ id japonés, nació del interior de un enorme melocotón que fl │        │
│                                                             │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │        │
│                                                             │ onfiere longevidad al ser humano, ya que formaba parte de la │        │
│                                                             │  dieta de sus dioses inmortales.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Parra Uva de Mesa                                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Mandarino -Plantón joven                                    │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Peral Castell                                               │ Árbol piramidal, redondeado en su juventud, luego oval, que  │        │
│                                                             │ llega hasta 20 metros de altura y por término medio vive 65  │        │
│                                                             │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │        │
│                                                             │ cual se destacan con frecuencia placas lenticulares.Las rama │        │
│                                                             │ s se insertan formando ángulo agudo con el tronco (45º), de  │        │
│                                                             │ corteza lisa, primero verde y luego gris-violácea, con numer │        │
│                                                             │ osas lenticelas.                                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Peral Williams                                              │ Árbol piramidal, redondeado en su juventud, luego oval, que  │        │
│                                                             │ llega hasta 20 metros de altura y por término medio vive 65  │        │
│                                                             │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │        │
│                                                             │ cual se destacan con frecuencia placas lenticulares.Las rama │        │
│                                                             │ s se insertan formando ángulo agudo con el tronco (45º), de  │        │
│                                                             │ corteza lisa, primero verde y luego gris-violácea, con numer │        │
│                                                             │ osas lenticelas.                                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Peral Conference                                            │ Árbol piramidal, redondeado en su juventud, luego oval, que  │        │
│                                                             │ llega hasta 20 metros de altura y por término medio vive 65  │        │
│                                                             │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │        │
│                                                             │ cual se destacan con frecuencia placas lenticulares.Las rama │        │
│                                                             │ s se insertan formando ángulo agudo con el tronco (45º), de  │        │
│                                                             │ corteza lisa, primero verde y luego gris-violácea, con numer │        │
│                                                             │ osas lenticelas.                                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Olivo Cipresino                                             │ Existen dos hipótesis sobre el origen del olivo, una que pos │        │
│                                                             │ tula que proviene de las costas de Siria, Líbano e Israel y  │        │
│                                                             │ otra que considera que lo considera originario de Asia menor │        │
│                                                             │ . La llegada a Europa probablemente tuvo lugar de mano de lo │        │
│                                                             │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │        │
│                                                             │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │        │
│                                                             │ icios de la presencia del olivo en las costas mediterráneas  │        │
│                                                             │ españolas coinciden con el dominio romano, aunque fueron pos │        │
│                                                             │ teriormente los árabes los que impulsaron su cultivo en Anda │        │
│                                                             │ lucía, convirtiendo a España en el primer país productor de  │        │
│                                                             │ aceite de oliva a nivel mundial.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Albaricoquero                                               │ árbol que puede pasar de los 6 m de altura, en la región med │        │
│                                                             │ iterránea con ramas formando una copa redondeada. La corteza │        │
│                                                             │  del tronco es pardo-violácea, agrietada; las ramas son roji │        │
│                                                             │ zas y extendidas cuando jóvenes y las ramas secundarias son  │        │
│                                                             │ cortas, divergentes y escasas. Las yemas latentes son frecue │        │
│                                                             │ ntes especialmente sobre las ramas viejas.                   │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Albaricoquero                                               │ árbol que puede pasar de los 6 m de altura, en la región med │        │
│                                                             │ iterránea con ramas formando una copa redondeada. La corteza │        │
│                                                             │  del tronco es pardo-violácea, agrietada; las ramas son roji │        │
│                                                             │ zas y extendidas cuando jóvenes y las ramas secundarias son  │        │
│                                                             │ cortas, divergentes y escasas. Las yemas latentes son frecue │        │
│                                                             │ ntes especialmente sobre las ramas viejas.                   │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Albaricoquero                                               │ árbol que puede pasar de los 6 m de altura, en la región med │        │
│                                                             │ iterránea con ramas formando una copa redondeada. La corteza │        │
│                                                             │  del tronco es pardo-violácea, agrietada; las ramas son roji │        │
│                                                             │ zas y extendidas cuando jóvenes y las ramas secundarias son  │        │
│                                                             │ cortas, divergentes y escasas. Las yemas latentes son frecue │        │
│                                                             │ ntes especialmente sobre las ramas viejas.                   │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cerezo                                                      │ Las principales especies de cerezo cultivadas en el mundo so │        │
│                                                             │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │        │
│                                                             │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │        │
│                                                             │  son naturales del sureste de Europa y oeste de Asia. El cer │        │
│                                                             │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │        │
│                                                             │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │        │
│                                                             │ evado por los pájaros y las migraciones humanas. Fue uno de  │        │
│                                                             │ los frutales más apreciados por los griegos y con el Imperio │        │
│                                                             │  Romano se extendió a regiones muy diversas. En la actualida │        │
│                                                             │ d, el cerezo se encuentra difundido por numerosas regiones y │        │
│                                                             │  países del mundo con clima templado                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cerezo                                                      │ Las principales especies de cerezo cultivadas en el mundo so │        │
│                                                             │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │        │
│                                                             │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │        │
│                                                             │  son naturales del sureste de Europa y oeste de Asia. El cer │        │
│                                                             │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │        │
│                                                             │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │        │
│                                                             │ evado por los pájaros y las migraciones humanas. Fue uno de  │        │
│                                                             │ los frutales más apreciados por los griegos y con el Imperio │        │
│                                                             │  Romano se extendió a regiones muy diversas. En la actualida │        │
│                                                             │ d, el cerezo se encuentra difundido por numerosas regiones y │        │
│                                                             │  países del mundo con clima templado                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cerezo                                                      │ Las principales especies de cerezo cultivadas en el mundo so │        │
│                                                             │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │        │
│                                                             │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │        │
│                                                             │  son naturales del sureste de Europa y oeste de Asia. El cer │        │
│                                                             │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │        │
│                                                             │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │        │
│                                                             │ evado por los pájaros y las migraciones humanas. Fue uno de  │        │
│                                                             │ los frutales más apreciados por los griegos y con el Imperio │        │
│                                                             │  Romano se extendió a regiones muy diversas. En la actualida │        │
│                                                             │ d, el cerezo se encuentra difundido por numerosas regiones y │        │
│                                                             │  países del mundo con clima templado                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Ciruelo                                                     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │        │
│                                                             │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │        │
│                                                             │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │        │
│                                                             │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │        │
│                                                             │ osas                                                         │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Granado                                                     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │        │
│                                                             │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │        │
│                                                             │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │        │
│                                                             │  o menos cuadrangulares o angostas y de cuatro alas, posteri │        │
│                                                             │ ormente se vuelven redondas con corteza de color café grisác │        │
│                                                             │ eo, la mayoría de las ramas, pero especialmente las pequeñas │        │
│                                                             │  ramitas axilares, son en forma de espina o terminan en una  │        │
│                                                             │ espina aguda; la copa es extendida.                          │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Granado                                                     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │        │
│                                                             │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │        │
│                                                             │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │        │
│                                                             │  o menos cuadrangulares o angostas y de cuatro alas, posteri │        │
│                                                             │ ormente se vuelven redondas con corteza de color café grisác │        │
│                                                             │ eo, la mayoría de las ramas, pero especialmente las pequeñas │        │
│                                                             │  ramitas axilares, son en forma de espina o terminan en una  │        │
│                                                             │ espina aguda; la copa es extendida.                          │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Granado                                                     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │        │
│                                                             │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │        │
│                                                             │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │        │
│                                                             │  o menos cuadrangulares o angostas y de cuatro alas, posteri │        │
│                                                             │ ormente se vuelven redondas con corteza de color café grisác │        │
│                                                             │ eo, la mayoría de las ramas, pero especialmente las pequeñas │        │
│                                                             │  ramitas axilares, son en forma de espina o terminan en una  │        │
│                                                             │ espina aguda; la copa es extendida.                          │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Higuera                                                     │ La higuera (Ficus carica L.) es un árbol típico de secano en │        │
│                                                             │  los países mediterráneos. Su rusticidad y su fácil multipli │        │
│                                                             │ cación hacen de la higuera un frutal muy apropiado para el c │        │
│                                                             │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │        │
│                                                             │ e no requiere cuidado alguno una vez plantado y arraigado, l │        │
│                                                             │ imitándose el hombre a recoger de él los frutos cuando madur │        │
│                                                             │ an, unos para consumo en fresco y otros para conserva. Las ú │        │
│                                                             │ nicas higueras con cuidados culturales esmerados, en muchas  │        │
│                                                             │ comarcas, son las brevales, por el interés económico de su p │        │
│                                                             │ rimera cosecha, la de brevas.                                │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Manzano                                                     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │        │
│                                                             │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │        │
│                                                             │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │        │
│                                                             │  color ceniciento verdoso sobre los ramos y escamosa y gris  │        │
│                                                             │ parda sobre las partes viejas del árbol. Tiene una vida de u │        │
│                                                             │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │        │
│                                                             │ e el tallo, de color verde oscuro, a veces tendiendo a negru │        │
│                                                             │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │        │
│                                                             │ n una espina                                                 │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Melocotonero                                                │ Árbol caducifolio de porte bajo con corteza lisa, de color c │        │
│                                                             │ eniciento. Sus hojas son alargadas con el margen ligeramente │        │
│                                                             │  aserrado, de color verde brillante, algo más claras por el  │        │
│                                                             │ envés. El melocotonero está muy arraigado en la cultura asiá │        │
│                                                             │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │        │
│                                                             │ id japonés, nació del interior de un enorme melocotón que fl │        │
│                                                             │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │        │
│                                                             │ onfiere longevidad al ser humano, ya que formaba parte de la │        │
│                                                             │  dieta de sus dioses inmortales.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Melocotonero                                                │ Árbol caducifolio de porte bajo con corteza lisa, de color c │        │
│                                                             │ eniciento. Sus hojas son alargadas con el margen ligeramente │        │
│                                                             │  aserrado, de color verde brillante, algo más claras por el  │        │
│                                                             │ envés. El melocotonero está muy arraigado en la cultura asiá │        │
│                                                             │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │        │
│                                                             │ id japonés, nació del interior de un enorme melocotón que fl │        │
│                                                             │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │        │
│                                                             │ onfiere longevidad al ser humano, ya que formaba parte de la │        │
│                                                             │  dieta de sus dioses inmortales.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Melocotonero                                                │ Árbol caducifolio de porte bajo con corteza lisa, de color c │        │
│                                                             │ eniciento. Sus hojas son alargadas con el margen ligeramente │        │
│                                                             │  aserrado, de color verde brillante, algo más claras por el  │        │
│                                                             │ envés. El melocotonero está muy arraigado en la cultura asiá │        │
│                                                             │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │        │
│                                                             │ id japonés, nació del interior de un enorme melocotón que fl │        │
│                                                             │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │        │
│                                                             │ onfiere longevidad al ser humano, ya que formaba parte de la │        │
│                                                             │  dieta de sus dioses inmortales.                             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Membrillero                                                 │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │        │
│                                                             │ so y la corteza lisa, grisácea, que se desprende en escamas  │        │
│                                                             │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │        │
│                                                             │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Membrillero                                                 │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │        │
│                                                             │ so y la corteza lisa, grisácea, que se desprende en escamas  │        │
│                                                             │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │        │
│                                                             │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Membrillero                                                 │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │        │
│                                                             │ so y la corteza lisa, grisácea, que se desprende en escamas  │        │
│                                                             │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │        │
│                                                             │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Membrillero                                                 │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │        │
│                                                             │ so y la corteza lisa, grisácea, que se desprende en escamas  │        │
│                                                             │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │        │
│                                                             │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Arbustos Mix Maceta                                         │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Mimosa Injerto CLASICA Dealbata                             │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │        │
│                                                             │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │        │
│                                                             │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │        │
│                                                             │ a). Arbol de follaje persistente muy usado en parques por su │        │
│                                                             │  atractiva floración amarilla hacia fines del invierno. Altu │        │
│                                                             │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │        │
│                                                             │ je perenne de tonos plateados, muy ornamental. Sus hojas son │        │
│                                                             │  de textura fina, de color verde y sus flores amarillas que  │        │
│                                                             │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │        │
│                                                             │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │        │
│                                                             │ mente curvada, con los bordes algo constreñidos entre las se │        │
│                                                             │ millas, que se disponen en el fruto longitudinalmente...     │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Mimosa Semilla Bayleyana                                    │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │        │
│                                                             │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │        │
│                                                             │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │        │
│                                                             │ a). Arbol de follaje persistente muy usado en parques por su │        │
│                                                             │  atractiva floración amarilla hacia fines del invierno. Altu │        │
│                                                             │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │        │
│                                                             │ je perenne de tonos plateados, muy ornamental. Sus hojas son │        │
│                                                             │  de textura fina, de color verde y sus flores amarillas que  │        │
│                                                             │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │        │
│                                                             │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │        │
│                                                             │ mente curvada, con los bordes algo constreñidos entre las se │        │
│                                                             │ millas, que se disponen en el fruto longitudinalmente...     │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Mimosa Semilla Espectabilis                                 │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │        │
│                                                             │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │        │
│                                                             │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │        │
│                                                             │ a). Arbol de follaje persistente muy usado en parques por su │        │
│                                                             │  atractiva floración amarilla hacia fines del invierno. Altu │        │
│                                                             │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │        │
│                                                             │ je perenne de tonos plateados, muy ornamental. Sus hojas son │        │
│                                                             │  de textura fina, de color verde y sus flores amarillas que  │        │
│                                                             │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │        │
│                                                             │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │        │
│                                                             │ mente curvada, con los bordes algo constreñidos entre las se │        │
│                                                             │ millas, que se disponen en el fruto longitudinalmente...     │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Mimosa Semilla Longifolia                                   │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │        │
│                                                             │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │        │
│                                                             │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │        │
│                                                             │ a). Arbol de follaje persistente muy usado en parques por su │        │
│                                                             │  atractiva floración amarilla hacia fines del invierno. Altu │        │
│                                                             │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │        │
│                                                             │ je perenne de tonos plateados, muy ornamental. Sus hojas son │        │
│                                                             │  de textura fina, de color verde y sus flores amarillas que  │        │
│                                                             │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │        │
│                                                             │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │        │
│                                                             │ mente curvada, con los bordes algo constreñidos entre las se │        │
│                                                             │ millas, que se disponen en el fruto longitudinalmente...     │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Mimosa Semilla Floribunda 4 estaciones                      │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │        │
│                                                             │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │        │
│                                                             │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │        │
│                                                             │ a). Arbol de follaje persistente muy usado en parques por su │        │
│                                                             │  atractiva floración amarilla hacia fines del invierno. Altu │        │
│                                                             │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │        │
│                                                             │ je perenne de tonos plateados, muy ornamental. Sus hojas son │        │
│                                                             │  de textura fina, de color verde y sus flores amarillas que  │        │
│                                                             │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │        │
│                                                             │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │        │
│                                                             │ mente curvada, con los bordes algo constreñidos entre las se │        │
│                                                             │ millas, que se disponen en el fruto longitudinalmente...     │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Abelia Floribunda                                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Callistemom (Mix)                                           │ Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y │        │
│                                                             │  colgantes (de ahí lo de \"llorón\")..                       │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Callistemom (Mix)                                           │ Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y │        │
│                                                             │  colgantes (de ahí lo de \"llorón\")..                       │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Corylus Avellana \"Contorta\"                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Escallonia (Mix)                                            │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Evonimus Emerald Gayeti                                     │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Evonimus Pulchellus                                         │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Hibiscus Syriacus  \"Helene\" -Blanco-C.rojo                │ Por su capacidad de soportar podas, pueden ser fácilmente mo │        │
│                                                             │ ldeadas como bonsái en el transcurso de pocos años. Flores d │        │
│                                                             │ e muchos colores según la variedad, desde el blanco puro al  │        │
│                                                             │ rojo intenso, del amarillo al anaranjado. La flor apenas dur │        │
│                                                             │ a 1 día, pero continuamente aparecen nuevas y la floración s │        │
│                                                             │ e prolonga durante todo el periodo de crecimiento vegetativo │        │
│                                                             │ .                                                            │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Hibiscus Syriacus \"Pink Giant\" Rosa                       │ Por su capacidad de soportar podas, pueden ser fácilmente mo │        │
│                                                             │ ldeadas como bonsái en el transcurso de pocos años. Flores d │        │
│                                                             │ e muchos colores según la variedad, desde el blanco puro al  │        │
│                                                             │ rojo intenso, del amarillo al anaranjado. La flor apenas dur │        │
│                                                             │ a 1 día, pero continuamente aparecen nuevas y la floración s │        │
│                                                             │ e prolonga durante todo el periodo de crecimiento vegetativo │        │
│                                                             │ .                                                            │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Lonicera Nitida \"Maigrum\"                                 │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Prunus pisardii                                             │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Weigelia \"Bristol Ruby\"                                   │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Leptospermum formado PIRAMIDE                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Leptospermum COPA                                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Nerium oleander-CALIDAD \"GARDEN\"                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Nerium Oleander Arbusto GRANDE                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Nerium oleander COPA  Calibre 6/8                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ ROSAL TREPADOR                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Camelia Blanco, Chrysler Rojo, Soraya Naranja,              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Solanum Jazminoide                                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Wisteria Sinensis  azul, rosa, blanca                       │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Wisteria Sinensis INJERTADAS DECÃ“                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Bougamvillea Sanderiana Tutor                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Bougamvillea Sanderiana Espaldera                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Bougamvillea Sanderiana Espaldera                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Bougamvillea Sanderiana, 3 tut. piramide                    │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Expositor Árboles clima mediterráneo                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Expositor Árboles borde del mar                             │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Brachychiton Acerifolius                                    │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cassia Corimbosa                                            │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cassia Corimbosa                                            │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Chitalpa Summer Bells                                       │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Erytrina Kafra                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Eucalyptus Citriodora                                       │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Eucalyptus Ficifolia                                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Hibiscus Syriacus  Var. Injertadas 1 Tallo                  │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Lagunaria Patersonii                                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Lagunaria Patersonii                                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Morus Alba                                                  │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Platanus Acerifolia                                         │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Salix Babylonica  Pendula                                   │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Tamarix  Ramosissima Pink Cascade                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Tecoma Stands                                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Tecoma Stands                                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Tipuana Tipu                                                │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Pleioblastus distichus-Bambú enano                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Sasa palmata                                                │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Phylostachys aurea                                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Phylostachys aurea                                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Phylostachys Bambusa Spectabilis                            │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Phylostachys biseti                                         │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Pseudosasa japonica (Metake)                                │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Pseudosasa japonica (Metake)                                │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cedrus Deodara \"Feeling Blue\" Novedad                     │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Juniperus chinensis \"Blue Alps\"                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Juniperus Chinensis Stricta                                 │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Juniperus squamata \"Blue Star\"                            │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Juniperus x media Phitzeriana verde                         │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Bismarckia Nobilis                                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Brahea Armata                                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Brahea Edulis                                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Butia Capitata                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Butia Capitata                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Butia Capitata                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Chamaerops Humilis                                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Chamaerops Humilis                                          │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Chamaerops Humilis \"Cerifera\"                             │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Chrysalidocarpus Lutescens -ARECA                           │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cordyline Australis -DRACAENA                               │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cycas Revoluta                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Cycas Revoluta                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Dracaena Drago                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Dracaena Drago                                              │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Livistonia Decipiens                                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Livistonia Decipiens                                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Rhaphis Excelsa                                             │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Sabal Minor                                                 │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Sabal Minor                                                 │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Trachycarpus Fortunei                                       │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Washingtonia Robusta                                        │                                                              │        │
├─────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────┼────────┤
│ Zamia Furfuracaea                                           │                                                              │        │
└─────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────────────┴────────┘
**/
-- Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.
select o.* from oficina as o
LEFT JOIN (select DISTINCT(o.codigo_oficina) from empleado as em
INNER JOIN oficina as o ON em.codigo_oficina=o.codigo_oficina
INNER JOIN cliente as c ON em.codigo_empleado=c.codigo_empleado_rep_ventas
INNER JOIN pedido as p ON c.codigo_cliente=p.codigo_cliente
INNER JOIN detalle_pedido as dp ON p.codigo_pedido=dp.codigo_pedido
INNER JOIN producto as pd ON dp.codigo_producto=pd.codigo_producto
INNER JOIN gama_producto as g ON pd.gama=g.gama
where g.gama='Frutales'  
) AS oficinas_frutales ON o.codigo_oficina=oficinas_frutales.codigo_oficina
where oficinas_frutales.codigo_oficina IS NULL;
/**
┌────────────────┬─────────┬────────────┬────────────┬───────────────┬─────────────────┬──────────────────────────┬──────────────────┐
│ codigo_oficina │ ciudad  │    pais    │   region   │ codigo_postal │    telefono     │     linea_direccion1     │ linea_direccion2 │
├────────────────┼─────────┼────────────┼────────────┼───────────────┼─────────────────┼──────────────────────────┼──────────────────┤
│ LON-UK         │ Londres │ Inglaterra │ EMEA       │ EC2N 1HN      │ +44 20 78772041 │ 52 Old Broad Street      │ Ground Floor     │
│ PAR-FR         │ Paris   │ Francia    │ EMEA       │ 75017         │ +33 14 723 4404 │ 29 Rue Jouffroy d'abbans │                  │
│ TOK-JP         │ Tokyo   │ Japón      │ Chiyoda-Ku │ 102-8578      │ +81 33 224 5000 │ 4-1 Kioicho              │                  │
└────────────────┴─────────┴────────────┴────────────┴───────────────┴─────────────────┴──────────────────────────┴──────────────────┘
**/
-- Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.
select c.* from cliente as c
INNER JOIN pedido as p ON c.codigo_cliente=p.codigo_cliente
LEFT JOIN pago as pa ON c.codigo_cliente=pa.codigo_cliente
where pa.codigo_cliente is null
group by c.codigo_cliente;
/**
┌────────────────┬────────────────┬─────────────────┬───────────────────┬───────────┬───────────┬──────────────────┬──────────────────┬────────┬─────────────┬───────┬───────────────┬────────────────────────────┬────────────────┐
│ codigo_cliente │ nombre_cliente │ nombre_contacto │ apellido_contacto │ telefono  │    fax    │ linea_direccion1 │ linea_direccion2 │ ciudad │   region    │ pais  │ codigo_postal │ codigo_empleado_rep_ventas │ limite_credito │
├────────────────┼────────────────┼─────────────────┼───────────────────┼───────────┼───────────┼──────────────────┼──────────────────┼────────┼─────────────┼───────┼───────────────┼────────────────────────────┼────────────────┤
│ 36             │ Flores S.L.    │ Antonio         │ Romero            │ 654352981 │ 685249700 │ Avenida España   │                  │ Madrid │ Fuenlabrada │ Spain │ 29643         │ 18                         │ 6000           │
└────────────────┴────────────────┴─────────────────┴───────────────────┴───────────┴───────────┴──────────────────┴──────────────────┴────────┴─────────────┴───────┴───────────────┴────────────────────────────┴────────────────┘
**/
-- Devuelve un listado con los datos de los empleados que no tienen clientes asociados y el nombre de su jefe asociado.
select e.*, j.nombre as "Nombre jefe" from empleado as e
LEFT JOIN cliente as c ON e.codigo_empleado=c.codigo_empleado_rep_ventas
LEFT JOIN empleado as j ON e.codigo_jefe=j.codigo_empleado
where c.codigo_empleado_rep_ventas is null;
/**
┌─────────────────┬─────────────┬────────────┬───────────┬───────────┬───────────────────────────┬────────────────┬─────────────┬───────────────────────┬─────────────┐
│ codigo_empleado │   nombre    │ apellido1  │ apellido2 │ extension │           email           │ codigo_oficina │ codigo_jefe │        puesto         │ Nombre jefe │
├─────────────────┼─────────────┼────────────┼───────────┼───────────┼───────────────────────────┼────────────────┼─────────────┼───────────────────────┼─────────────┤
│ 1               │ Marcos      │ Magaña     │ Perez     │ 3897      │ marcos@jardineria.es      │ TAL-ES         │             │ Director General      │             │
│ 2               │ Ruben       │ López      │ Martinez  │ 2899      │ rlopez@jardineria.es      │ TAL-ES         │ 1           │ Subdirector Marketing │ Marcos      │
│ 3               │ Alberto     │ Soria      │ Carrasco  │ 2837      │ asoria@jardineria.es      │ TAL-ES         │ 2           │ Subdirector Ventas    │ Ruben       │
│ 4               │ Maria       │ Solís      │ Jerez     │ 2847      │ msolis@jardineria.es      │ TAL-ES         │ 2           │ Secretaria            │ Ruben       │
│ 6               │ Juan Carlos │ Ortiz      │ Serrano   │ 2845      │ cortiz@jardineria.es      │ TAL-ES         │ 3           │ Representante Ventas  │ Alberto     │
│ 7               │ Carlos      │ Soria      │ Jimenez   │ 2444      │ csoria@jardineria.es      │ MAD-ES         │ 3           │ Director Oficina      │ Alberto     │
│ 10              │ Hilario     │ Rodriguez  │ Huertas   │ 2444      │ hrodriguez@jardineria.es  │ MAD-ES         │ 7           │ Representante Ventas  │ Carlos      │
│ 13              │ David       │ Palma      │ Aceituno  │ 2519      │ dpalma@jardineria.es      │ BCN-ES         │ 11          │ Representante Ventas  │ Emmanuel    │
│ 14              │ Oscar       │ Palma      │ Aceituno  │ 2519      │ opalma@jardineria.es      │ BCN-ES         │ 11          │ Representante Ventas  │ Emmanuel    │
│ 15              │ Francois    │ Fignon     │           │ 9981      │ ffignon@gardening.com     │ PAR-FR         │ 3           │ Director Oficina      │ Alberto     │
│ 17              │ Laurent     │ Serra      │           │ 9982      │ lserra@gardening.com      │ PAR-FR         │ 15          │ Representante Ventas  │ Francois    │
│ 20              │ Hilary      │ Washington │           │ 7565      │ hwashington@gardening.com │ BOS-USA        │ 3           │ Director Oficina      │ Alberto     │
│ 21              │ Marcus      │ Paxton     │           │ 7565      │ mpaxton@gardening.com     │ BOS-USA        │ 20          │ Representante Ventas  │ Hilary      │
│ 23              │ Nei         │ Nishikori  │           │ 8734      │ nnishikori@gardening.com  │ TOK-JP         │ 3           │ Director Oficina      │ Alberto     │
│ 24              │ Narumi      │ Riko       │           │ 8734      │ nriko@gardening.com       │ TOK-JP         │ 23          │ Representante Ventas  │ Nei         │
│ 25              │ Takuma      │ Nomura     │           │ 8735      │ tnomura@gardening.com     │ TOK-JP         │ 23          │ Representante Ventas  │ Nei         │
│ 26              │ Amy         │ Johnson    │           │ 3321      │ ajohnson@gardening.com    │ LON-UK         │ 3           │ Director Oficina      │ Alberto     │
│ 27              │ Larry       │ Westfalls  │           │ 3322      │ lwestfalls@gardening.com  │ LON-UK         │ 26          │ Representante Ventas  │ Amy         │
│ 28              │ John        │ Walton     │           │ 3322      │ jwalton@gardening.com     │ LON-UK         │ 26          │ Representante Ventas  │ Amy         │
│ 29              │ Kevin       │ Fallmer    │           │ 3210      │ kfalmer@gardening.com     │ SYD-AU         │ 3           │ Director Oficina      │ Alberto     │
└─────────────────┴─────────────┴────────────┴───────────┴───────────┴───────────────────────────┴────────────────┴─────────────┴───────────────────────┴─────────────┘
**/
```
## Consultas resumen

```sql
-- ¿Cuántos empleados hay en la compañía?
select COUNT(codigo_empleado) as "Empleados en la compañia" from empleado;
/**
┌──────────────────────────┐
│ Empleados en la compañia │
├──────────────────────────┤
│ 31                       │
└──────────────────────────┘
**/
-- ¿Cuántos clientes tiene cada país?
select pais, COUNT(codigo_cliente) as "Clientes por pais" from cliente group by pais;
/**
┌────────────────┬───────────────────┐
│      pais      │ Clientes por pais │
├────────────────┼───────────────────┤
│ Australia      │ 2                 │
│ France         │ 2                 │
│ Spain          │ 27                │
│ USA            │ 4                 │
│ United Kingdom │ 1                 │
└────────────────┴───────────────────┘
**/
-- ¿Cuál fue el pago medio en 2009?
select AVG(total) as "Media 2009" from pago where fecha_pago regexp '2009';
/**
┌──────────────────┐
│    Media 2009    │
├──────────────────┤
│ 4504.07692307692 │
└──────────────────┘
**/
-- ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el número de pedidos.
select estado, COUNT(codigo_pedido) as "Numero pedidos" from pedido group by estado;
/**
┌───────────┬────────────────┐
│  estado   │ Numero pedidos │
├───────────┼────────────────┤
│ Entregado │ 61             │
│ Pendiente │ 30             │
│ Rechazado │ 24             │
└───────────┴────────────────┘
**/
-- Calcula el precio de venta del producto más caro y más barato en una misma consulta.
select MAX(precio_venta) as "Precio maximo", MIN(precio_venta) as "Precio minimo" from producto;
/**
┌───────────────┬───────────────┐
│ Precio maximo │ Precio minimo │
├───────────────┼───────────────┤
│ 462           │ 1             │
└───────────────┴───────────────┘
**/
-- Calcula el número de clientes que tiene la empresa.
select COUNT(codigo_cliente) as "Numero clientes" from cliente;
/**
┌─────────────────┐
│ Numero clientes │
├─────────────────┤
│ 36              │
└─────────────────┘
**/
-- ¿Cuántos clientes existen con domicilio en la ciudad de Madrid?
select COUNT(codigo_cliente) as "Numero clientes Madrid" from cliente where ciudad='Madrid';
/**
┌────────────────────────┐
│ Numero clientes Madrid │
├────────────────────────┤
│ 11                     │
└────────────────────────┘
**/
-- ¿Calcula cuántos clientes tiene cada una de las ciudades que empiezan por M?
select ciudad, COUNT(codigo_cliente) as "Numero clientes" from cliente where ciudad regexp '^M' group by ciudad;
/**
┌──────────────────────┬─────────────────┐
│        ciudad        │ Numero clientes │
├──────────────────────┼─────────────────┤
│ Madrid               │ 11              │
│ Miami                │ 2               │
│ Montornes del valles │ 1               │
└──────────────────────┴─────────────────┘
**/
-- Devuelve el nombre de los representantes de ventas y el número de clientes al que atiende cada uno.
select e.nombre, COUNT(c.codigo_cliente) as "Clientes por representante" from cliente as c, empleado as e where e.codigo_empleado=c.codigo_empleado_rep_ventas group by c.codigo_empleado_rep_ventas;
/**
┌─────────────────┬────────────────────────────┐
│     nombre      │ Clientes por representante │
├─────────────────┼────────────────────────────┤
│ Felipe          │ 5                          │
│ Mariano         │ 4                          │
│ Lucio           │ 2                          │
│ Emmanuel        │ 5                          │
│ José Manuel     │ 5                          │
│ Lionel          │ 2                          │
│ Michael         │ 2                          │
│ Walter Santiago │ 2                          │
│ Lorena          │ 2                          │
│ Julian          │ 5                          │
│ Mariko          │ 2                          │
└─────────────────┴────────────────────────────┘
**/
-- Calcula el número de clientes que no tiene asignado representante de ventas.
select COUNT(codigo_cliente) as "Clientes sin representantes" from cliente where codigo_empleado_rep_ventas is null;
/**
┌─────────────────────────────┐
│ Clientes sin representantes │
├─────────────────────────────┤
│ 0                           │
└─────────────────────────────┘
**/
-- Calcula la fecha del primer y último pago realizado por cada uno de los clientes. El listado deberá mostrar el nombre y los apellidos de cada cliente.
select c.nombre_contacto, c.apellido_contacto, MIN(p.fecha_pago) as "Primer pago", MAX(p.fecha_pago) as "Ultimo pago" from cliente as c, pago as p where c.codigo_cliente=p.codigo_cliente;
/**
┌─────────────────┬───────────────────┬─────────────┬─────────────┐
│ nombre_contacto │ apellido_contacto │ Primer pago │ Ultimo pago │
├─────────────────┼───────────────────┼─────────────┼─────────────┤
│ Maria           │ Santillana        │ 2006-01-18  │ 2009-03-26  │
└─────────────────┴───────────────────┴─────────────┴─────────────┘
**/
-- Calcula el número de productos diferentes que hay en cada uno de los pedidos.
select codigo_pedido, COUNT(DISTINCT(codigo_producto)) as "Productos diferentes" from detalle_pedido group by codigo_pedido;
/**
┌───────────────┬──────────────────────┐
│ codigo_pedido │ Productos diferentes │
├───────────────┼──────────────────────┤
│ 1             │ 5                    │
│ 2             │ 7                    │
│ 3             │ 6                    │
│ 4             │ 8                    │
│ 8             │ 3                    │
│ 9             │ 4                    │
│ 10            │ 3                    │
│ 11            │ 2                    │
│ 12            │ 1                    │
│ 13            │ 3                    │
│ 14            │ 2                    │
│ 15            │ 4                    │
│ 16            │ 2                    │
│ 17            │ 5                    │
│ 18            │ 3                    │
│ 19            │ 5                    │
│ 20            │ 2                    │
│ 21            │ 3                    │
│ 22            │ 1                    │
│ 23            │ 4                    │
│ 24            │ 4                    │
│ 25            │ 3                    │
│ 26            │ 3                    │
│ 27            │ 3                    │
│ 28            │ 3                    │
│ 29            │ 5                    │
│ 30            │ 6                    │
│ 31            │ 3                    │
│ 32            │ 5                    │
│ 33            │ 4                    │
│ 34            │ 4                    │
│ 35            │ 5                    │
│ 36            │ 5                    │
│ 37            │ 3                    │
│ 38            │ 2                    │
│ 39            │ 2                    │
│ 40            │ 2                    │
│ 41            │ 2                    │
│ 42            │ 2                    │
│ 43            │ 1                    │
│ 44            │ 1                    │
│ 45            │ 2                    │
│ 46            │ 2                    │
│ 47            │ 2                    │
│ 48            │ 5                    │
│ 49            │ 3                    │
│ 50            │ 3                    │
│ 51            │ 3                    │
│ 52            │ 1                    │
│ 53            │ 4                    │
│ 54            │ 7                    │
│ 55            │ 5                    │
│ 56            │ 6                    │
│ 57            │ 4                    │
│ 58            │ 4                    │
│ 59            │ 1                    │
│ 60            │ 1                    │
│ 61            │ 1                    │
│ 62            │ 1                    │
│ 63            │ 1                    │
│ 64            │ 1                    │
│ 65            │ 1                    │
│ 66            │ 1                    │
│ 67            │ 1                    │
│ 68            │ 1                    │
│ 74            │ 3                    │
│ 75            │ 3                    │
│ 76            │ 5                    │
│ 77            │ 2                    │
│ 78            │ 4                    │
│ 79            │ 1                    │
│ 80            │ 3                    │
│ 81            │ 1                    │
│ 82            │ 1                    │
│ 83            │ 1                    │
│ 89            │ 6                    │
│ 90            │ 3                    │
│ 91            │ 3                    │
│ 92            │ 3                    │
│ 93            │ 3                    │
│ 94            │ 3                    │
│ 95            │ 3                    │
│ 96            │ 4                    │
│ 97            │ 3                    │
│ 98            │ 5                    │
│ 99            │ 2                    │
│ 100           │ 2                    │
│ 101           │ 2                    │
│ 102           │ 2                    │
│ 103           │ 2                    │
│ 104           │ 2                    │
│ 105           │ 2                    │
│ 106           │ 2                    │
│ 107           │ 2                    │
│ 108           │ 2                    │
│ 109           │ 7                    │
│ 110           │ 3                    │
│ 111           │ 1                    │
│ 112           │ 1                    │
│ 113           │ 1                    │
│ 114           │ 1                    │
│ 115           │ 1                    │
│ 116           │ 5                    │
│ 117           │ 4                    │
│ 118           │ 1                    │
│ 119           │ 1                    │
│ 120           │ 1                    │
│ 121           │ 1                    │
│ 122           │ 1                    │
│ 123           │ 1                    │
│ 124           │ 1                    │
│ 125           │ 1                    │
│ 126           │ 1                    │
│ 127           │ 1                    │
│ 128           │ 2                    │
└───────────────┴──────────────────────┘
**/
-- Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de los pedidos. 
-- (se supone que usando SUM(?))
select SUM(productos_pedido) as "Total de productos" from (select COUNT(codigo_producto) as "Productos_pedido" from detalle_pedido group by codigo_pedido) as "sub";
/**
┌────────────────────┐
│ Total de productos │
├────────────────────┤
│ 318                │
└────────────────────┘
versión fácil: select COUNT(codigo_producto) from detalle_producto;
**/
-- Devuelve un listado de los 20 productos más vendidos y el número total de unidades que se han vendido de cada uno. El listado deberá estar ordenado por el número total de unidades vendidas.
select p.codigo_producto, p.nombre, COUNT(dp.codigo_producto) as "Total vendido" from detalle_pedido as dp, producto as p where p.codigo_producto=dp.codigo_producto group by p.codigo_producto order by "Total vendido" DESC LIMIT 20;
/**
┌─────────────────┬────────────────────────────────┬───────────────┐
│ codigo_producto │             nombre             │ Total vendido │
├─────────────────┼────────────────────────────────┼───────────────┤
│ FR-67           │ Cerezo                         │ 28            │
│ 30310           │ Azadón                         │ 8             │
│ OR-227          │ Chamaerops Humilis             │ 7             │
│ FR-11           │ Limonero 30/40                 │ 7             │
│ 22225           │ Rastrillo de Jardín            │ 7             │
│ 11679           │ Sierra de Poda 400MM           │ 7             │
│ OR-247          │ Trachycarpus Fortunei          │ 6             │
│ OR-208          │ Tuja orientalis \"Aurea nana\" │ 6             │
│ OR-157          │ Acer Pseudoplatanus            │ 6             │
│ AR-009          │ Thymus Vulgaris                │ 6             │
│ 21636           │ Pala                           │ 6             │
│ FR-94           │ Melocotonero                   │ 5             │
│ FR-85           │ Kaki                           │ 5             │
│ FR-87           │ Manzano                        │ 4             │
│ FR-53           │ Peral Blanq. de Aranjuez       │ 4             │
│ FR-108          │ Peral                          │ 4             │
│ FR-100          │ Nectarina                      │ 4             │
│ FR-1            │ Expositor Cítricos Mix         │ 4             │
│ AR-006          │ Petrosilium Hortense (Peregil) │ 4             │
│ AR-001          │ Ajedrea                        │ 4             │
└─────────────────┴────────────────────────────────┴───────────────┘
**/
-- La facturación que ha tenido la empresa en toda la historia, indicando la base imponible, el IGIC y el total facturado. La base imponible se calcula sumando el coste del producto por el número de unidades vendidas de la tabla detalle_pedido. El IGIC es el 7 % de la base imponible, y el total la suma de los dos campos anteriores.
select codigo_producto, precio_unidad + cantidad as "Base imponible", (precio_unidad + cantidad) * 0.07 as "IGIC", (precio_unidad + cantidad) + ((precio_unidad + cantidad) * 0.07) as "Total facturado" from detalle_pedido;
/**
┌─────────────────┬────────────────┬───────┬─────────────────┐
│ codigo_producto │ Base imponible │ IGIC  │ Total facturado │
├─────────────────┼────────────────┼───────┼─────────────────┤
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ OR-127          │ 44             │ 3.08  │ 47.08           │
│ OR-141          │ 29             │ 2.03  │ 31.03           │
│ OR-241          │ 34             │ 2.38  │ 36.38           │
│ OR-99           │ 37             │ 2.59  │ 39.59           │
│ FR-4            │ 32             │ 2.24  │ 34.24           │
│ FR-40           │ 15             │ 1.05  │ 16.05           │
│ OR-140          │ 54             │ 3.78  │ 57.78           │
│ OR-141          │ 25             │ 1.75  │ 26.75           │
│ OR-159          │ 18             │ 1.26  │ 19.26           │
│ OR-227          │ 131            │ 9.17  │ 140.17          │
│ OR-247          │ 467            │ 32.69 │ 499.69          │
│ FR-48           │ 129            │ 9.03  │ 138.03          │
│ OR-122          │ 37             │ 2.59  │ 39.59           │
│ OR-123          │ 16             │ 1.12  │ 17.12           │
│ OR-213          │ 296            │ 20.72 │ 316.72          │
│ OR-217          │ 80             │ 5.6   │ 85.6            │
│ OR-218          │ 49             │ 3.43  │ 52.43           │
│ FR-31           │ 20             │ 1.4   │ 21.4            │
│ FR-34           │ 50             │ 3.5   │ 53.5            │
│ FR-40           │ 51             │ 3.57  │ 54.57           │
│ OR-152          │ 9              │ 0.63  │ 9.63            │
│ OR-155          │ 10             │ 0.7   │ 10.7            │
│ OR-156          │ 26             │ 1.82  │ 27.82           │
│ OR-157          │ 48             │ 3.36  │ 51.36           │
│ OR-222          │ 80             │ 5.6   │ 85.6            │
│ FR-106          │ 14             │ 0.98  │ 14.98           │
│ FR-108          │ 33             │ 2.31  │ 35.31           │
│ FR-11           │ 110            │ 7.7   │ 117.7           │
│ AR-001          │ 81             │ 5.67  │ 86.67           │
│ AR-008          │ 451            │ 31.57 │ 482.57          │
│ FR-106          │ 88             │ 6.16  │ 94.16           │
│ FR-69           │ 106            │ 7.42  │ 113.42          │
│ FR-82           │ 75             │ 5.25  │ 80.25           │
│ FR-91           │ 105            │ 7.35  │ 112.35          │
│ OR-234          │ 69             │ 4.83  │ 73.83           │
│ AR-006          │ 181            │ 12.67 │ 193.67          │
│ OR-247          │ 88             │ 6.16  │ 94.16           │
│ AR-009          │ 291            │ 20.37 │ 311.37          │
│ 11679           │ 19             │ 1.33  │ 20.33           │
│ 21636           │ 26             │ 1.82  │ 27.82           │
│ FR-11           │ 105            │ 7.35  │ 112.35          │
│ FR-100          │ 19             │ 1.33  │ 20.33           │
│ FR-13           │ 70             │ 4.9   │ 74.9            │
│ FR-84           │ 17             │ 1.19  │ 18.19           │
│ OR-101          │ 8              │ 0.56  │ 8.56            │
│ OR-156          │ 16             │ 1.12  │ 17.12           │
│ OR-203          │ 19             │ 1.33  │ 20.33           │
│ 30310           │ 24             │ 1.68  │ 25.68           │
│ FR-36           │ 19             │ 1.33  │ 20.33           │
│ 11679           │ 19             │ 1.33  │ 20.33           │
│ 22225           │ 17             │ 1.19  │ 18.19           │
│ FR-37           │ 14             │ 0.98  │ 14.98           │
│ FR-64           │ 27             │ 1.89  │ 28.89           │
│ OR-136          │ 23             │ 1.61  │ 24.61           │
│ 22225           │ 16             │ 1.12  │ 17.12           │
│ FR-22           │ 6              │ 0.42  │ 6.42            │
│ OR-159          │ 16             │ 1.12  │ 17.12           │
│ 30310           │ 21             │ 1.47  │ 22.47           │
│ FR-23           │ 14             │ 0.98  │ 14.98           │
│ FR-75           │ 33             │ 2.31  │ 35.31           │
│ FR-84           │ 18             │ 1.26  │ 19.26           │
│ OR-208          │ 24             │ 1.68  │ 25.68           │
│ 11679           │ 28             │ 1.96  │ 29.96           │
│ 30310           │ 20             │ 1.4   │ 21.4            │
│ 21636           │ 19             │ 1.33  │ 20.33           │
│ FR-18           │ 26             │ 1.82  │ 27.82           │
│ FR-53           │ 11             │ 0.77  │ 11.77           │
│ OR-240          │ 7              │ 0.49  │ 7.49            │
│ AR-002          │ 111            │ 7.77  │ 118.77          │
│ FR-107          │ 72             │ 5.04  │ 77.04           │
│ FR-85           │ 74             │ 5.18  │ 79.18           │
│ OR-249          │ 35             │ 2.45  │ 37.45           │
│ 22225           │ 18             │ 1.26  │ 19.26           │
│ FR-1            │ 11             │ 0.77  │ 11.77           │
│ FR-23           │ 9              │ 0.63  │ 9.63            │
│ OR-241          │ 30             │ 2.1   │ 32.1            │
│ FR-77           │ 84             │ 5.88  │ 89.88           │
│ FR-9            │ 34             │ 2.38  │ 36.38           │
│ FR-94           │ 40             │ 2.8   │ 42.8            │
│ FR-15           │ 34             │ 2.38  │ 36.38           │
│ OR-188          │ 29             │ 2.03  │ 31.03           │
│ OR-218          │ 39             │ 2.73  │ 41.73           │
│ OR-101          │ 28             │ 1.96  │ 29.96           │
│ OR-102          │ 28             │ 1.96  │ 29.96           │
│ OR-186          │ 46             │ 3.22  │ 49.22           │
│ FR-11           │ 107            │ 7.49  │ 114.49          │
│ OR-213          │ 269            │ 18.83 │ 287.83          │
│ OR-247          │ 463            │ 32.41 │ 495.41          │
│ FR-82           │ 74             │ 5.18  │ 79.18           │
│ FR-9            │ 32             │ 2.24  │ 34.24           │
│ FR-94           │ 51             │ 3.57  │ 54.57           │
│ OR-129          │ 113            │ 7.91  │ 120.91          │
│ OR-160          │ 19             │ 1.33  │ 20.33           │
│ AR-004          │ 11             │ 0.77  │ 11.77           │
│ FR-108          │ 34             │ 2.38  │ 36.38           │
│ FR-12           │ 21             │ 1.47  │ 22.47           │
│ FR-72           │ 35             │ 2.45  │ 37.45           │
│ FR-89           │ 55             │ 3.85  │ 58.85           │
│ OR-120          │ 10             │ 0.7   │ 10.7            │
│ AR-009          │ 27             │ 1.89  │ 28.89           │
│ FR-102          │ 21             │ 1.47  │ 22.47           │
│ FR-4            │ 35             │ 2.45  │ 37.45           │
│ 11679           │ 15             │ 1.05  │ 16.05           │
│ 21636           │ 19             │ 1.33  │ 20.33           │
│ 22225           │ 16             │ 1.12  │ 17.12           │
│ OR-128          │ 129            │ 9.03  │ 138.03          │
│ OR-193          │ 25             │ 1.75  │ 26.75           │
│ FR-17           │ 425            │ 29.75 │ 454.75          │
│ FR-29           │ 128            │ 8.96  │ 136.96          │
│ OR-214          │ 222            │ 15.54 │ 237.54          │
│ OR-247          │ 612            │ 42.84 │ 654.84          │
│ FR-3            │ 63             │ 4.41  │ 67.41           │
│ FR-7            │ 41             │ 2.87  │ 43.87           │
│ OR-172          │ 38             │ 2.66  │ 40.66           │
│ OR-174          │ 42             │ 2.94  │ 44.94           │
│ 21636           │ 26             │ 1.82  │ 27.82           │
│ FR-47           │ 63             │ 4.41  │ 67.41           │
│ OR-165          │ 13             │ 0.91  │ 13.91           │
│ OR-181          │ 46             │ 3.22  │ 49.22           │
│ OR-225          │ 82             │ 5.74  │ 87.74           │
│ 30310           │ 16             │ 1.12  │ 17.12           │
│ FR-1            │ 9              │ 0.63  │ 9.63            │
│ OR-147          │ 13             │ 0.91  │ 13.91           │
│ OR-203          │ 13             │ 0.91  │ 13.91           │
│ OR-99           │ 28             │ 1.96  │ 29.96           │
│ FR-105          │ 74             │ 5.18  │ 79.18           │
│ FR-57           │ 211            │ 14.77 │ 225.77          │
│ OR-176          │ 48             │ 3.36  │ 51.36           │
│ 11679           │ 19             │ 1.33  │ 20.33           │
│ 21636           │ 16             │ 1.12  │ 17.12           │
│ 22225           │ 15             │ 1.05  │ 16.05           │
│ 30310           │ 18             │ 1.26  │ 19.26           │
│ AR-001          │ 5              │ 0.35  │ 5.35            │
│ AR-002          │ 9              │ 0.63  │ 9.63            │
│ AR-003          │ 6              │ 0.42  │ 6.42            │
│ AR-004          │ 6              │ 0.42  │ 6.42            │
│ AR-005          │ 4              │ 0.28  │ 4.28            │
│ AR-006          │ 2              │ 0.14  │ 2.14            │
│ AR-007          │ 10             │ 0.7   │ 10.7            │
│ AR-008          │ 6              │ 0.42  │ 6.42            │
│ AR-009          │ 7              │ 0.49  │ 7.49            │
│ AR-010          │ 5              │ 0.35  │ 5.35            │
│ FR-1            │ 11             │ 0.77  │ 11.77           │
│ FR-10           │ 15             │ 1.05  │ 16.05           │
│ FR-100          │ 20             │ 1.4   │ 21.4            │
│ FR-101          │ 18             │ 1.26  │ 19.26           │
│ FR-102          │ 19             │ 1.33  │ 20.33           │
│ FR-103          │ 26             │ 1.82  │ 27.82           │
│ OR-234          │ 114            │ 7.98  │ 121.98          │
│ OR-236          │ 94             │ 6.58  │ 100.58          │
│ OR-237          │ 69             │ 4.83  │ 73.83           │
│ OR-204          │ 60             │ 4.2   │ 64.2            │
│ OR-205          │ 20             │ 1.4   │ 21.4            │
│ OR-206          │ 10             │ 0.7   │ 10.7            │
│ OR-225          │ 22             │ 1.54  │ 23.54           │
│ OR-226          │ 53             │ 3.71  │ 56.71           │
│ OR-227          │ 108            │ 7.56  │ 115.56          │
│ OR-209          │ 60             │ 4.2   │ 64.2            │
│ OR-210          │ 119            │ 8.33  │ 127.33          │
│ OR-211          │ 129            │ 9.03  │ 138.03          │
│ FR-2            │ 8              │ 0.56  │ 8.56            │
│ FR-85           │ 71             │ 4.97  │ 75.97           │
│ FR-86           │ 13             │ 0.91  │ 13.91           │
│ OR-116          │ 13             │ 0.91  │ 13.91           │
│ 11679           │ 17             │ 1.19  │ 18.19           │
│ FR-100          │ 55             │ 3.85  │ 58.85           │
│ FR-18           │ 9              │ 0.63  │ 9.63            │
│ FR-79           │ 25             │ 1.75  │ 26.75           │
│ OR-116          │ 15             │ 1.05  │ 16.05           │
│ OR-123          │ 8              │ 0.56  │ 8.56            │
│ OR-168          │ 12             │ 0.84  │ 12.84           │
│ OR-115          │ 16             │ 1.12  │ 17.12           │
│ OR-213          │ 268            │ 18.76 │ 286.76          │
│ OR-227          │ 70             │ 4.9   │ 74.9            │
│ OR-243          │ 66             │ 4.62  │ 70.62           │
│ OR-247          │ 463            │ 32.41 │ 495.41          │
│ OR-129          │ 116            │ 8.12  │ 124.12          │
│ OR-130          │ 28             │ 1.96  │ 29.96           │
│ OR-179          │ 7              │ 0.49  │ 7.49            │
│ OR-196          │ 13             │ 0.91  │ 13.91           │
│ OR-207          │ 8              │ 0.56  │ 8.56            │
│ OR-250          │ 13             │ 0.91  │ 13.91           │
│ FR-69           │ 97             │ 6.79  │ 103.79          │
│ FR-81           │ 52             │ 3.64  │ 55.64           │
│ FR-84           │ 15             │ 1.05  │ 16.05           │
│ FR-94           │ 15             │ 1.05  │ 16.05           │
│ OR-102          │ 83             │ 5.81  │ 88.81           │
│ OR-139          │ 84             │ 5.88  │ 89.88           │
│ OR-172          │ 84             │ 5.88  │ 89.88           │
│ OR-177          │ 165            │ 11.55 │ 176.55          │
│ FR-67           │ 85             │ 5.95  │ 90.95           │
│ OR-227          │ 98             │ 6.86  │ 104.86          │
│ OR-247          │ 50             │ 3.5   │ 53.5            │
│ AR-006          │ 61             │ 4.27  │ 65.27           │
│ FR-87           │ 46             │ 3.22  │ 49.22           │
│ OR-157          │ 56             │ 3.92  │ 59.92           │
│ AR-009          │ 251            │ 17.57 │ 268.57          │
│ FR-79           │ 62             │ 4.34  │ 66.34           │
│ FR-87           │ 46             │ 3.22  │ 49.22           │
│ FR-94           │ 44             │ 3.08  │ 47.08           │
│ OR-196          │ 35             │ 2.45  │ 37.45           │
│ 22225           │ 46             │ 3.22  │ 49.22           │
│ 30310           │ 27             │ 1.89  │ 28.89           │
│ FR-53           │ 33             │ 2.31  │ 35.31           │
│ FR-85           │ 126            │ 8.82  │ 134.82          │
│ OR-157          │ 52             │ 3.64  │ 55.64           │
│ OR-208          │ 34             │ 2.38  │ 36.38           │
│ OR-240          │ 56             │ 3.92  │ 59.92           │
│ FR-11           │ 140            │ 9.8   │ 149.8           │
│ FR-36           │ 56             │ 3.92  │ 59.92           │
│ OR-136          │ 93             │ 6.51  │ 99.51           │
│ OR-208          │ 34             │ 2.38  │ 36.38           │
│ OR-227          │ 98             │ 6.86  │ 104.86          │
│ OR-208          │ 34             │ 2.38  │ 36.38           │
│ FR-108          │ 35             │ 2.45  │ 37.45           │
│ FR-3            │ 22             │ 1.54  │ 23.54           │
│ FR-42           │ 20             │ 1.4   │ 21.4            │
│ FR-66           │ 54             │ 3.78  │ 57.78           │
│ FR-87           │ 26             │ 1.82  │ 27.82           │
│ OR-157          │ 18             │ 1.26  │ 19.26           │
│ AR-001          │ 20             │ 1.4   │ 21.4            │
│ AR-002          │ 11             │ 0.77  │ 11.77           │
│ AR-003          │ 13             │ 0.91  │ 13.91           │
│ FR-100          │ 63             │ 4.41  │ 67.41           │
│ FR-101          │ 27             │ 1.89  │ 28.89           │
│ FR-102          │ 53             │ 3.71  │ 56.71           │
│ FR-108          │ 35             │ 2.45  │ 37.45           │
│ FR-11           │ 120            │ 8.4   │ 128.4           │
│ FR-12           │ 51             │ 3.57  │ 54.57           │
│ FR-54           │ 34             │ 2.38  │ 36.38           │
│ FR-58           │ 62             │ 4.34  │ 66.34           │
│ FR-60           │ 35             │ 2.45  │ 37.45           │
│ 11679           │ 26             │ 1.82  │ 27.82           │
│ FR-11           │ 133            │ 9.31  │ 142.31          │
│ FR-4            │ 108            │ 7.56  │ 115.56          │
│ FR-10           │ 16             │ 1.12  │ 17.12           │
│ FR-75           │ 38             │ 2.66  │ 40.66           │
│ FR-82           │ 75             │ 5.25  │ 80.25           │
│ FR-43           │ 14             │ 0.98  │ 14.98           │
│ FR-6            │ 23             │ 1.61  │ 24.61           │
│ FR-71           │ 32             │ 2.24  │ 34.24           │
│ FR-90           │ 74             │ 5.18  │ 79.18           │
│ FR-41           │ 20             │ 1.4   │ 21.4            │
│ FR-54           │ 23             │ 1.61  │ 24.61           │
│ OR-156          │ 20             │ 1.4   │ 21.4            │
│ FR-33           │ 22             │ 1.54  │ 23.54           │
│ FR-56           │ 24             │ 1.68  │ 25.68           │
│ FR-60           │ 40             │ 2.8   │ 42.8            │
│ FR-8            │ 24             │ 1.68  │ 25.68           │
│ FR-85           │ 76             │ 5.32  │ 81.32           │
│ OR-157          │ 25             │ 1.75  │ 26.75           │
│ OR-227          │ 94             │ 6.58  │ 100.58          │
│ FR-87           │ 42             │ 2.94  │ 44.94           │
│ FR-94           │ 49             │ 3.43  │ 52.43           │
│ AR-006          │ 51             │ 3.57  │ 54.57           │
│ AR-009          │ 160            │ 11.2  │ 171.2           │
│ 22225           │ 44             │ 3.08  │ 47.08           │
│ 30310           │ 35             │ 2.45  │ 37.45           │
│ FR-53           │ 20             │ 1.4   │ 21.4            │
│ OR-208          │ 56             │ 3.92  │ 59.92           │
│ FR-85           │ 79             │ 5.53  │ 84.53           │
│ OR-157          │ 123            │ 8.61  │ 131.61          │
│ OR-227          │ 85             │ 5.95  │ 90.95           │
│ OR-240          │ 33             │ 2.31  │ 35.31           │
│ AR-009          │ 232            │ 16.24 │ 248.24          │
│ OR-136          │ 65             │ 4.55  │ 69.55           │
│ 30310           │ 155            │ 10.85 │ 165.85          │
│ FR-11           │ 115            │ 8.05  │ 123.05          │
│ FR-53           │ 61             │ 4.27  │ 65.27           │
│ OR-208          │ 63             │ 4.41  │ 67.41           │
│ FR-22           │ 12             │ 0.84  │ 12.84           │
│ FR-36           │ 21             │ 1.47  │ 22.47           │
│ FR-45           │ 22             │ 1.54  │ 23.54           │
│ OR-104          │ 30             │ 2.1   │ 32.1            │
│ OR-119          │ 15             │ 1.05  │ 16.05           │
│ OR-125          │ 8              │ 0.56  │ 8.56            │
│ OR-130          │ 20             │ 1.4   │ 21.4            │
│ AR-010          │ 7              │ 0.49  │ 7.49            │
│ FR-1            │ 21             │ 1.47  │ 22.47           │
│ FR-16           │ 46             │ 3.22  │ 49.22           │
│ 21636           │ 19             │ 1.33  │ 20.33           │
│ AR-001          │ 33             │ 2.31  │ 35.31           │
│ AR-005          │ 19             │ 1.33  │ 20.33           │
│ FR-33           │ 21             │ 1.47  │ 22.47           │
│ OR-200          │ 14             │ 0.98  │ 14.98           │
│ FR-78           │ 17             │ 1.19  │ 18.19           │
│ FR-80           │ 33             │ 2.31  │ 35.31           │
│ OR-146          │ 21             │ 1.47  │ 22.47           │
│ OR-179          │ 10             │ 0.7   │ 10.7            │
│ AR-004          │ 16             │ 1.12  │ 17.12           │
│ OR-150          │ 20             │ 1.4   │ 21.4            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
│ FR-67           │ 80             │ 5.6   │ 85.6            │
└─────────────────┴────────────────┴───────┴─────────────────┘
**/
-- La misma información que en la pregunta anterior, pero agrupada por código de producto.
select codigo_producto, SUM(precio_unidad + cantidad) as "Base imponible", SUM((precio_unidad + cantidad) * 0.07) as "IGIC", SUM((precio_unidad + cantidad) + ((precio_unidad + cantidad) * 0.07)) as "Total facturado" from detalle_pedido 
group by codigo_producto;
/**
┌─────────────────┬────────────────┬────────┬─────────────────┐
│ codigo_producto │ Base imponible │  IGIC  │ Total facturado │
├─────────────────┼────────────────┼────────┼─────────────────┤
│ 11679           │ 143            │ 10.01  │ 153.01          │
│ 21636           │ 125            │ 8.75   │ 133.75          │
│ 22225           │ 172            │ 12.04  │ 184.04          │
│ 30310           │ 316            │ 22.12  │ 338.12          │
│ AR-001          │ 139            │ 9.73   │ 148.73          │
│ AR-002          │ 131            │ 9.17   │ 140.17          │
│ AR-003          │ 19             │ 1.33   │ 20.33           │
│ AR-004          │ 33             │ 2.31   │ 35.31           │
│ AR-005          │ 23             │ 1.61   │ 24.61           │
│ AR-006          │ 295            │ 20.65  │ 315.65          │
│ AR-007          │ 10             │ 0.7    │ 10.7            │
│ AR-008          │ 457            │ 31.99  │ 488.99          │
│ AR-009          │ 968            │ 67.76  │ 1035.76         │
│ AR-010          │ 12             │ 0.84   │ 12.84           │
│ FR-1            │ 52             │ 3.64   │ 55.64           │
│ FR-10           │ 31             │ 2.17   │ 33.17           │
│ FR-100          │ 157            │ 10.99  │ 167.99          │
│ FR-101          │ 45             │ 3.15   │ 48.15           │
│ FR-102          │ 93             │ 6.51   │ 99.51           │
│ FR-103          │ 26             │ 1.82   │ 27.82           │
│ FR-105          │ 74             │ 5.18   │ 79.18           │
│ FR-106          │ 102            │ 7.14   │ 109.14          │
│ FR-107          │ 72             │ 5.04   │ 77.04           │
│ FR-108          │ 137            │ 9.59   │ 146.59          │
│ FR-11           │ 830            │ 58.1   │ 888.1           │
│ FR-12           │ 72             │ 5.04   │ 77.04           │
│ FR-13           │ 70             │ 4.9    │ 74.9            │
│ FR-15           │ 34             │ 2.38   │ 36.38           │
│ FR-16           │ 46             │ 3.22   │ 49.22           │
│ FR-17           │ 425            │ 29.75  │ 454.75          │
│ FR-18           │ 35             │ 2.45   │ 37.45           │
│ FR-2            │ 8              │ 0.56   │ 8.56            │
│ FR-22           │ 18             │ 1.26   │ 19.26           │
│ FR-23           │ 23             │ 1.61   │ 24.61           │
│ FR-29           │ 128            │ 8.96   │ 136.96          │
│ FR-3            │ 85             │ 5.95   │ 90.95           │
│ FR-31           │ 20             │ 1.4    │ 21.4            │
│ FR-33           │ 43             │ 3.01   │ 46.01           │
│ FR-34           │ 50             │ 3.5    │ 53.5            │
│ FR-36           │ 96             │ 6.72   │ 102.72          │
│ FR-37           │ 14             │ 0.98   │ 14.98           │
│ FR-4            │ 175            │ 12.25  │ 187.25          │
│ FR-40           │ 66             │ 4.62   │ 70.62           │
│ FR-41           │ 20             │ 1.4    │ 21.4            │
│ FR-42           │ 20             │ 1.4    │ 21.4            │
│ FR-43           │ 14             │ 0.98   │ 14.98           │
│ FR-45           │ 22             │ 1.54   │ 23.54           │
│ FR-47           │ 63             │ 4.41   │ 67.41           │
│ FR-48           │ 129            │ 9.03   │ 138.03          │
│ FR-53           │ 125            │ 8.75   │ 133.75          │
│ FR-54           │ 57             │ 3.99   │ 60.99           │
│ FR-56           │ 24             │ 1.68   │ 25.68           │
│ FR-57           │ 211            │ 14.77  │ 225.77          │
│ FR-58           │ 62             │ 4.34   │ 66.34           │
│ FR-6            │ 23             │ 1.61   │ 24.61           │
│ FR-60           │ 75             │ 5.25   │ 80.25           │
│ FR-64           │ 27             │ 1.89   │ 28.89           │
│ FR-66           │ 54             │ 3.78   │ 57.78           │
│ FR-67           │ 2245           │ 157.15 │ 2402.15         │
│ FR-69           │ 203            │ 14.21  │ 217.21          │
│ FR-7            │ 41             │ 2.87   │ 43.87           │
│ FR-71           │ 32             │ 2.24   │ 34.24           │
│ FR-72           │ 35             │ 2.45   │ 37.45           │
│ FR-75           │ 71             │ 4.97   │ 75.97           │
│ FR-77           │ 84             │ 5.88   │ 89.88           │
│ FR-78           │ 17             │ 1.19   │ 18.19           │
│ FR-79           │ 87             │ 6.09   │ 93.09           │
│ FR-8            │ 24             │ 1.68   │ 25.68           │
│ FR-80           │ 33             │ 2.31   │ 35.31           │
│ FR-81           │ 52             │ 3.64   │ 55.64           │
│ FR-82           │ 224            │ 15.68  │ 239.68          │
│ FR-84           │ 50             │ 3.5    │ 53.5            │
│ FR-85           │ 426            │ 29.82  │ 455.82          │
│ FR-86           │ 13             │ 0.91   │ 13.91           │
│ FR-87           │ 160            │ 11.2   │ 171.2           │
│ FR-89           │ 55             │ 3.85   │ 58.85           │
│ FR-9            │ 66             │ 4.62   │ 70.62           │
│ FR-90           │ 74             │ 5.18   │ 79.18           │
│ FR-91           │ 105            │ 7.35   │ 112.35          │
│ FR-94           │ 199            │ 13.93  │ 212.93          │
│ OR-101          │ 36             │ 2.52   │ 38.52           │
│ OR-102          │ 111            │ 7.77   │ 118.77          │
│ OR-104          │ 30             │ 2.1    │ 32.1            │
│ OR-115          │ 16             │ 1.12   │ 17.12           │
│ OR-116          │ 28             │ 1.96   │ 29.96           │
│ OR-119          │ 15             │ 1.05   │ 16.05           │
│ OR-120          │ 10             │ 0.7    │ 10.7            │
│ OR-122          │ 37             │ 2.59   │ 39.59           │
│ OR-123          │ 24             │ 1.68   │ 25.68           │
│ OR-125          │ 8              │ 0.56   │ 8.56            │
│ OR-127          │ 44             │ 3.08   │ 47.08           │
│ OR-128          │ 129            │ 9.03   │ 138.03          │
│ OR-129          │ 229            │ 16.03  │ 245.03          │
│ OR-130          │ 48             │ 3.36   │ 51.36           │
│ OR-136          │ 181            │ 12.67  │ 193.67          │
│ OR-139          │ 84             │ 5.88   │ 89.88           │
│ OR-140          │ 54             │ 3.78   │ 57.78           │
│ OR-141          │ 54             │ 3.78   │ 57.78           │
│ OR-146          │ 21             │ 1.47   │ 22.47           │
│ OR-147          │ 13             │ 0.91   │ 13.91           │
│ OR-150          │ 20             │ 1.4    │ 21.4            │
│ OR-152          │ 9              │ 0.63   │ 9.63            │
│ OR-155          │ 10             │ 0.7    │ 10.7            │
│ OR-156          │ 62             │ 4.34   │ 66.34           │
│ OR-157          │ 322            │ 22.54  │ 344.54          │
│ OR-159          │ 34             │ 2.38   │ 36.38           │
│ OR-160          │ 19             │ 1.33   │ 20.33           │
│ OR-165          │ 13             │ 0.91   │ 13.91           │
│ OR-168          │ 12             │ 0.84   │ 12.84           │
│ OR-172          │ 122            │ 8.54   │ 130.54          │
│ OR-174          │ 42             │ 2.94   │ 44.94           │
│ OR-176          │ 48             │ 3.36   │ 51.36           │
│ OR-177          │ 165            │ 11.55  │ 176.55          │
│ OR-179          │ 17             │ 1.19   │ 18.19           │
│ OR-181          │ 46             │ 3.22   │ 49.22           │
│ OR-186          │ 46             │ 3.22   │ 49.22           │
│ OR-188          │ 29             │ 2.03   │ 31.03           │
│ OR-193          │ 25             │ 1.75   │ 26.75           │
│ OR-196          │ 48             │ 3.36   │ 51.36           │
│ OR-200          │ 14             │ 0.98   │ 14.98           │
│ OR-203          │ 32             │ 2.24   │ 34.24           │
│ OR-204          │ 60             │ 4.2    │ 64.2            │
│ OR-205          │ 20             │ 1.4    │ 21.4            │
│ OR-206          │ 10             │ 0.7    │ 10.7            │
│ OR-207          │ 8              │ 0.56   │ 8.56            │
│ OR-208          │ 245            │ 17.15  │ 262.15          │
│ OR-209          │ 60             │ 4.2    │ 64.2            │
│ OR-210          │ 119            │ 8.33   │ 127.33          │
│ OR-211          │ 129            │ 9.03   │ 138.03          │
│ OR-213          │ 833            │ 58.31  │ 891.31          │
│ OR-214          │ 222            │ 15.54  │ 237.54          │
│ OR-217          │ 80             │ 5.6    │ 85.6            │
│ OR-218          │ 88             │ 6.16   │ 94.16           │
│ OR-222          │ 80             │ 5.6    │ 85.6            │
│ OR-225          │ 104            │ 7.28   │ 111.28          │
│ OR-226          │ 53             │ 3.71   │ 56.71           │
│ OR-227          │ 684            │ 47.88  │ 731.88          │
│ OR-234          │ 183            │ 12.81  │ 195.81          │
│ OR-236          │ 94             │ 6.58   │ 100.58          │
│ OR-237          │ 69             │ 4.83   │ 73.83           │
│ OR-240          │ 96             │ 6.72   │ 102.72          │
│ OR-241          │ 64             │ 4.48   │ 68.48           │
│ OR-243          │ 66             │ 4.62   │ 70.62           │
│ OR-247          │ 2143           │ 150.01 │ 2293.01         │
│ OR-249          │ 35             │ 2.45   │ 37.45           │
│ OR-250          │ 13             │ 0.91   │ 13.91           │
│ OR-99           │ 65             │ 4.55   │ 69.55           │
└─────────────────┴────────────────┴────────┴─────────────────┘
**/
-- La misma información que en la pregunta anterior, pero agrupada por código de producto filtrada por los códigos que empiecen por OR.
select codigo_producto, SUM(precio_unidad + cantidad) as "Base imponible", SUM((precio_unidad + cantidad) * 0.07) as "IGIC", SUM((precio_unidad + cantidad) + ((precio_unidad + cantidad) * 0.07)) as "Total facturado" from detalle_pedido 
where codigo_producto regexp 'OR' group by codigo_producto;
/**
┌─────────────────┬────────────────┬────────┬─────────────────┐
│ codigo_producto │ Base imponible │  IGIC  │ Total facturado │
├─────────────────┼────────────────┼────────┼─────────────────┤
│ OR-101          │ 36             │ 2.52   │ 38.52           │
│ OR-102          │ 111            │ 7.77   │ 118.77          │
│ OR-104          │ 30             │ 2.1    │ 32.1            │
│ OR-115          │ 16             │ 1.12   │ 17.12           │
│ OR-116          │ 28             │ 1.96   │ 29.96           │
│ OR-119          │ 15             │ 1.05   │ 16.05           │
│ OR-120          │ 10             │ 0.7    │ 10.7            │
│ OR-122          │ 37             │ 2.59   │ 39.59           │
│ OR-123          │ 24             │ 1.68   │ 25.68           │
│ OR-125          │ 8              │ 0.56   │ 8.56            │
│ OR-127          │ 44             │ 3.08   │ 47.08           │
│ OR-128          │ 129            │ 9.03   │ 138.03          │
│ OR-129          │ 229            │ 16.03  │ 245.03          │
│ OR-130          │ 48             │ 3.36   │ 51.36           │
│ OR-136          │ 181            │ 12.67  │ 193.67          │
│ OR-139          │ 84             │ 5.88   │ 89.88           │
│ OR-140          │ 54             │ 3.78   │ 57.78           │
│ OR-141          │ 54             │ 3.78   │ 57.78           │
│ OR-146          │ 21             │ 1.47   │ 22.47           │
│ OR-147          │ 13             │ 0.91   │ 13.91           │
│ OR-150          │ 20             │ 1.4    │ 21.4            │
│ OR-152          │ 9              │ 0.63   │ 9.63            │
│ OR-155          │ 10             │ 0.7    │ 10.7            │
│ OR-156          │ 62             │ 4.34   │ 66.34           │
│ OR-157          │ 322            │ 22.54  │ 344.54          │
│ OR-159          │ 34             │ 2.38   │ 36.38           │
│ OR-160          │ 19             │ 1.33   │ 20.33           │
│ OR-165          │ 13             │ 0.91   │ 13.91           │
│ OR-168          │ 12             │ 0.84   │ 12.84           │
│ OR-172          │ 122            │ 8.54   │ 130.54          │
│ OR-174          │ 42             │ 2.94   │ 44.94           │
│ OR-176          │ 48             │ 3.36   │ 51.36           │
│ OR-177          │ 165            │ 11.55  │ 176.55          │
│ OR-179          │ 17             │ 1.19   │ 18.19           │
│ OR-181          │ 46             │ 3.22   │ 49.22           │
│ OR-186          │ 46             │ 3.22   │ 49.22           │
│ OR-188          │ 29             │ 2.03   │ 31.03           │
│ OR-193          │ 25             │ 1.75   │ 26.75           │
│ OR-196          │ 48             │ 3.36   │ 51.36           │
│ OR-200          │ 14             │ 0.98   │ 14.98           │
│ OR-203          │ 32             │ 2.24   │ 34.24           │
│ OR-204          │ 60             │ 4.2    │ 64.2            │
│ OR-205          │ 20             │ 1.4    │ 21.4            │
│ OR-206          │ 10             │ 0.7    │ 10.7            │
│ OR-207          │ 8              │ 0.56   │ 8.56            │
│ OR-208          │ 245            │ 17.15  │ 262.15          │
│ OR-209          │ 60             │ 4.2    │ 64.2            │
│ OR-210          │ 119            │ 8.33   │ 127.33          │
│ OR-211          │ 129            │ 9.03   │ 138.03          │
│ OR-213          │ 833            │ 58.31  │ 891.31          │
│ OR-214          │ 222            │ 15.54  │ 237.54          │
│ OR-217          │ 80             │ 5.6    │ 85.6            │
│ OR-218          │ 88             │ 6.16   │ 94.16           │
│ OR-222          │ 80             │ 5.6    │ 85.6            │
│ OR-225          │ 104            │ 7.28   │ 111.28          │
│ OR-226          │ 53             │ 3.71   │ 56.71           │
│ OR-227          │ 684            │ 47.88  │ 731.88          │
│ OR-234          │ 183            │ 12.81  │ 195.81          │
│ OR-236          │ 94             │ 6.58   │ 100.58          │
│ OR-237          │ 69             │ 4.83   │ 73.83           │
│ OR-240          │ 96             │ 6.72   │ 102.72          │
│ OR-241          │ 64             │ 4.48   │ 68.48           │
│ OR-243          │ 66             │ 4.62   │ 70.62           │
│ OR-247          │ 2143           │ 150.01 │ 2293.01         │
│ OR-249          │ 35             │ 2.45   │ 37.45           │
│ OR-250          │ 13             │ 0.91   │ 13.91           │
│ OR-99           │ 65             │ 4.55   │ 69.55           │
└─────────────────┴────────────────┴────────┴─────────────────┘
**/
-- Lista las ventas totales de los productos que hayan facturado más de 3000 euros. Se mostrará el nombre, unidades vendidas, total facturado y total facturado con impuestos (7% IGIC).
select p.nombre, dp.codigo_producto,
SUM(dp.precio_unidad + dp.cantidad) as "Facturado sin impuestos",
SUM((dp.precio_unidad + dp.cantidad) * 0.07) as "IGIC",
SUM((dp.precio_unidad + dp.cantidad) + ((dp.precio_unidad + dp.cantidad) * 0.07)) as "Total facturado"
from detalle_pedido as dp, producto as p
where p.codigo_producto=dp.codigo_producto 
group by dp.codigo_producto HAVING SUM(dp.precio_unidad + dp.cantidad + ((dp.precio_unidad + dp.cantidad) * 0.07)) > 3000;
/**
sin respuesta
**/
-- Muestre la suma total de todos los pagos que se realizaron para cada uno de los años que aparecen en la tabla pagos.
select strftime('%Y', fecha_pago) as "Año", SUM(total) as "Total pagos" from pago group by strftime('%Y', fecha_pago);
/**
┌──────┬─────────────┐
│ Año  │ Total pagos │
├──────┼─────────────┤
│ 2006 │ 24965       │
│ 2007 │ 85170       │
│ 2008 │ 29252       │
│ 2009 │ 58553       │
└──────┴─────────────┘
**/
```

## Subconsultas SQL

```sql
-- Devuelve el nombre del cliente con mayor límite de crédito.
select nombre_cliente from cliente where limite_credito=(select MAX(limite_credito) from cliente);
/**
┌────────────────┐
│ nombre_cliente │
├────────────────┤
│ Tendo Garden   │
└────────────────┘
**/
-- Devuelve el nombre del producto que tenga el precio de venta más caro.
select nombre from producto where precio_venta=(select MAX(precio_venta) from producto);
/**
┌───────────────────────┐
│        nombre         │
├───────────────────────┤
│ Trachycarpus Fortunei │
└───────────────────────┘
**/
-- Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta que tendrá que calcular cuál es el número total de unidades que se han vendido de cada producto a partir de los datos de la tabla detalle_pedido)
select p.nombre from producto as p INNER JOIN detalle_pedido as dp ON p.codigo_producto=dp.codigo_producto 
where p.codigo_producto=(select codigo_producto from detalle_pedido group by codigo_producto order by COUNT(cantidad) DESC LIMIT 1) group by p.codigo_producto;
/**
┌────────┐
│ nombre │
├────────┤
│ Cerezo │
└────────┘
**/
-- Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin utilizar INNER JOIN).
select c.* from cliente as c, pago as p where c.codigo_cliente=p.codigo_cliente and c.limite_credito>(select SUM(total) from pago group by codigo_cliente) group by c.codigo_cliente;
/**
┌────────────────┬────────────────────────────────┬─────────────────┬───────────────────┬─────────────┬─────────────┬────────────────────────────────────────────┬───────────────────┬──────────────────────────┬─────────────────────┬───────────┬───────────────┬────────────────────────────┬────────────────┐
│ codigo_cliente │         nombre_cliente         │ nombre_contacto │ apellido_contacto │  telefono   │     fax     │              linea_direccion1              │ linea_direccion2  │          ciudad          │       region        │   pais    │ codigo_postal │ codigo_empleado_rep_ventas │ limite_credito │
├────────────────┼────────────────────────────────┼─────────────────┼───────────────────┼─────────────┼─────────────┼────────────────────────────────────────────┼───────────────────┼──────────────────────────┼─────────────────────┼───────────┼───────────────┼────────────────────────────┼────────────────┤
│ 3              │ Gardening Associates           │ Anne            │ Wright            │ 5557410345  │ 5557410346  │ Wall-e Avenue                              │                   │ Miami                    │ Miami               │ USA       │ 24010         │ 19                         │ 6000           │
│ 4              │ Gerudo Valley                  │ Link            │ Flaute            │ 5552323129  │ 5552323128  │ Oaks Avenue nº22                           │                   │ New York                 │                     │ USA       │ 85495         │ 22                         │ 12000          │
│ 5              │ Tendo Garden                   │ Akane           │ Tendo             │ 55591233210 │ 55591233211 │ Null Street nº69                           │                   │ Miami                    │                     │ USA       │ 696969        │ 22                         │ 600000         │
│ 7              │ Beragua                        │ Jose            │ Bermejo           │ 654987321   │ 916549872   │ C/pintor segundo                           │ Getafe            │ Madrid                   │ Madrid              │ Spain     │ 28942         │ 11                         │ 20000          │
│ 9              │ Naturagua                      │ Guillermo       │ Rengifo           │ 689234750   │ 916428956   │ C/majadahonda                              │ Boadilla          │ Madrid                   │ Madrid              │ Spain     │ 28947         │ 11                         │ 32000          │
│ 13             │ Camunas Jardines S.L.          │ Pedro           │ Camunas           │ 34914873241 │ 34914871541 │ C/Virgenes 45                              │ C/Princesas 2 1ºB │ San Lorenzo del Escorial │ Madrid              │ Spain     │ 28145         │ 8                          │ 16481          │
│ 14             │ Dardena S.A.                   │ Juan            │ Rodriguez         │ 34912453217 │ 34912484764 │ C/Nueva York 74                            │                   │ Madrid                   │ Madrid              │ Spain     │ 28003         │ 8                          │ 321000         │
│ 15             │ Jardin de Flores               │ Javier          │ Villar            │ 654865643   │ 914538776   │ C/ Oña 34                                  │                   │ Madrid                   │ Madrid              │ Spain     │ 28950         │ 30                         │ 40000          │
│ 19             │ Golf S.A.                      │ Luis            │ Martinez          │ 916458762   │ 912354475   │ C/Estancado                                │                   │ Santa cruz de Tenerife   │ Islas Canarias      │ Spain     │ 38297         │ 12                         │ 30000          │
│ 23             │ Sotogrande                     │ Maria           │ Santillana        │ 915576622   │ 914825645   │ C/Paseo del Parque                         │                   │ Sotogrande               │ Cadiz               │ Spain     │ 11310         │ 12                         │ 60000          │
│ 26             │ Jardines y Mansiones Cactus SL │ Eva María       │ Sánchez           │ 916877445   │ 914477777   │ Polígono Industrial Maspalomas, Nº52       │ Móstoles          │ Madrid                   │ Madrid              │ Spain     │ 29874         │ 9                          │ 76000          │
│ 27             │ Jardinerías Matías SL          │ Matías          │ San Martín        │ 916544147   │ 917897474   │ C/Francisco Arce, Nº44                     │ Bustarviejo       │ Madrid                   │ Madrid              │ Spain     │ 37845         │ 9                          │ 100500         │
│ 28             │ Agrojardin                     │ Benito          │ Lopez             │ 675432926   │ 916549264   │ C/Mar Caspio 43                            │                   │ Getafe                   │ Madrid              │ Spain     │ 28904         │ 30                         │ 8040           │
│ 30             │ Jardineria Sara                │ Sara            │ Marquez           │ 675124537   │ 912475843   │ C/Lima 1                                   │                   │ Fuenlabrada              │ Madrid              │ Spain     │ 27584         │ 5                          │ 7500           │
│ 35             │ Tutifruti S.A                  │ Jacob           │ Jones             │ 2 9261-2433 │ 2 9283-1695 │ level 24, St. Martins Tower.-31 Market St. │                   │ Sydney                   │ Nueva Gales del Sur │ Australia │ 2000          │ 31                         │ 10000          │
│ 38             │ El Jardin Viviente S.L         │ Justin          │ Smith             │ 2 8005-7161 │ 2 8005-7162 │ 176 Cumberland Street The rocks            │                   │ Sydney                   │ Nueva Gales del Sur │ Australia │ 2003          │ 31                         │ 8000           │
└────────────────┴────────────────────────────────┴─────────────────┴───────────────────┴─────────────┴─────────────┴────────────────────────────────────────────┴───────────────────┴──────────────────────────┴─────────────────────┴───────────┴───────────────┴────────────────────────────┴────────────────┘
**/
-- Devuelve el producto que más unidades tiene en stock.
select * from producto where cantidad_en_stock=(select MAX(cantidad_en_stock) from producto); -- Hay varios
/**
┌─────────────────┬─────────────────────────────────┬──────────┬─────────────┬───────────────────────────┬──────────────────────────────────────────────────────────────┬───────────────────┬──────────────┬──────────────────┐
│ codigo_producto │             nombre              │   gama   │ dimensiones │         proveedor         │                         descripcion                          │ cantidad_en_stock │ precio_venta │ precio_proveedor │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-23           │ Rosal copa                      │ Frutales │             │ Frutales Talavera S.A     │                                                              │ 400               │ 8            │ 6                │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-24           │ Albaricoquero Corbato           │ Frutales │             │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                 │          │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                 │          │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                 │          │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                 │          │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-25           │ Albaricoquero Moniqui           │ Frutales │             │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                 │          │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                 │          │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                 │          │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                 │          │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-26           │ Albaricoquero Kurrot            │ Frutales │             │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                 │          │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                 │          │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                 │          │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                 │          │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-27           │ Cerezo Burlat                   │ Frutales │             │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                 │          │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                 │          │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                 │          │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                 │          │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                 │          │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                 │          │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                 │          │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                 │          │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                 │          │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-28           │ Cerezo Picota                   │ Frutales │             │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                 │          │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                 │          │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                 │          │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                 │          │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                 │          │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                 │          │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                 │          │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                 │          │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                 │          │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-29           │ Cerezo Napoleón                 │ Frutales │             │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                 │          │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                 │          │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                 │          │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                 │          │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                 │          │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                 │          │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                 │          │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                 │          │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                 │          │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-30           │ Ciruelo R. Claudia Verde        │ Frutales │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                 │          │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                 │          │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                 │          │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-31           │ Ciruelo Santa Rosa              │ Frutales │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                 │          │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                 │          │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                 │          │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-32           │ Ciruelo Golden Japan            │ Frutales │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                 │          │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                 │          │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                 │          │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-33           │ Ciruelo Friar                   │ Frutales │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                 │          │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                 │          │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                 │          │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-34           │ Ciruelo Reina C. De Ollins      │ Frutales │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                 │          │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                 │          │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                 │          │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-35           │ Ciruelo Claudia Negra           │ Frutales │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                 │          │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                 │          │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                 │          │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-36           │ Granado Mollar de Elche         │ Frutales │             │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 400               │ 9            │ 7                │
│                 │                                 │          │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                 │          │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                 │          │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                 │          │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                 │          │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                 │          │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                 │          │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-37           │ Higuera Napolitana              │ Frutales │             │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 400               │ 9            │ 7                │
│                 │                                 │          │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                 │          │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                 │          │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                 │          │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                 │          │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                 │          │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                 │          │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                 │          │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                 │          │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-38           │ Higuera Verdal                  │ Frutales │             │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 400               │ 9            │ 7                │
│                 │                                 │          │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                 │          │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                 │          │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                 │          │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                 │          │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                 │          │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                 │          │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                 │          │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                 │          │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-39           │ Higuera Breva                   │ Frutales │             │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 400               │ 9            │ 7                │
│                 │                                 │          │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                 │          │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                 │          │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                 │          │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                 │          │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                 │          │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                 │          │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                 │          │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                 │          │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-40           │ Manzano Starking Delicious      │ Frutales │             │ Frutales Talavera S.A     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │                   │              │                  │
│                 │                                 │          │             │                           │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │                   │              │                  │
│                 │                                 │          │             │                           │  color ceniciento verdoso sobre los ramos y escamosa y gris  │                   │              │                  │
│                 │                                 │          │             │                           │ parda sobre las partes viejas del árbol. Tiene una vida de u │                   │              │                  │
│                 │                                 │          │             │                           │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │                   │              │                  │
│                 │                                 │          │             │                           │ e el tallo, de color verde oscuro, a veces tendiendo a negru │                   │              │                  │
│                 │                                 │          │             │                           │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │                   │              │                  │
│                 │                                 │          │             │                           │ n una espina                                                 │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-41           │ Manzano Reineta                 │ Frutales │             │ Frutales Talavera S.A     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │                   │              │                  │
│                 │                                 │          │             │                           │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │                   │              │                  │
│                 │                                 │          │             │                           │  color ceniciento verdoso sobre los ramos y escamosa y gris  │                   │              │                  │
│                 │                                 │          │             │                           │ parda sobre las partes viejas del árbol. Tiene una vida de u │                   │              │                  │
│                 │                                 │          │             │                           │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │                   │              │                  │
│                 │                                 │          │             │                           │ e el tallo, de color verde oscuro, a veces tendiendo a negru │                   │              │                  │
│                 │                                 │          │             │                           │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │                   │              │                  │
│                 │                                 │          │             │                           │ n una espina                                                 │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-42           │ Manzano Golden Delicious        │ Frutales │             │ Frutales Talavera S.A     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │                   │              │                  │
│                 │                                 │          │             │                           │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │                   │              │                  │
│                 │                                 │          │             │                           │  color ceniciento verdoso sobre los ramos y escamosa y gris  │                   │              │                  │
│                 │                                 │          │             │                           │ parda sobre las partes viejas del árbol. Tiene una vida de u │                   │              │                  │
│                 │                                 │          │             │                           │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │                   │              │                  │
│                 │                                 │          │             │                           │ e el tallo, de color verde oscuro, a veces tendiendo a negru │                   │              │                  │
│                 │                                 │          │             │                           │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │                   │              │                  │
│                 │                                 │          │             │                           │ n una espina                                                 │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-43           │ Membrillero Gigante de Wranja   │ Frutales │             │ Frutales Talavera S.A     │                                                              │ 400               │ 8            │ 6                │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-44           │ Melocotonero Spring Crest       │ Frutales │             │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                 │          │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                 │          │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                 │          │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                 │          │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                 │          │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                 │          │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                 │          │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-45           │ Melocotonero Amarillo de Agosto │ Frutales │             │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                 │          │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                 │          │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                 │          │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                 │          │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                 │          │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                 │          │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                 │          │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-46           │ Melocotonero Federica           │ Frutales │             │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                 │          │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                 │          │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                 │          │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                 │          │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                 │          │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                 │          │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                 │          │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-47           │ Melocotonero Paraguayo          │ Frutales │             │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                 │          │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                 │          │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                 │          │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                 │          │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                 │          │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                 │          │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                 │          │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-48           │ Nogal Común                     │ Frutales │             │ Frutales Talavera S.A     │                                                              │ 400               │ 9            │ 7                │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-49           │ Parra Uva de Mesa               │ Frutales │             │ Frutales Talavera S.A     │                                                              │ 400               │ 8            │ 6                │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-50           │ Peral Castell                   │ Frutales │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                 │          │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                 │          │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                 │          │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                 │          │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                 │          │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-51           │ Peral Williams                  │ Frutales │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                 │          │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                 │          │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                 │          │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                 │          │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                 │          │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-52           │ Peral Conference                │ Frutales │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                 │          │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                 │          │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                 │          │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                 │          │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                 │          │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-53           │ Peral Blanq. de Aranjuez        │ Frutales │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                 │          │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                 │          │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                 │          │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                 │          │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                 │          │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-54           │ Níspero Tanaca                  │ Frutales │             │ Frutales Talavera S.A     │ Aunque originario del Sudeste de China, el níspero llegó a E │ 400               │ 9            │ 7                │
│                 │                                 │          │             │                           │ uropa procedente de Japón en el siglo XVIII como árbol ornam │                   │              │                  │
│                 │                                 │          │             │                           │ ental. En el siglo XIX se inició el consumo de los frutos en │                   │              │                  │
│                 │                                 │          │             │                           │  toda el área mediterránea, donde se adaptó muy bien a las z │                   │              │                  │
│                 │                                 │          │             │                           │ onas de cultivo de los cítricos.El cultivo intensivo comenzó │                   │              │                  │
│                 │                                 │          │             │                           │  a desarrollarse a finales de los años 60 y principios de lo │                   │              │                  │
│                 │                                 │          │             │                           │ s 70, cuando comenzaron a implantarse las variedades y técni │                   │              │                  │
│                 │                                 │          │             │                           │ cas de cultivo actualmente utilizadas.                       │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-55           │ Olivo Cipresino                 │ Frutales │             │ Frutales Talavera S.A     │ Existen dos hipótesis sobre el origen del olivo, una que pos │ 400               │ 8            │ 6                │
│                 │                                 │          │             │                           │ tula que proviene de las costas de Siria, Líbano e Israel y  │                   │              │                  │
│                 │                                 │          │             │                           │ otra que considera que lo considera originario de Asia menor │                   │              │                  │
│                 │                                 │          │             │                           │ . La llegada a Europa probablemente tuvo lugar de mano de lo │                   │              │                  │
│                 │                                 │          │             │                           │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │                   │              │                  │
│                 │                                 │          │             │                           │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │                   │              │                  │
│                 │                                 │          │             │                           │ icios de la presencia del olivo en las costas mediterráneas  │                   │              │                  │
│                 │                                 │          │             │                           │ españolas coinciden con el dominio romano, aunque fueron pos │                   │              │                  │
│                 │                                 │          │             │                           │ teriormente los árabes los que impulsaron su cultivo en Anda │                   │              │                  │
│                 │                                 │          │             │                           │ lucía, convirtiendo a España en el primer país productor de  │                   │              │                  │
│                 │                                 │          │             │                           │ aceite de oliva a nivel mundial.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-56           │ Nectarina                       │ Frutales │             │ Frutales Talavera S.A     │                                                              │ 400               │ 8            │ 6                │
├─────────────────┼─────────────────────────────────┼──────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-57           │ Kaki Rojo Brillante             │ Frutales │             │ NaranjasValencianas.com   │ De crecimiento algo lento los primeros años, llega a alcanza │ 400               │ 9            │ 7                │
│                 │                                 │          │             │                           │ r hasta doce metros de altura o más, aunque en cultivo se pr │                   │              │                  │
│                 │                                 │          │             │                           │ efiere algo más bajo (5-6). Tronco corto y copa extendida. R │                   │              │                  │
│                 │                                 │          │             │                           │ amifica muy poco debido a la dominancia apical. Porte más o  │                   │              │                  │
│                 │                                 │          │             │                           │ menos piramidal, aunque con la edad se hace más globoso.     │                   │              │                  │
└─────────────────┴─────────────────────────────────┴──────────┴─────────────┴───────────────────────────┴──────────────────────────────────────────────────────────────┴───────────────────┴──────────────┴──────────────────┘
**/
-- Devuelve el producto que menos unidades tiene en stock.
select * from producto where cantidad_en_stock=(select MIN(cantidad_en_stock) from producto);
/**
┌─────────────────┬───────────────┬──────────────┬─────────────┬──────────────────┬─────────────┬───────────────────┬──────────────┬──────────────────┐
│ codigo_producto │    nombre     │     gama     │ dimensiones │    proveedor     │ descripcion │ cantidad_en_stock │ precio_venta │ precio_proveedor │
├─────────────────┼───────────────┼──────────────┼─────────────┼──────────────────┼─────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-214          │ Brahea Armata │ Ornamentales │ 45 - 60     │ Viveros EL OASIS │             │ 0                 │ 10           │ 8                │
└─────────────────┴───────────────┴──────────────┴─────────────┴──────────────────┴─────────────┴───────────────────┴──────────────┴──────────────────┘
**/
-- Devuelve el nombre, los apellidos y el email de los empleados que están a cargo de Alberto Soria.
select e.nombre, e.apellido1, e.apellido2, e.email from empleado as e, empleado as j where e.codigo_jefe=j.codigo_empleado and e.codigo_jefe=(select codigo_empleado from empleado where nombre='Alberto' and apellido1='Soria');
/**
┌─────────────┬────────────┬───────────┬───────────────────────────┐
│   nombre    │ apellido1  │ apellido2 │           email           │
├─────────────┼────────────┼───────────┼───────────────────────────┤
│ Felipe      │ Rosas      │ Marquez   │ frosas@jardineria.es      │
│ Juan Carlos │ Ortiz      │ Serrano   │ cortiz@jardineria.es      │
│ Carlos      │ Soria      │ Jimenez   │ csoria@jardineria.es      │
│ Emmanuel    │ Magaña     │ Perez     │ manu@jardineria.es        │
│ Francois    │ Fignon     │           │ ffignon@gardening.com     │
│ Michael     │ Bolton     │           │ mbolton@gardening.com     │
│ Hilary      │ Washington │           │ hwashington@gardening.com │
│ Nei         │ Nishikori  │           │ nnishikori@gardening.com  │
│ Amy         │ Johnson    │           │ ajohnson@gardening.com    │
│ Kevin       │ Fallmer    │           │ kfalmer@gardening.com     │
└─────────────┴────────────┴───────────┴───────────────────────────┘
**/
-- Devuelve el nombre del cliente con mayor límite de crédito.
select nombre from cliente where limite_credito=(select MAX(limite_credito) from cliente);
/**
┌────────────────┐
│ nombre_cliente │
├────────────────┤
│ Tendo Garden   │
└────────────────┘
**/
-- Devuelve el nombre del producto que tenga el precio de venta más caro.
select nombre from producto where precio_venta=(select MAX(precio_venta) from producto);
/**
┌───────────────────────┐
│        nombre         │
├───────────────────────┤
│ Trachycarpus Fortunei │
└───────────────────────┘
**/
-- Devuelve el producto que menos unidades tiene en stock.
select * from producto where cantidad_en_stock=(select MIN(cantidad_en_stock) from producto);
/**
┌─────────────────┬───────────────┬──────────────┬─────────────┬──────────────────┬─────────────┬───────────────────┬──────────────┬──────────────────┐
│ codigo_producto │    nombre     │     gama     │ dimensiones │    proveedor     │ descripcion │ cantidad_en_stock │ precio_venta │ precio_proveedor │
├─────────────────┼───────────────┼──────────────┼─────────────┼──────────────────┼─────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-214          │ Brahea Armata │ Ornamentales │ 45 - 60     │ Viveros EL OASIS │             │ 0                 │ 10           │ 8                │
└─────────────────┴───────────────┴──────────────┴─────────────┴──────────────────┴─────────────┴───────────────────┴──────────────┴──────────────────┘
**/
-- Devuelve el nombre, apellido1 y cargo de los empleados que no representen a ningún cliente.
select nombre, apellido1, puesto from empleado where codigo_empleado NOT IN (select codigo_empleado_rep_ventas from cliente);
/**
┌─────────────┬────────────┬───────────────────────┐
│   nombre    │ apellido1  │        puesto         │
├─────────────┼────────────┼───────────────────────┤
│ Marcos      │ Magaña     │ Director General      │
│ Ruben       │ López      │ Subdirector Marketing │
│ Alberto     │ Soria      │ Subdirector Ventas    │
│ Maria       │ Solís      │ Secretaria            │
│ Juan Carlos │ Ortiz      │ Representante Ventas  │
│ Carlos      │ Soria      │ Director Oficina      │
│ Hilario     │ Rodriguez  │ Representante Ventas  │
│ David       │ Palma      │ Representante Ventas  │
│ Oscar       │ Palma      │ Representante Ventas  │
│ Francois    │ Fignon     │ Director Oficina      │
│ Laurent     │ Serra      │ Representante Ventas  │
│ Hilary      │ Washington │ Director Oficina      │
│ Marcus      │ Paxton     │ Representante Ventas  │
│ Nei         │ Nishikori  │ Director Oficina      │
│ Narumi      │ Riko       │ Representante Ventas  │
│ Takuma      │ Nomura     │ Representante Ventas  │
│ Amy         │ Johnson    │ Director Oficina      │
│ Larry       │ Westfalls  │ Representante Ventas  │
│ John        │ Walton     │ Representante Ventas  │
│ Kevin       │ Fallmer    │ Director Oficina      │
└─────────────┴────────────┴───────────────────────┘
**/
-- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
select * from cliente where codigo_cliente NOT IN (select codigo_cliente from pago);
/**
┌────────────────┬─────────────────────────────┬─────────────────┬───────────────────┬────────────────┬────────────────┬──────────────────────────┬──────────────────┬──────────────────────┬─────────────┬────────────────┬───────────────┬────────────────────────────┬────────────────┐
│ codigo_cliente │       nombre_cliente        │ nombre_contacto │ apellido_contacto │    telefono    │      fax       │     linea_direccion1     │ linea_direccion2 │        ciudad        │   region    │      pais      │ codigo_postal │ codigo_empleado_rep_ventas │ limite_credito │
├────────────────┼─────────────────────────────┼─────────────────┼───────────────────┼────────────────┼────────────────┼──────────────────────────┼──────────────────┼──────────────────────┼─────────────┼────────────────┼───────────────┼────────────────────────────┼────────────────┤
│ 6              │ Lasas S.A.                  │ Antonio         │ Lasas             │ 34916540145    │ 34914851312    │ C/Leganes 15             │                  │ Fuenlabrada          │ Madrid      │ Spain          │ 28945         │ 8                          │ 154310         │
│ 8              │ Club Golf Puerta del hierro │ Paco            │ Lopez             │ 62456810       │ 919535678      │ C/sinesio delgado        │ Madrid           │ Madrid               │ Madrid      │ Spain          │ 28930         │ 11                         │ 40000          │
│ 10             │ DaraDistribuciones          │ David           │ Serrano           │ 675598001      │ 916421756      │ C/azores                 │ Fuenlabrada      │ Madrid               │ Madrid      │ Spain          │ 28946         │ 11                         │ 50000          │
│ 11             │ Madrileña de riegos         │ Jose            │ Tacaño            │ 655983045      │ 916689215      │ C/Lagañas                │ Fuenlabrada      │ Madrid               │ Madrid      │ Spain          │ 28943         │ 11                         │ 20000          │
│ 12             │ Lasas S.A.                  │ Antonio         │ Lasas             │ 34916540145    │ 34914851312    │ C/Leganes 15             │                  │ Fuenlabrada          │ Madrid      │ Spain          │ 28945         │ 8                          │ 154310         │
│ 17             │ Flowers, S.A                │ Beatriz         │ Fernandez         │ 698754159      │ 978453216      │ C/Luis Salquillo4        │                  │ Montornes del valles │ Barcelona   │ Spain          │ 24586         │ 5                          │ 3500           │
│ 18             │ Naturajardin                │ Victoria        │ Cruz              │ 612343529      │ 916548735      │ Plaza Magallón 15        │                  │ Madrid               │ Madrid      │ Spain          │ 28011         │ 30                         │ 5050           │
│ 20             │ Americh Golf Management SL  │ Mario           │ Suarez            │ 964493072      │ 964493063      │ C/Letardo                │                  │ Barcelona            │ Cataluña    │ Spain          │ 12320         │ 12                         │ 20000          │
│ 21             │ Aloha                       │ Cristian        │ Rodrigez          │ 916485852      │ 914489898      │ C/Roman 3                │                  │ Canarias             │ Canarias    │ Spain          │ 35488         │ 12                         │ 50000          │
│ 22             │ El Prat                     │ Francisco       │ Camacho           │ 916882323      │ 916493211      │ Avenida Tibidabo         │                  │ Barcelona            │ Cataluña    │ Spain          │ 12320         │ 12                         │ 30000          │
│ 24             │ Vivero Humanes              │ Federico        │ Gomez             │ 654987690      │ 916040875      │ C/Miguel Echegaray 54    │                  │ Humanes              │ Madrid      │ Spain          │ 28970         │ 30                         │ 7430           │
│ 25             │ Fuenla City                 │ Tony            │ Muñoz Mena        │ 675842139      │ 915483754      │ C/Callo 52               │                  │ Fuenlabrada          │ Madrid      │ Spain          │ 28574         │ 5                          │ 4500           │
│ 29             │ Top Campo                   │ Joseluis        │ Sanchez           │ 685746512      │ 974315924      │ C/Ibiza 32               │                  │ Humanes              │ Madrid      │ Spain          │ 28574         │ 5                          │ 5500           │
│ 31             │ Campohermoso                │ Luis            │ Jimenez           │ 645925376      │ 916159116      │ C/Peru 78                │                  │ Fuenlabrada          │ Madrid      │ Spain          │ 28945         │ 30                         │ 3250           │
│ 32             │ france telecom              │ FraÃ§ois        │ Toulou            │ (33)5120578961 │ (33)5120578961 │ 6 place d Alleray 15Ã¨me │                  │ Paris                │             │ France         │ 75010         │ 16                         │ 10000          │
│ 33             │ Musée du Louvre             │ Pierre          │ Delacroux         │ (33)0140205050 │ (33)0140205442 │ Quai du Louvre           │                  │ Paris                │             │ France         │ 75058         │ 16                         │ 30000          │
│ 36             │ Flores S.L.                 │ Antonio         │ Romero            │ 654352981      │ 685249700      │ Avenida España           │                  │ Madrid               │ Fuenlabrada │ Spain          │ 29643         │ 18                         │ 6000           │
│ 37             │ The Magic Garden            │ Richard         │ Mcain             │ 926523468      │ 9364875882     │ Lihgting Park            │                  │ London               │ London      │ United Kingdom │ 65930         │ 18                         │ 10000          │
└────────────────┴─────────────────────────────┴─────────────────┴───────────────────┴────────────────┴────────────────┴──────────────────────────┴──────────────────┴──────────────────────┴─────────────┴────────────────┴───────────────┴────────────────────────────┴────────────────┘
**/
-- Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.
select * from cliente where codigo_cliente IN (select codigo_cliente from pago);
/**
┌────────────────┬────────────────────────────────┬─────────────────┬───────────────────┬─────────────┬─────────────┬────────────────────────────────────────────┬───────────────────┬──────────────────────────┬─────────────────────┬───────────┬───────────────┬────────────────────────────┬────────────────┐
│ codigo_cliente │         nombre_cliente         │ nombre_contacto │ apellido_contacto │  telefono   │     fax     │              linea_direccion1              │ linea_direccion2  │          ciudad          │       region        │   pais    │ codigo_postal │ codigo_empleado_rep_ventas │ limite_credito │
├────────────────┼────────────────────────────────┼─────────────────┼───────────────────┼─────────────┼─────────────┼────────────────────────────────────────────┼───────────────────┼──────────────────────────┼─────────────────────┼───────────┼───────────────┼────────────────────────────┼────────────────┤
│ 1              │ GoldFish Garden                │ Daniel G        │ GoldFish          │ 5556901745  │ 5556901746  │ False Street 52 2 A                        │                   │ San Francisco            │                     │ USA       │ 24006         │ 19                         │ 3000           │
│ 3              │ Gardening Associates           │ Anne            │ Wright            │ 5557410345  │ 5557410346  │ Wall-e Avenue                              │                   │ Miami                    │ Miami               │ USA       │ 24010         │ 19                         │ 6000           │
│ 4              │ Gerudo Valley                  │ Link            │ Flaute            │ 5552323129  │ 5552323128  │ Oaks Avenue nº22                           │                   │ New York                 │                     │ USA       │ 85495         │ 22                         │ 12000          │
│ 5              │ Tendo Garden                   │ Akane           │ Tendo             │ 55591233210 │ 55591233211 │ Null Street nº69                           │                   │ Miami                    │                     │ USA       │ 696969        │ 22                         │ 600000         │
│ 7              │ Beragua                        │ Jose            │ Bermejo           │ 654987321   │ 916549872   │ C/pintor segundo                           │ Getafe            │ Madrid                   │ Madrid              │ Spain     │ 28942         │ 11                         │ 20000          │
│ 9              │ Naturagua                      │ Guillermo       │ Rengifo           │ 689234750   │ 916428956   │ C/majadahonda                              │ Boadilla          │ Madrid                   │ Madrid              │ Spain     │ 28947         │ 11                         │ 32000          │
│ 13             │ Camunas Jardines S.L.          │ Pedro           │ Camunas           │ 34914873241 │ 34914871541 │ C/Virgenes 45                              │ C/Princesas 2 1ºB │ San Lorenzo del Escorial │ Madrid              │ Spain     │ 28145         │ 8                          │ 16481          │
│ 14             │ Dardena S.A.                   │ Juan            │ Rodriguez         │ 34912453217 │ 34912484764 │ C/Nueva York 74                            │                   │ Madrid                   │ Madrid              │ Spain     │ 28003         │ 8                          │ 321000         │
│ 15             │ Jardin de Flores               │ Javier          │ Villar            │ 654865643   │ 914538776   │ C/ Oña 34                                  │                   │ Madrid                   │ Madrid              │ Spain     │ 28950         │ 30                         │ 40000          │
│ 16             │ Flores Marivi                  │ Maria           │ Rodriguez         │ 666555444   │ 912458657   │ C/Leganes24                                │                   │ Fuenlabrada              │ Madrid              │ Spain     │ 28945         │ 5                          │ 1500           │
│ 19             │ Golf S.A.                      │ Luis            │ Martinez          │ 916458762   │ 912354475   │ C/Estancado                                │                   │ Santa cruz de Tenerife   │ Islas Canarias      │ Spain     │ 38297         │ 12                         │ 30000          │
│ 23             │ Sotogrande                     │ Maria           │ Santillana        │ 915576622   │ 914825645   │ C/Paseo del Parque                         │                   │ Sotogrande               │ Cadiz               │ Spain     │ 11310         │ 12                         │ 60000          │
│ 26             │ Jardines y Mansiones Cactus SL │ Eva María       │ Sánchez           │ 916877445   │ 914477777   │ Polígono Industrial Maspalomas, Nº52       │ Móstoles          │ Madrid                   │ Madrid              │ Spain     │ 29874         │ 9                          │ 76000          │
│ 27             │ Jardinerías Matías SL          │ Matías          │ San Martín        │ 916544147   │ 917897474   │ C/Francisco Arce, Nº44                     │ Bustarviejo       │ Madrid                   │ Madrid              │ Spain     │ 37845         │ 9                          │ 100500         │
│ 28             │ Agrojardin                     │ Benito          │ Lopez             │ 675432926   │ 916549264   │ C/Mar Caspio 43                            │                   │ Getafe                   │ Madrid              │ Spain     │ 28904         │ 30                         │ 8040           │
│ 30             │ Jardineria Sara                │ Sara            │ Marquez           │ 675124537   │ 912475843   │ C/Lima 1                                   │                   │ Fuenlabrada              │ Madrid              │ Spain     │ 27584         │ 5                          │ 7500           │
│ 35             │ Tutifruti S.A                  │ Jacob           │ Jones             │ 2 9261-2433 │ 2 9283-1695 │ level 24, St. Martins Tower.-31 Market St. │                   │ Sydney                   │ Nueva Gales del Sur │ Australia │ 2000          │ 31                         │ 10000          │
│ 38             │ El Jardin Viviente S.L         │ Justin          │ Smith             │ 2 8005-7161 │ 2 8005-7162 │ 176 Cumberland Street The rocks            │                   │ Sydney                   │ Nueva Gales del Sur │ Australia │ 2003          │ 31                         │ 8000           │
└────────────────┴────────────────────────────────┴─────────────────┴───────────────────┴─────────────┴─────────────┴────────────────────────────────────────────┴───────────────────┴──────────────────────────┴─────────────────────┴───────────┴───────────────┴────────────────────────────┴────────────────┘
**/
-- Devuelve un listado de los productos que nunca han aparecido en un pedido.
select * from producto where codigo_producto NOT IN (select codigo_producto from detalle_pedido);
/**
┌─────────────────┬─────────────────────────────────────────────────────────────┬──────────────┬─────────────┬───────────────────────────┬──────────────────────────────────────────────────────────────┬───────────────────┬──────────────┬──────────────────┐
│ codigo_producto │                           nombre                            │     gama     │ dimensiones │         proveedor         │                         descripcion                          │ cantidad_en_stock │ precio_venta │ precio_proveedor │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-104          │ Olea-Olivos                                                 │ Frutales     │ 12/4        │ Frutales Talavera S.A     │ Existen dos hipótesis sobre el origen del olivo, una que pos │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │ tula que proviene de las costas de Siria, Líbano e Israel y  │                   │              │                  │
│                 │                                                             │              │             │                           │ otra que considera que lo considera originario de Asia menor │                   │              │                  │
│                 │                                                             │              │             │                           │ . La llegada a Europa probablemente tuvo lugar de mano de lo │                   │              │                  │
│                 │                                                             │              │             │                           │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │                   │              │                  │
│                 │                                                             │              │             │                           │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │                   │              │                  │
│                 │                                                             │              │             │                           │ icios de la presencia del olivo en las costas mediterráneas  │                   │              │                  │
│                 │                                                             │              │             │                           │ españolas coinciden con el dominio romano, aunque fueron pos │                   │              │                  │
│                 │                                                             │              │             │                           │ teriormente los árabes los que impulsaron su cultivo en Anda │                   │              │                  │
│                 │                                                             │              │             │                           │ lucía, convirtiendo a España en el primer país productor de  │                   │              │                  │
│                 │                                                             │              │             │                           │ aceite de oliva a nivel mundial.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-14           │ Calamondin Mini                                             │ Frutales     │             │ Frutales Talavera S.A     │ Se trata de un pequeño arbolito de copa densa, con tendencia │ 15                │ 10           │ 8                │
│                 │                                                             │              │             │                           │  a la verticalidad, inerme o con cortas espinas. Sus hojas s │                   │              │                  │
│                 │                                                             │              │             │                           │ on pequeñas, elípticas de 5-10 cm de longitud, con los pecío │                   │              │                  │
│                 │                                                             │              │             │                           │ los estrechamente alados.Posee 1 o 2 flores en situación axi │                   │              │                  │
│                 │                                                             │              │             │                           │ lar, al final de las ramillas.Sus frutos son muy pequeños (3 │                   │              │                  │
│                 │                                                             │              │             │                           │ -3,5 cm de diámetro), con pocas semillas, esféricos u ovales │                   │              │                  │
│                 │                                                             │              │             │                           │ , con la zona apical aplanada; corteza de color naranja-roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zo, muy fina y fácilmente separable de la pulpa, que es dulc │                   │              │                  │
│                 │                                                             │              │             │                           │ e, ácida y comestible..                                      │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-19           │ Camelia Blanco, Chrysler Rojo, Soraya Naranja,              │ Frutales     │             │ NaranjasValencianas.com   │                                                              │ 350               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-20           │ Landora Amarillo, Rose Gaujard bicolor blanco-rojo          │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 350               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-21           │ Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 350               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-24           │ Albaricoquero Corbato                                       │ Frutales     │             │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-25           │ Albaricoquero Moniqui                                       │ Frutales     │             │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-26           │ Albaricoquero Kurrot                                        │ Frutales     │             │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-27           │ Cerezo Burlat                                               │ Frutales     │             │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-28           │ Cerezo Picota                                               │ Frutales     │             │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-30           │ Ciruelo R. Claudia Verde                                    │ Frutales     │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-32           │ Ciruelo Golden Japan                                        │ Frutales     │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-35           │ Ciruelo Claudia Negra                                       │ Frutales     │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-38           │ Higuera Verdal                                              │ Frutales     │             │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 400               │ 9            │ 7                │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-39           │ Higuera Breva                                               │ Frutales     │             │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 400               │ 9            │ 7                │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-44           │ Melocotonero Spring Crest                                   │ Frutales     │             │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-46           │ Melocotonero Federica                                       │ Frutales     │             │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-49           │ Parra Uva de Mesa                                           │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 400               │ 8            │ 6                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-5            │ Mandarino -Plantón joven                                    │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 15                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-50           │ Peral Castell                                               │ Frutales     │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-51           │ Peral Williams                                              │ Frutales     │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-52           │ Peral Conference                                            │ Frutales     │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-55           │ Olivo Cipresino                                             │ Frutales     │             │ Frutales Talavera S.A     │ Existen dos hipótesis sobre el origen del olivo, una que pos │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ tula que proviene de las costas de Siria, Líbano e Israel y  │                   │              │                  │
│                 │                                                             │              │             │                           │ otra que considera que lo considera originario de Asia menor │                   │              │                  │
│                 │                                                             │              │             │                           │ . La llegada a Europa probablemente tuvo lugar de mano de lo │                   │              │                  │
│                 │                                                             │              │             │                           │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │                   │              │                  │
│                 │                                                             │              │             │                           │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │                   │              │                  │
│                 │                                                             │              │             │                           │ icios de la presencia del olivo en las costas mediterráneas  │                   │              │                  │
│                 │                                                             │              │             │                           │ españolas coinciden con el dominio romano, aunque fueron pos │                   │              │                  │
│                 │                                                             │              │             │                           │ teriormente los árabes los que impulsaron su cultivo en Anda │                   │              │                  │
│                 │                                                             │              │             │                           │ lucía, convirtiendo a España en el primer país productor de  │                   │              │                  │
│                 │                                                             │              │             │                           │ aceite de oliva a nivel mundial.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-59           │ Albaricoquero                                               │ Frutales     │ 10/12       │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 200               │ 22           │ 17               │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-61           │ Albaricoquero                                               │ Frutales     │ 14/16       │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 200               │ 49           │ 39               │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-62           │ Albaricoquero                                               │ Frutales     │ 16/18       │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 200               │ 70           │ 56               │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-63           │ Cerezo                                                      │ Frutales     │ 8/10        │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 300               │ 11           │ 8                │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-65           │ Cerezo                                                      │ Frutales     │ 12/14       │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 200               │ 32           │ 25               │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-68           │ Cerezo                                                      │ Frutales     │ 18/20       │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 50                │ 80           │ 64               │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-70           │ Ciruelo                                                     │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 50                │ 11           │ 8                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-73           │ Granado                                                     │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 50                │ 13           │ 10               │
│                 │                                                             │              │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                                             │              │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                                             │              │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                                             │              │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                                             │              │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                                             │              │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                                             │              │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-74           │ Granado                                                     │ Frutales     │ 10/12       │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                                             │              │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                                             │              │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                                             │              │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                                             │              │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                                             │              │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                                             │              │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-76           │ Granado                                                     │ Frutales     │ 14/16       │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                                             │              │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                                             │              │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                                             │              │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                                             │              │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                                             │              │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                                             │              │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-83           │ Higuera                                                     │ Frutales     │ 18/20       │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 50                │ 80           │ 64               │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-88           │ Manzano                                                     │ Frutales     │ 12/14       │ Frutales Talavera S.A     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │ 50                │ 32           │ 25               │
│                 │                                                             │              │             │                           │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │                   │              │                  │
│                 │                                                             │              │             │                           │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │                   │              │                  │
│                 │                                                             │              │             │                           │  color ceniciento verdoso sobre los ramos y escamosa y gris  │                   │              │                  │
│                 │                                                             │              │             │                           │ parda sobre las partes viejas del árbol. Tiene una vida de u │                   │              │                  │
│                 │                                                             │              │             │                           │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │                   │              │                  │
│                 │                                                             │              │             │                           │ e el tallo, de color verde oscuro, a veces tendiendo a negru │                   │              │                  │
│                 │                                                             │              │             │                           │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │                   │              │                  │
│                 │                                                             │              │             │                           │ n una espina                                                 │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-92           │ Melocotonero                                                │ Frutales     │ 8/10        │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 50                │ 11           │ 8                │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-93           │ Melocotonero                                                │ Frutales     │ 10/12       │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-95           │ Melocotonero                                                │ Frutales     │ 14/16       │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-96           │ Membrillero                                                 │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │ 50                │ 11           │ 8                │
│                 │                                                             │              │             │                           │ so y la corteza lisa, grisácea, que se desprende en escamas  │                   │              │                  │
│                 │                                                             │              │             │                           │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-97           │ Membrillero                                                 │ Frutales     │ 10/12       │ Frutales Talavera S.A     │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │ so y la corteza lisa, grisácea, que se desprende en escamas  │                   │              │                  │
│                 │                                                             │              │             │                           │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-98           │ Membrillero                                                 │ Frutales     │ 12/14       │ Frutales Talavera S.A     │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │ 50                │ 32           │ 25               │
│                 │                                                             │              │             │                           │ so y la corteza lisa, grisácea, que se desprende en escamas  │                   │              │                  │
│                 │                                                             │              │             │                           │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-99           │ Membrillero                                                 │ Frutales     │ 14/16       │ Frutales Talavera S.A     │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │ so y la corteza lisa, grisácea, que se desprende en escamas  │                   │              │                  │
│                 │                                                             │              │             │                           │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-001          │ Arbustos Mix Maceta                                         │ Ornamentales │ 40-60       │ Valencia Garden Service   │                                                              │ 25                │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-100          │ Mimosa Injerto CLASICA Dealbata                             │ Ornamentales │ 100-110     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 12           │ 9                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-103          │ Mimosa Semilla Bayleyana                                    │ Ornamentales │ 200-225     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 10           │ 8                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-105          │ Mimosa Semilla Espectabilis                                 │ Ornamentales │ 160-170     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 6            │ 4                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-106          │ Mimosa Semilla Longifolia                                   │ Ornamentales │ 200-225     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 10           │ 8                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-107          │ Mimosa Semilla Floribunda 4 estaciones                      │ Ornamentales │ 120-140     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 6            │ 4                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-108          │ Abelia Floribunda                                           │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 100               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-109          │ Callistemom (Mix)                                           │ Ornamentales │ 35-45       │ Viveros EL OASIS          │ Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y │ 100               │ 5            │ 4                │
│                 │                                                             │              │             │                           │  colgantes (de ahí lo de \"llorón\")..                       │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-110          │ Callistemom (Mix)                                           │ Ornamentales │ 40-60       │ Viveros EL OASIS          │ Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y │ 100               │ 2            │ 1                │
│                 │                                                             │              │             │                           │  colgantes (de ahí lo de \"llorón\")..                       │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-111          │ Corylus Avellana \"Contorta\"                               │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 100               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-112          │ Escallonia (Mix)                                            │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-113          │ Evonimus Emerald Gayeti                                     │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-114          │ Evonimus Pulchellus                                         │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-117          │ Hibiscus Syriacus  \"Helene\" -Blanco-C.rojo                │ Ornamentales │ 35-45       │ Viveros EL OASIS          │ Por su capacidad de soportar podas, pueden ser fácilmente mo │ 120               │ 7            │ 5                │
│                 │                                                             │              │             │                           │ ldeadas como bonsái en el transcurso de pocos años. Flores d │                   │              │                  │
│                 │                                                             │              │             │                           │ e muchos colores según la variedad, desde el blanco puro al  │                   │              │                  │
│                 │                                                             │              │             │                           │ rojo intenso, del amarillo al anaranjado. La flor apenas dur │                   │              │                  │
│                 │                                                             │              │             │                           │ a 1 día, pero continuamente aparecen nuevas y la floración s │                   │              │                  │
│                 │                                                             │              │             │                           │ e prolonga durante todo el periodo de crecimiento vegetativo │                   │              │                  │
│                 │                                                             │              │             │                           │ .                                                            │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-118          │ Hibiscus Syriacus \"Pink Giant\" Rosa                       │ Ornamentales │ 35-45       │ Viveros EL OASIS          │ Por su capacidad de soportar podas, pueden ser fácilmente mo │ 120               │ 7            │ 5                │
│                 │                                                             │              │             │                           │ ldeadas como bonsái en el transcurso de pocos años. Flores d │                   │              │                  │
│                 │                                                             │              │             │                           │ e muchos colores según la variedad, desde el blanco puro al  │                   │              │                  │
│                 │                                                             │              │             │                           │ rojo intenso, del amarillo al anaranjado. La flor apenas dur │                   │              │                  │
│                 │                                                             │              │             │                           │ a 1 día, pero continuamente aparecen nuevas y la floración s │                   │              │                  │
│                 │                                                             │              │             │                           │ e prolonga durante todo el periodo de crecimiento vegetativo │                   │              │                  │
│                 │                                                             │              │             │                           │ .                                                            │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-121          │ Lonicera Nitida \"Maigrum\"                                 │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-124          │ Prunus pisardii                                             │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-126          │ Weigelia \"Bristol Ruby\"                                   │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-131          │ Leptospermum formado PIRAMIDE                               │ Ornamentales │ 80-100      │ Viveros EL OASIS          │                                                              │ 50                │ 18           │ 14               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-132          │ Leptospermum COPA                                           │ Ornamentales │ 110/120     │ Viveros EL OASIS          │                                                              │ 50                │ 18           │ 14               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-133          │ Nerium oleander-CALIDAD \"GARDEN\"                          │ Ornamentales │ 40-45       │ Viveros EL OASIS          │                                                              │ 50                │ 2            │ 1                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-134          │ Nerium Oleander Arbusto GRANDE                              │ Ornamentales │ 160-200     │ Viveros EL OASIS          │                                                              │ 100               │ 38           │ 30               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-135          │ Nerium oleander COPA  Calibre 6/8                           │ Ornamentales │ 50-60       │ Viveros EL OASIS          │                                                              │ 100               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-137          │ ROSAL TREPADOR                                              │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-138          │ Camelia Blanco, Chrysler Rojo, Soraya Naranja,              │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-142          │ Solanum Jazminoide                                          │ Ornamentales │ 150-160     │ Viveros EL OASIS          │                                                              │ 100               │ 2            │ 1                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-143          │ Wisteria Sinensis  azul, rosa, blanca                       │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 9            │ 7                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-144          │ Wisteria Sinensis INJERTADAS DECÃ“                          │ Ornamentales │ 140-150     │ Viveros EL OASIS          │                                                              │ 100               │ 12           │ 9                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-145          │ Bougamvillea Sanderiana Tutor                               │ Ornamentales │ 80-100      │ Viveros EL OASIS          │                                                              │ 100               │ 2            │ 1                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-148          │ Bougamvillea Sanderiana Espaldera                           │ Ornamentales │ 45-50       │ Viveros EL OASIS          │                                                              │ 100               │ 7            │ 5                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-149          │ Bougamvillea Sanderiana Espaldera                           │ Ornamentales │ 140-150     │ Viveros EL OASIS          │                                                              │ 100               │ 17           │ 13               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-151          │ Bougamvillea Sanderiana, 3 tut. piramide                    │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-153          │ Expositor Árboles clima mediterráneo                        │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-154          │ Expositor Árboles borde del mar                             │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-158          │ Brachychiton Acerifolius                                    │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-161          │ Cassia Corimbosa                                            │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-162          │ Cassia Corimbosa                                            │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-163          │ Chitalpa Summer Bells                                       │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-164          │ Erytrina Kafra                                              │ Ornamentales │ 170-180     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-166          │ Eucalyptus Citriodora                                       │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-167          │ Eucalyptus Ficifolia                                        │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-169          │ Hibiscus Syriacus  Var. Injertadas 1 Tallo                  │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 12           │ 9                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-170          │ Lagunaria Patersonii                                        │ Ornamentales │ 140-150     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-171          │ Lagunaria Patersonii                                        │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-173          │ Morus Alba                                                  │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-175          │ Platanus Acerifolia                                         │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-178          │ Salix Babylonica  Pendula                                   │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-180          │ Tamarix  Ramosissima Pink Cascade                           │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-182          │ Tecoma Stands                                               │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-183          │ Tecoma Stands                                               │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-184          │ Tipuana Tipu                                                │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-185          │ Pleioblastus distichus-Bambú enano                          │ Ornamentales │ 15-20       │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-187          │ Sasa palmata                                                │ Ornamentales │ 40-45       │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-189          │ Phylostachys aurea                                          │ Ornamentales │ 180-200     │ Viveros EL OASIS          │                                                              │ 80                │ 22           │ 17               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-190          │ Phylostachys aurea                                          │ Ornamentales │ 250-300     │ Viveros EL OASIS          │                                                              │ 80                │ 32           │ 25               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-191          │ Phylostachys Bambusa Spectabilis                            │ Ornamentales │ 180-200     │ Viveros EL OASIS          │                                                              │ 80                │ 24           │ 19               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-192          │ Phylostachys biseti                                         │ Ornamentales │ 160-170     │ Viveros EL OASIS          │                                                              │ 80                │ 22           │ 17               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-194          │ Pseudosasa japonica (Metake)                                │ Ornamentales │ 225-250     │ Viveros EL OASIS          │                                                              │ 80                │ 20           │ 16               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-195          │ Pseudosasa japonica (Metake)                                │ Ornamentales │ 30-40       │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-197          │ Cedrus Deodara \"Feeling Blue\" Novedad                     │ Ornamentales │ rastrero    │ Viveros EL OASIS          │                                                              │ 80                │ 12           │ 9                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-198          │ Juniperus chinensis \"Blue Alps\"                           │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-199          │ Juniperus Chinensis Stricta                                 │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-201          │ Juniperus squamata \"Blue Star\"                            │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-202          │ Juniperus x media Phitzeriana verde                         │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-212          │ Bismarckia Nobilis                                          │ Ornamentales │ 200 - 220   │ Viveros EL OASIS          │                                                              │ 4                 │ 217          │ 173              │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-215          │ Brahea Armata                                               │ Ornamentales │ 120 - 140   │ Viveros EL OASIS          │                                                              │ 100               │ 112          │ 89               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-216          │ Brahea Edulis                                               │ Ornamentales │ 80 - 100    │ Viveros EL OASIS          │                                                              │ 100               │ 19           │ 15               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-219          │ Butia Capitata                                              │ Ornamentales │ 90 - 110    │ Viveros EL OASIS          │                                                              │ 100               │ 29           │ 23               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-220          │ Butia Capitata                                              │ Ornamentales │ 90 - 120    │ Viveros EL OASIS          │                                                              │ 100               │ 36           │ 28               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-221          │ Butia Capitata                                              │ Ornamentales │ 85 - 105    │ Viveros EL OASIS          │                                                              │ 100               │ 59           │ 47               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-223          │ Chamaerops Humilis                                          │ Ornamentales │ 40 - 45     │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-224          │ Chamaerops Humilis                                          │ Ornamentales │ 50 - 60     │ Viveros EL OASIS          │                                                              │ 100               │ 7            │ 5                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-228          │ Chamaerops Humilis \"Cerifera\"                             │ Ornamentales │ 70 - 80     │ Viveros EL OASIS          │                                                              │ 100               │ 32           │ 25               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-229          │ Chrysalidocarpus Lutescens -ARECA                           │ Ornamentales │ 130 - 150   │ Viveros EL OASIS          │                                                              │ 100               │ 22           │ 17               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-230          │ Cordyline Australis -DRACAENA                               │ Ornamentales │ 190 - 210   │ Viveros EL OASIS          │                                                              │ 100               │ 38           │ 30               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-231          │ Cycas Revoluta                                              │ Ornamentales │ 55 - 65     │ Viveros EL OASIS          │                                                              │ 100               │ 15           │ 12               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-232          │ Cycas Revoluta                                              │ Ornamentales │ 80 - 90     │ Viveros EL OASIS          │                                                              │ 100               │ 34           │ 27               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-233          │ Dracaena Drago                                              │ Ornamentales │ 60 - 70     │ Viveros EL OASIS          │                                                              │ 1                 │ 13           │ 10               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-235          │ Dracaena Drago                                              │ Ornamentales │ 150 - 175   │ Viveros EL OASIS          │                                                              │ 2                 │ 92           │ 73               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-238          │ Livistonia Decipiens                                        │ Ornamentales │ 90 - 110    │ Viveros EL OASIS          │                                                              │ 50                │ 19           │ 15               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-239          │ Livistonia Decipiens                                        │ Ornamentales │ 180 - 200   │ Viveros EL OASIS          │                                                              │ 50                │ 49           │ 39               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-242          │ Rhaphis Excelsa                                             │ Ornamentales │ 80 - 100    │ Viveros EL OASIS          │                                                              │ 50                │ 21           │ 16               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-244          │ Sabal Minor                                                 │ Ornamentales │ 60 - 75     │ Viveros EL OASIS          │                                                              │ 50                │ 11           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-245          │ Sabal Minor                                                 │ Ornamentales │ 120 - 140   │ Viveros EL OASIS          │                                                              │ 50                │ 34           │ 27               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-246          │ Trachycarpus Fortunei                                       │ Ornamentales │ 90 - 105    │ Viveros EL OASIS          │                                                              │ 50                │ 18           │ 14               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-248          │ Washingtonia Robusta                                        │ Ornamentales │ 60 - 70     │ Viveros EL OASIS          │                                                              │ 15                │ 3            │ 2                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-251          │ Zamia Furfuracaea                                           │ Ornamentales │ 90 - 110    │ Viveros EL OASIS          │                                                              │ 15                │ 168          │ 134              │
└─────────────────┴─────────────────────────────────────────────────────────────┴──────────────┴─────────────┴───────────────────────────┴──────────────────────────────────────────────────────────────┴───────────────────┴──────────────┴──────────────────┘
**/
-- Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.
select e.nombre, e.apellido1, e.apellido2, e.puesto, o.telefono from empleado as e, oficina as o where e.codigo_oficina=o.codigo_oficina and e.codigo_empleado NOT IN (select codigo_empleado_rep_ventas from cliente);
/**
┌─────────────┬────────────┬───────────┬───────────────────────┬─────────────────┐
│   nombre    │ apellido1  │ apellido2 │        puesto         │    telefono     │
├─────────────┼────────────┼───────────┼───────────────────────┼─────────────────┤
│ Marcos      │ Magaña     │ Perez     │ Director General      │ +34 925 867231  │
│ Ruben       │ López      │ Martinez  │ Subdirector Marketing │ +34 925 867231  │
│ Alberto     │ Soria      │ Carrasco  │ Subdirector Ventas    │ +34 925 867231  │
│ Maria       │ Solís      │ Jerez     │ Secretaria            │ +34 925 867231  │
│ Juan Carlos │ Ortiz      │ Serrano   │ Representante Ventas  │ +34 925 867231  │
│ Carlos      │ Soria      │ Jimenez   │ Director Oficina      │ +34 91 7514487  │
│ Hilario     │ Rodriguez  │ Huertas   │ Representante Ventas  │ +34 91 7514487  │
│ David       │ Palma      │ Aceituno  │ Representante Ventas  │ +34 93 3561182  │
│ Oscar       │ Palma      │ Aceituno  │ Representante Ventas  │ +34 93 3561182  │
│ Francois    │ Fignon     │           │ Director Oficina      │ +33 14 723 4404 │
│ Laurent     │ Serra      │           │ Representante Ventas  │ +33 14 723 4404 │
│ Hilary      │ Washington │           │ Director Oficina      │ +1 215 837 0825 │
│ Marcus      │ Paxton     │           │ Representante Ventas  │ +1 215 837 0825 │
│ Nei         │ Nishikori  │           │ Director Oficina      │ +81 33 224 5000 │
│ Narumi      │ Riko       │           │ Representante Ventas  │ +81 33 224 5000 │
│ Takuma      │ Nomura     │           │ Representante Ventas  │ +81 33 224 5000 │
│ Amy         │ Johnson    │           │ Director Oficina      │ +44 20 78772041 │
│ Larry       │ Westfalls  │           │ Representante Ventas  │ +44 20 78772041 │
│ John        │ Walton     │           │ Representante Ventas  │ +44 20 78772041 │
│ Kevin       │ Fallmer    │           │ Director Oficina      │ +61 2 9264 2451 │
└─────────────┴────────────┴───────────┴───────────────────────┴─────────────────┘
**/
-- Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.
select o.* from empleado as e, oficina as o
where e.codigo_oficina=o.codigo_oficina and 
o.codigo_oficina NOT IN 
(select DISTINCT(e.codigo_oficina) from empleado as e, oficina as o, pedido as p, detalle_pedido as dp, producto as pd, cliente as c, gama_producto as g
where e.codigo_empleado=c.codigo_empleado_rep_ventas and
e.codigo_oficina=o.codigo_oficina and
c.codigo_cliente=p.codigo_cliente and
p.codigo_pedido=dp.codigo_pedido and
dp.codigo_producto=pd.codigo_producto and
pd.gama=g.gama and g.gama='Frutales') group by o.codigo_oficina;
/**
┌────────────────┬─────────┬────────────┬────────────┬───────────────┬─────────────────┬──────────────────────────┬──────────────────┐
│ codigo_oficina │ ciudad  │    pais    │   region   │ codigo_postal │    telefono     │     linea_direccion1     │ linea_direccion2 │
├────────────────┼─────────┼────────────┼────────────┼───────────────┼─────────────────┼──────────────────────────┼──────────────────┤
│ LON-UK         │ Londres │ Inglaterra │ EMEA       │ EC2N 1HN      │ +44 20 78772041 │ 52 Old Broad Street      │ Ground Floor     │
│ PAR-FR         │ Paris   │ Francia    │ EMEA       │ 75017         │ +33 14 723 4404 │ 29 Rue Jouffroy d'abbans │                  │
│ TOK-JP         │ Tokyo   │ Japón      │ Chiyoda-Ku │ 102-8578      │ +81 33 224 5000 │ 4-1 Kioicho              │                  │
└────────────────┴─────────┴────────────┴────────────┴───────────────┴─────────────────┴──────────────────────────┴──────────────────┘
**/
-- Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.
select * from cliente where codigo_cliente IN (select codigo_cliente from pedido) and codigo_cliente NOT IN (select codigo_cliente from pago);
/**
┌────────────────┬────────────────┬─────────────────┬───────────────────┬───────────┬───────────┬──────────────────┬──────────────────┬────────┬─────────────┬───────┬───────────────┬────────────────────────────┬────────────────┐
│ codigo_cliente │ nombre_cliente │ nombre_contacto │ apellido_contacto │ telefono  │    fax    │ linea_direccion1 │ linea_direccion2 │ ciudad │   region    │ pais  │ codigo_postal │ codigo_empleado_rep_ventas │ limite_credito │
├────────────────┼────────────────┼─────────────────┼───────────────────┼───────────┼───────────┼──────────────────┼──────────────────┼────────┼─────────────┼───────┼───────────────┼────────────────────────────┼────────────────┤
│ 36             │ Flores S.L.    │ Antonio         │ Romero            │ 654352981 │ 685249700 │ Avenida España   │                  │ Madrid │ Fuenlabrada │ Spain │ 29643         │ 18                         │ 6000           │
└────────────────┴────────────────┴─────────────────┴───────────────────┴───────────┴───────────┴──────────────────┴──────────────────┴────────┴─────────────┴───────┴───────────────┴────────────────────────────┴────────────────┘
**/
-- Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
select * from cliente where codigo_cliente NOT IN (select codigo_cliente from pago);
/**
┌────────────────┬─────────────────────────────┬─────────────────┬───────────────────┬────────────────┬────────────────┬──────────────────────────┬──────────────────┬──────────────────────┬─────────────┬────────────────┬───────────────┬────────────────────────────┬────────────────┐
│ codigo_cliente │       nombre_cliente        │ nombre_contacto │ apellido_contacto │    telefono    │      fax       │     linea_direccion1     │ linea_direccion2 │        ciudad        │   region    │      pais      │ codigo_postal │ codigo_empleado_rep_ventas │ limite_credito │
├────────────────┼─────────────────────────────┼─────────────────┼───────────────────┼────────────────┼────────────────┼──────────────────────────┼──────────────────┼──────────────────────┼─────────────┼────────────────┼───────────────┼────────────────────────────┼────────────────┤
│ 6              │ Lasas S.A.                  │ Antonio         │ Lasas             │ 34916540145    │ 34914851312    │ C/Leganes 15             │                  │ Fuenlabrada          │ Madrid      │ Spain          │ 28945         │ 8                          │ 154310         │
│ 8              │ Club Golf Puerta del hierro │ Paco            │ Lopez             │ 62456810       │ 919535678      │ C/sinesio delgado        │ Madrid           │ Madrid               │ Madrid      │ Spain          │ 28930         │ 11                         │ 40000          │
│ 10             │ DaraDistribuciones          │ David           │ Serrano           │ 675598001      │ 916421756      │ C/azores                 │ Fuenlabrada      │ Madrid               │ Madrid      │ Spain          │ 28946         │ 11                         │ 50000          │
│ 11             │ Madrileña de riegos         │ Jose            │ Tacaño            │ 655983045      │ 916689215      │ C/Lagañas                │ Fuenlabrada      │ Madrid               │ Madrid      │ Spain          │ 28943         │ 11                         │ 20000          │
│ 12             │ Lasas S.A.                  │ Antonio         │ Lasas             │ 34916540145    │ 34914851312    │ C/Leganes 15             │                  │ Fuenlabrada          │ Madrid      │ Spain          │ 28945         │ 8                          │ 154310         │
│ 17             │ Flowers, S.A                │ Beatriz         │ Fernandez         │ 698754159      │ 978453216      │ C/Luis Salquillo4        │                  │ Montornes del valles │ Barcelona   │ Spain          │ 24586         │ 5                          │ 3500           │
│ 18             │ Naturajardin                │ Victoria        │ Cruz              │ 612343529      │ 916548735      │ Plaza Magallón 15        │                  │ Madrid               │ Madrid      │ Spain          │ 28011         │ 30                         │ 5050           │
│ 20             │ Americh Golf Management SL  │ Mario           │ Suarez            │ 964493072      │ 964493063      │ C/Letardo                │                  │ Barcelona            │ Cataluña    │ Spain          │ 12320         │ 12                         │ 20000          │
│ 21             │ Aloha                       │ Cristian        │ Rodrigez          │ 916485852      │ 914489898      │ C/Roman 3                │                  │ Canarias             │ Canarias    │ Spain          │ 35488         │ 12                         │ 50000          │
│ 22             │ El Prat                     │ Francisco       │ Camacho           │ 916882323      │ 916493211      │ Avenida Tibidabo         │                  │ Barcelona            │ Cataluña    │ Spain          │ 12320         │ 12                         │ 30000          │
│ 24             │ Vivero Humanes              │ Federico        │ Gomez             │ 654987690      │ 916040875      │ C/Miguel Echegaray 54    │                  │ Humanes              │ Madrid      │ Spain          │ 28970         │ 30                         │ 7430           │
│ 25             │ Fuenla City                 │ Tony            │ Muñoz Mena        │ 675842139      │ 915483754      │ C/Callo 52               │                  │ Fuenlabrada          │ Madrid      │ Spain          │ 28574         │ 5                          │ 4500           │
│ 29             │ Top Campo                   │ Joseluis        │ Sanchez           │ 685746512      │ 974315924      │ C/Ibiza 32               │                  │ Humanes              │ Madrid      │ Spain          │ 28574         │ 5                          │ 5500           │
│ 31             │ Campohermoso                │ Luis            │ Jimenez           │ 645925376      │ 916159116      │ C/Peru 78                │                  │ Fuenlabrada          │ Madrid      │ Spain          │ 28945         │ 30                         │ 3250           │
│ 32             │ france telecom              │ FraÃ§ois        │ Toulou            │ (33)5120578961 │ (33)5120578961 │ 6 place d Alleray 15Ã¨me │                  │ Paris                │             │ France         │ 75010         │ 16                         │ 10000          │
│ 33             │ Musée du Louvre             │ Pierre          │ Delacroux         │ (33)0140205050 │ (33)0140205442 │ Quai du Louvre           │                  │ Paris                │             │ France         │ 75058         │ 16                         │ 30000          │
│ 36             │ Flores S.L.                 │ Antonio         │ Romero            │ 654352981      │ 685249700      │ Avenida España           │                  │ Madrid               │ Fuenlabrada │ Spain          │ 29643         │ 18                         │ 6000           │
│ 37             │ The Magic Garden            │ Richard         │ Mcain             │ 926523468      │ 9364875882     │ Lihgting Park            │                  │ London               │ London      │ United Kingdom │ 65930         │ 18                         │ 10000          │
└────────────────┴─────────────────────────────┴─────────────────┴───────────────────┴────────────────┴────────────────┴──────────────────────────┴──────────────────┴──────────────────────┴─────────────┴────────────────┴───────────────┴────────────────────────────┴────────────────┘
**/
-- Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.
select * from cliente where codigo_cliente IN (select codigo_cliente from pago);
/**
┌────────────────┬────────────────────────────────┬─────────────────┬───────────────────┬─────────────┬─────────────┬────────────────────────────────────────────┬───────────────────┬──────────────────────────┬─────────────────────┬───────────┬───────────────┬────────────────────────────┬────────────────┐
│ codigo_cliente │         nombre_cliente         │ nombre_contacto │ apellido_contacto │  telefono   │     fax     │              linea_direccion1              │ linea_direccion2  │          ciudad          │       region        │   pais    │ codigo_postal │ codigo_empleado_rep_ventas │ limite_credito │
├────────────────┼────────────────────────────────┼─────────────────┼───────────────────┼─────────────┼─────────────┼────────────────────────────────────────────┼───────────────────┼──────────────────────────┼─────────────────────┼───────────┼───────────────┼────────────────────────────┼────────────────┤
│ 1              │ GoldFish Garden                │ Daniel G        │ GoldFish          │ 5556901745  │ 5556901746  │ False Street 52 2 A                        │                   │ San Francisco            │                     │ USA       │ 24006         │ 19                         │ 3000           │
│ 3              │ Gardening Associates           │ Anne            │ Wright            │ 5557410345  │ 5557410346  │ Wall-e Avenue                              │                   │ Miami                    │ Miami               │ USA       │ 24010         │ 19                         │ 6000           │
│ 4              │ Gerudo Valley                  │ Link            │ Flaute            │ 5552323129  │ 5552323128  │ Oaks Avenue nº22                           │                   │ New York                 │                     │ USA       │ 85495         │ 22                         │ 12000          │
│ 5              │ Tendo Garden                   │ Akane           │ Tendo             │ 55591233210 │ 55591233211 │ Null Street nº69                           │                   │ Miami                    │                     │ USA       │ 696969        │ 22                         │ 600000         │
│ 7              │ Beragua                        │ Jose            │ Bermejo           │ 654987321   │ 916549872   │ C/pintor segundo                           │ Getafe            │ Madrid                   │ Madrid              │ Spain     │ 28942         │ 11                         │ 20000          │
│ 9              │ Naturagua                      │ Guillermo       │ Rengifo           │ 689234750   │ 916428956   │ C/majadahonda                              │ Boadilla          │ Madrid                   │ Madrid              │ Spain     │ 28947         │ 11                         │ 32000          │
│ 13             │ Camunas Jardines S.L.          │ Pedro           │ Camunas           │ 34914873241 │ 34914871541 │ C/Virgenes 45                              │ C/Princesas 2 1ºB │ San Lorenzo del Escorial │ Madrid              │ Spain     │ 28145         │ 8                          │ 16481          │
│ 14             │ Dardena S.A.                   │ Juan            │ Rodriguez         │ 34912453217 │ 34912484764 │ C/Nueva York 74                            │                   │ Madrid                   │ Madrid              │ Spain     │ 28003         │ 8                          │ 321000         │
│ 15             │ Jardin de Flores               │ Javier          │ Villar            │ 654865643   │ 914538776   │ C/ Oña 34                                  │                   │ Madrid                   │ Madrid              │ Spain     │ 28950         │ 30                         │ 40000          │
│ 16             │ Flores Marivi                  │ Maria           │ Rodriguez         │ 666555444   │ 912458657   │ C/Leganes24                                │                   │ Fuenlabrada              │ Madrid              │ Spain     │ 28945         │ 5                          │ 1500           │
│ 19             │ Golf S.A.                      │ Luis            │ Martinez          │ 916458762   │ 912354475   │ C/Estancado                                │                   │ Santa cruz de Tenerife   │ Islas Canarias      │ Spain     │ 38297         │ 12                         │ 30000          │
│ 23             │ Sotogrande                     │ Maria           │ Santillana        │ 915576622   │ 914825645   │ C/Paseo del Parque                         │                   │ Sotogrande               │ Cadiz               │ Spain     │ 11310         │ 12                         │ 60000          │
│ 26             │ Jardines y Mansiones Cactus SL │ Eva María       │ Sánchez           │ 916877445   │ 914477777   │ Polígono Industrial Maspalomas, Nº52       │ Móstoles          │ Madrid                   │ Madrid              │ Spain     │ 29874         │ 9                          │ 76000          │
│ 27             │ Jardinerías Matías SL          │ Matías          │ San Martín        │ 916544147   │ 917897474   │ C/Francisco Arce, Nº44                     │ Bustarviejo       │ Madrid                   │ Madrid              │ Spain     │ 37845         │ 9                          │ 100500         │
│ 28             │ Agrojardin                     │ Benito          │ Lopez             │ 675432926   │ 916549264   │ C/Mar Caspio 43                            │                   │ Getafe                   │ Madrid              │ Spain     │ 28904         │ 30                         │ 8040           │
│ 30             │ Jardineria Sara                │ Sara            │ Marquez           │ 675124537   │ 912475843   │ C/Lima 1                                   │                   │ Fuenlabrada              │ Madrid              │ Spain     │ 27584         │ 5                          │ 7500           │
│ 35             │ Tutifruti S.A                  │ Jacob           │ Jones             │ 2 9261-2433 │ 2 9283-1695 │ level 24, St. Martins Tower.-31 Market St. │                   │ Sydney                   │ Nueva Gales del Sur │ Australia │ 2000          │ 31                         │ 10000          │
│ 38             │ El Jardin Viviente S.L         │ Justin          │ Smith             │ 2 8005-7161 │ 2 8005-7162 │ 176 Cumberland Street The rocks            │                   │ Sydney                   │ Nueva Gales del Sur │ Australia │ 2003          │ 31                         │ 8000           │
└────────────────┴────────────────────────────────┴─────────────────┴───────────────────┴─────────────┴─────────────┴────────────────────────────────────────────┴───────────────────┴──────────────────────────┴─────────────────────┴───────────┴───────────────┴────────────────────────────┴────────────────┘
**/
-- Devuelve un listado de los productos que nunca han aparecido en un pedido.
select * from producto where codigo_producto NOT IN (select codigo_producto from detalle_pedido);
/**
┌─────────────────┬─────────────────────────────────────────────────────────────┬──────────────┬─────────────┬───────────────────────────┬──────────────────────────────────────────────────────────────┬───────────────────┬──────────────┬──────────────────┐
│ codigo_producto │                           nombre                            │     gama     │ dimensiones │         proveedor         │                         descripcion                          │ cantidad_en_stock │ precio_venta │ precio_proveedor │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-104          │ Olea-Olivos                                                 │ Frutales     │ 12/4        │ Frutales Talavera S.A     │ Existen dos hipótesis sobre el origen del olivo, una que pos │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │ tula que proviene de las costas de Siria, Líbano e Israel y  │                   │              │                  │
│                 │                                                             │              │             │                           │ otra que considera que lo considera originario de Asia menor │                   │              │                  │
│                 │                                                             │              │             │                           │ . La llegada a Europa probablemente tuvo lugar de mano de lo │                   │              │                  │
│                 │                                                             │              │             │                           │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │                   │              │                  │
│                 │                                                             │              │             │                           │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │                   │              │                  │
│                 │                                                             │              │             │                           │ icios de la presencia del olivo en las costas mediterráneas  │                   │              │                  │
│                 │                                                             │              │             │                           │ españolas coinciden con el dominio romano, aunque fueron pos │                   │              │                  │
│                 │                                                             │              │             │                           │ teriormente los árabes los que impulsaron su cultivo en Anda │                   │              │                  │
│                 │                                                             │              │             │                           │ lucía, convirtiendo a España en el primer país productor de  │                   │              │                  │
│                 │                                                             │              │             │                           │ aceite de oliva a nivel mundial.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-14           │ Calamondin Mini                                             │ Frutales     │             │ Frutales Talavera S.A     │ Se trata de un pequeño arbolito de copa densa, con tendencia │ 15                │ 10           │ 8                │
│                 │                                                             │              │             │                           │  a la verticalidad, inerme o con cortas espinas. Sus hojas s │                   │              │                  │
│                 │                                                             │              │             │                           │ on pequeñas, elípticas de 5-10 cm de longitud, con los pecío │                   │              │                  │
│                 │                                                             │              │             │                           │ los estrechamente alados.Posee 1 o 2 flores en situación axi │                   │              │                  │
│                 │                                                             │              │             │                           │ lar, al final de las ramillas.Sus frutos son muy pequeños (3 │                   │              │                  │
│                 │                                                             │              │             │                           │ -3,5 cm de diámetro), con pocas semillas, esféricos u ovales │                   │              │                  │
│                 │                                                             │              │             │                           │ , con la zona apical aplanada; corteza de color naranja-roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zo, muy fina y fácilmente separable de la pulpa, que es dulc │                   │              │                  │
│                 │                                                             │              │             │                           │ e, ácida y comestible..                                      │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-19           │ Camelia Blanco, Chrysler Rojo, Soraya Naranja,              │ Frutales     │             │ NaranjasValencianas.com   │                                                              │ 350               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-20           │ Landora Amarillo, Rose Gaujard bicolor blanco-rojo          │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 350               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-21           │ Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 350               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-24           │ Albaricoquero Corbato                                       │ Frutales     │             │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-25           │ Albaricoquero Moniqui                                       │ Frutales     │             │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-26           │ Albaricoquero Kurrot                                        │ Frutales     │             │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-27           │ Cerezo Burlat                                               │ Frutales     │             │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-28           │ Cerezo Picota                                               │ Frutales     │             │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-30           │ Ciruelo R. Claudia Verde                                    │ Frutales     │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-32           │ Ciruelo Golden Japan                                        │ Frutales     │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-35           │ Ciruelo Claudia Negra                                       │ Frutales     │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-38           │ Higuera Verdal                                              │ Frutales     │             │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 400               │ 9            │ 7                │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-39           │ Higuera Breva                                               │ Frutales     │             │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 400               │ 9            │ 7                │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-44           │ Melocotonero Spring Crest                                   │ Frutales     │             │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-46           │ Melocotonero Federica                                       │ Frutales     │             │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-49           │ Parra Uva de Mesa                                           │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 400               │ 8            │ 6                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-5            │ Mandarino -Plantón joven                                    │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 15                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-50           │ Peral Castell                                               │ Frutales     │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-51           │ Peral Williams                                              │ Frutales     │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-52           │ Peral Conference                                            │ Frutales     │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-55           │ Olivo Cipresino                                             │ Frutales     │             │ Frutales Talavera S.A     │ Existen dos hipótesis sobre el origen del olivo, una que pos │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ tula que proviene de las costas de Siria, Líbano e Israel y  │                   │              │                  │
│                 │                                                             │              │             │                           │ otra que considera que lo considera originario de Asia menor │                   │              │                  │
│                 │                                                             │              │             │                           │ . La llegada a Europa probablemente tuvo lugar de mano de lo │                   │              │                  │
│                 │                                                             │              │             │                           │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │                   │              │                  │
│                 │                                                             │              │             │                           │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │                   │              │                  │
│                 │                                                             │              │             │                           │ icios de la presencia del olivo en las costas mediterráneas  │                   │              │                  │
│                 │                                                             │              │             │                           │ españolas coinciden con el dominio romano, aunque fueron pos │                   │              │                  │
│                 │                                                             │              │             │                           │ teriormente los árabes los que impulsaron su cultivo en Anda │                   │              │                  │
│                 │                                                             │              │             │                           │ lucía, convirtiendo a España en el primer país productor de  │                   │              │                  │
│                 │                                                             │              │             │                           │ aceite de oliva a nivel mundial.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-59           │ Albaricoquero                                               │ Frutales     │ 10/12       │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 200               │ 22           │ 17               │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-61           │ Albaricoquero                                               │ Frutales     │ 14/16       │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 200               │ 49           │ 39               │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-62           │ Albaricoquero                                               │ Frutales     │ 16/18       │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 200               │ 70           │ 56               │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-63           │ Cerezo                                                      │ Frutales     │ 8/10        │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 300               │ 11           │ 8                │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-65           │ Cerezo                                                      │ Frutales     │ 12/14       │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 200               │ 32           │ 25               │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-68           │ Cerezo                                                      │ Frutales     │ 18/20       │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 50                │ 80           │ 64               │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-70           │ Ciruelo                                                     │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 50                │ 11           │ 8                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-73           │ Granado                                                     │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 50                │ 13           │ 10               │
│                 │                                                             │              │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                                             │              │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                                             │              │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                                             │              │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                                             │              │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                                             │              │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                                             │              │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-74           │ Granado                                                     │ Frutales     │ 10/12       │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                                             │              │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                                             │              │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                                             │              │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                                             │              │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                                             │              │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                                             │              │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-76           │ Granado                                                     │ Frutales     │ 14/16       │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                                             │              │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                                             │              │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                                             │              │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                                             │              │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                                             │              │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                                             │              │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-83           │ Higuera                                                     │ Frutales     │ 18/20       │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 50                │ 80           │ 64               │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-88           │ Manzano                                                     │ Frutales     │ 12/14       │ Frutales Talavera S.A     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │ 50                │ 32           │ 25               │
│                 │                                                             │              │             │                           │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │                   │              │                  │
│                 │                                                             │              │             │                           │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │                   │              │                  │
│                 │                                                             │              │             │                           │  color ceniciento verdoso sobre los ramos y escamosa y gris  │                   │              │                  │
│                 │                                                             │              │             │                           │ parda sobre las partes viejas del árbol. Tiene una vida de u │                   │              │                  │
│                 │                                                             │              │             │                           │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │                   │              │                  │
│                 │                                                             │              │             │                           │ e el tallo, de color verde oscuro, a veces tendiendo a negru │                   │              │                  │
│                 │                                                             │              │             │                           │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │                   │              │                  │
│                 │                                                             │              │             │                           │ n una espina                                                 │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-92           │ Melocotonero                                                │ Frutales     │ 8/10        │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 50                │ 11           │ 8                │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-93           │ Melocotonero                                                │ Frutales     │ 10/12       │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-95           │ Melocotonero                                                │ Frutales     │ 14/16       │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-96           │ Membrillero                                                 │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │ 50                │ 11           │ 8                │
│                 │                                                             │              │             │                           │ so y la corteza lisa, grisácea, que se desprende en escamas  │                   │              │                  │
│                 │                                                             │              │             │                           │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-97           │ Membrillero                                                 │ Frutales     │ 10/12       │ Frutales Talavera S.A     │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │ so y la corteza lisa, grisácea, que se desprende en escamas  │                   │              │                  │
│                 │                                                             │              │             │                           │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-98           │ Membrillero                                                 │ Frutales     │ 12/14       │ Frutales Talavera S.A     │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │ 50                │ 32           │ 25               │
│                 │                                                             │              │             │                           │ so y la corteza lisa, grisácea, que se desprende en escamas  │                   │              │                  │
│                 │                                                             │              │             │                           │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-99           │ Membrillero                                                 │ Frutales     │ 14/16       │ Frutales Talavera S.A     │ arbolito caducifolio de 4-6 m de altura con el tronco tortuo │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │ so y la corteza lisa, grisácea, que se desprende en escamas  │                   │              │                  │
│                 │                                                             │              │             │                           │ con la edad. Copa irregular, con ramas inermes, flexuosas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ arduzcas, punteadas. Ramillas jóvenes tomentosas             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-001          │ Arbustos Mix Maceta                                         │ Ornamentales │ 40-60       │ Valencia Garden Service   │                                                              │ 25                │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-100          │ Mimosa Injerto CLASICA Dealbata                             │ Ornamentales │ 100-110     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 12           │ 9                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-103          │ Mimosa Semilla Bayleyana                                    │ Ornamentales │ 200-225     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 10           │ 8                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-105          │ Mimosa Semilla Espectabilis                                 │ Ornamentales │ 160-170     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 6            │ 4                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-106          │ Mimosa Semilla Longifolia                                   │ Ornamentales │ 200-225     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 10           │ 8                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-107          │ Mimosa Semilla Floribunda 4 estaciones                      │ Ornamentales │ 120-140     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 6            │ 4                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-108          │ Abelia Floribunda                                           │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 100               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-109          │ Callistemom (Mix)                                           │ Ornamentales │ 35-45       │ Viveros EL OASIS          │ Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y │ 100               │ 5            │ 4                │
│                 │                                                             │              │             │                           │  colgantes (de ahí lo de \"llorón\")..                       │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-110          │ Callistemom (Mix)                                           │ Ornamentales │ 40-60       │ Viveros EL OASIS          │ Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y │ 100               │ 2            │ 1                │
│                 │                                                             │              │             │                           │  colgantes (de ahí lo de \"llorón\")..                       │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-111          │ Corylus Avellana \"Contorta\"                               │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 100               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-112          │ Escallonia (Mix)                                            │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-113          │ Evonimus Emerald Gayeti                                     │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-114          │ Evonimus Pulchellus                                         │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-117          │ Hibiscus Syriacus  \"Helene\" -Blanco-C.rojo                │ Ornamentales │ 35-45       │ Viveros EL OASIS          │ Por su capacidad de soportar podas, pueden ser fácilmente mo │ 120               │ 7            │ 5                │
│                 │                                                             │              │             │                           │ ldeadas como bonsái en el transcurso de pocos años. Flores d │                   │              │                  │
│                 │                                                             │              │             │                           │ e muchos colores según la variedad, desde el blanco puro al  │                   │              │                  │
│                 │                                                             │              │             │                           │ rojo intenso, del amarillo al anaranjado. La flor apenas dur │                   │              │                  │
│                 │                                                             │              │             │                           │ a 1 día, pero continuamente aparecen nuevas y la floración s │                   │              │                  │
│                 │                                                             │              │             │                           │ e prolonga durante todo el periodo de crecimiento vegetativo │                   │              │                  │
│                 │                                                             │              │             │                           │ .                                                            │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-118          │ Hibiscus Syriacus \"Pink Giant\" Rosa                       │ Ornamentales │ 35-45       │ Viveros EL OASIS          │ Por su capacidad de soportar podas, pueden ser fácilmente mo │ 120               │ 7            │ 5                │
│                 │                                                             │              │             │                           │ ldeadas como bonsái en el transcurso de pocos años. Flores d │                   │              │                  │
│                 │                                                             │              │             │                           │ e muchos colores según la variedad, desde el blanco puro al  │                   │              │                  │
│                 │                                                             │              │             │                           │ rojo intenso, del amarillo al anaranjado. La flor apenas dur │                   │              │                  │
│                 │                                                             │              │             │                           │ a 1 día, pero continuamente aparecen nuevas y la floración s │                   │              │                  │
│                 │                                                             │              │             │                           │ e prolonga durante todo el periodo de crecimiento vegetativo │                   │              │                  │
│                 │                                                             │              │             │                           │ .                                                            │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-121          │ Lonicera Nitida \"Maigrum\"                                 │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-124          │ Prunus pisardii                                             │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-126          │ Weigelia \"Bristol Ruby\"                                   │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-131          │ Leptospermum formado PIRAMIDE                               │ Ornamentales │ 80-100      │ Viveros EL OASIS          │                                                              │ 50                │ 18           │ 14               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-132          │ Leptospermum COPA                                           │ Ornamentales │ 110/120     │ Viveros EL OASIS          │                                                              │ 50                │ 18           │ 14               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-133          │ Nerium oleander-CALIDAD \"GARDEN\"                          │ Ornamentales │ 40-45       │ Viveros EL OASIS          │                                                              │ 50                │ 2            │ 1                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-134          │ Nerium Oleander Arbusto GRANDE                              │ Ornamentales │ 160-200     │ Viveros EL OASIS          │                                                              │ 100               │ 38           │ 30               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-135          │ Nerium oleander COPA  Calibre 6/8                           │ Ornamentales │ 50-60       │ Viveros EL OASIS          │                                                              │ 100               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-137          │ ROSAL TREPADOR                                              │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-138          │ Camelia Blanco, Chrysler Rojo, Soraya Naranja,              │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-142          │ Solanum Jazminoide                                          │ Ornamentales │ 150-160     │ Viveros EL OASIS          │                                                              │ 100               │ 2            │ 1                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-143          │ Wisteria Sinensis  azul, rosa, blanca                       │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 9            │ 7                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-144          │ Wisteria Sinensis INJERTADAS DECÃ“                          │ Ornamentales │ 140-150     │ Viveros EL OASIS          │                                                              │ 100               │ 12           │ 9                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-145          │ Bougamvillea Sanderiana Tutor                               │ Ornamentales │ 80-100      │ Viveros EL OASIS          │                                                              │ 100               │ 2            │ 1                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-148          │ Bougamvillea Sanderiana Espaldera                           │ Ornamentales │ 45-50       │ Viveros EL OASIS          │                                                              │ 100               │ 7            │ 5                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-149          │ Bougamvillea Sanderiana Espaldera                           │ Ornamentales │ 140-150     │ Viveros EL OASIS          │                                                              │ 100               │ 17           │ 13               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-151          │ Bougamvillea Sanderiana, 3 tut. piramide                    │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-153          │ Expositor Árboles clima mediterráneo                        │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-154          │ Expositor Árboles borde del mar                             │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-158          │ Brachychiton Acerifolius                                    │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-161          │ Cassia Corimbosa                                            │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-162          │ Cassia Corimbosa                                            │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-163          │ Chitalpa Summer Bells                                       │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-164          │ Erytrina Kafra                                              │ Ornamentales │ 170-180     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-166          │ Eucalyptus Citriodora                                       │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-167          │ Eucalyptus Ficifolia                                        │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-169          │ Hibiscus Syriacus  Var. Injertadas 1 Tallo                  │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 12           │ 9                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-170          │ Lagunaria Patersonii                                        │ Ornamentales │ 140-150     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-171          │ Lagunaria Patersonii                                        │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-173          │ Morus Alba                                                  │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-175          │ Platanus Acerifolia                                         │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-178          │ Salix Babylonica  Pendula                                   │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-180          │ Tamarix  Ramosissima Pink Cascade                           │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-182          │ Tecoma Stands                                               │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-183          │ Tecoma Stands                                               │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-184          │ Tipuana Tipu                                                │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-185          │ Pleioblastus distichus-Bambú enano                          │ Ornamentales │ 15-20       │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-187          │ Sasa palmata                                                │ Ornamentales │ 40-45       │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-189          │ Phylostachys aurea                                          │ Ornamentales │ 180-200     │ Viveros EL OASIS          │                                                              │ 80                │ 22           │ 17               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-190          │ Phylostachys aurea                                          │ Ornamentales │ 250-300     │ Viveros EL OASIS          │                                                              │ 80                │ 32           │ 25               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-191          │ Phylostachys Bambusa Spectabilis                            │ Ornamentales │ 180-200     │ Viveros EL OASIS          │                                                              │ 80                │ 24           │ 19               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-192          │ Phylostachys biseti                                         │ Ornamentales │ 160-170     │ Viveros EL OASIS          │                                                              │ 80                │ 22           │ 17               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-194          │ Pseudosasa japonica (Metake)                                │ Ornamentales │ 225-250     │ Viveros EL OASIS          │                                                              │ 80                │ 20           │ 16               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-195          │ Pseudosasa japonica (Metake)                                │ Ornamentales │ 30-40       │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-197          │ Cedrus Deodara \"Feeling Blue\" Novedad                     │ Ornamentales │ rastrero    │ Viveros EL OASIS          │                                                              │ 80                │ 12           │ 9                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-198          │ Juniperus chinensis \"Blue Alps\"                           │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-199          │ Juniperus Chinensis Stricta                                 │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-201          │ Juniperus squamata \"Blue Star\"                            │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-202          │ Juniperus x media Phitzeriana verde                         │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-212          │ Bismarckia Nobilis                                          │ Ornamentales │ 200 - 220   │ Viveros EL OASIS          │                                                              │ 4                 │ 217          │ 173              │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-215          │ Brahea Armata                                               │ Ornamentales │ 120 - 140   │ Viveros EL OASIS          │                                                              │ 100               │ 112          │ 89               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-216          │ Brahea Edulis                                               │ Ornamentales │ 80 - 100    │ Viveros EL OASIS          │                                                              │ 100               │ 19           │ 15               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-219          │ Butia Capitata                                              │ Ornamentales │ 90 - 110    │ Viveros EL OASIS          │                                                              │ 100               │ 29           │ 23               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-220          │ Butia Capitata                                              │ Ornamentales │ 90 - 120    │ Viveros EL OASIS          │                                                              │ 100               │ 36           │ 28               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-221          │ Butia Capitata                                              │ Ornamentales │ 85 - 105    │ Viveros EL OASIS          │                                                              │ 100               │ 59           │ 47               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-223          │ Chamaerops Humilis                                          │ Ornamentales │ 40 - 45     │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-224          │ Chamaerops Humilis                                          │ Ornamentales │ 50 - 60     │ Viveros EL OASIS          │                                                              │ 100               │ 7            │ 5                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-228          │ Chamaerops Humilis \"Cerifera\"                             │ Ornamentales │ 70 - 80     │ Viveros EL OASIS          │                                                              │ 100               │ 32           │ 25               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-229          │ Chrysalidocarpus Lutescens -ARECA                           │ Ornamentales │ 130 - 150   │ Viveros EL OASIS          │                                                              │ 100               │ 22           │ 17               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-230          │ Cordyline Australis -DRACAENA                               │ Ornamentales │ 190 - 210   │ Viveros EL OASIS          │                                                              │ 100               │ 38           │ 30               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-231          │ Cycas Revoluta                                              │ Ornamentales │ 55 - 65     │ Viveros EL OASIS          │                                                              │ 100               │ 15           │ 12               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-232          │ Cycas Revoluta                                              │ Ornamentales │ 80 - 90     │ Viveros EL OASIS          │                                                              │ 100               │ 34           │ 27               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-233          │ Dracaena Drago                                              │ Ornamentales │ 60 - 70     │ Viveros EL OASIS          │                                                              │ 1                 │ 13           │ 10               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-235          │ Dracaena Drago                                              │ Ornamentales │ 150 - 175   │ Viveros EL OASIS          │                                                              │ 2                 │ 92           │ 73               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-238          │ Livistonia Decipiens                                        │ Ornamentales │ 90 - 110    │ Viveros EL OASIS          │                                                              │ 50                │ 19           │ 15               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-239          │ Livistonia Decipiens                                        │ Ornamentales │ 180 - 200   │ Viveros EL OASIS          │                                                              │ 50                │ 49           │ 39               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-242          │ Rhaphis Excelsa                                             │ Ornamentales │ 80 - 100    │ Viveros EL OASIS          │                                                              │ 50                │ 21           │ 16               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-244          │ Sabal Minor                                                 │ Ornamentales │ 60 - 75     │ Viveros EL OASIS          │                                                              │ 50                │ 11           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-245          │ Sabal Minor                                                 │ Ornamentales │ 120 - 140   │ Viveros EL OASIS          │                                                              │ 50                │ 34           │ 27               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-246          │ Trachycarpus Fortunei                                       │ Ornamentales │ 90 - 105    │ Viveros EL OASIS          │                                                              │ 50                │ 18           │ 14               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-248          │ Washingtonia Robusta                                        │ Ornamentales │ 60 - 70     │ Viveros EL OASIS          │                                                              │ 15                │ 3            │ 2                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-251          │ Zamia Furfuracaea                                           │ Ornamentales │ 90 - 110    │ Viveros EL OASIS          │                                                              │ 15                │ 168          │ 134              │
└─────────────────┴─────────────────────────────────────────────────────────────┴──────────────┴─────────────┴───────────────────────────┴──────────────────────────────────────────────────────────────┴───────────────────┴──────────────┴──────────────────┘
**/
-- Devuelve un listado de los productos que han aparecido en un pedido alguna vez.
select * from producto where codigo_producto IN (select codigo_producto from detalle_pedido);
/**
┌─────────────────┬─────────────────────────────────────────────────────────────┬──────────────┬─────────────┬───────────────────────────┬──────────────────────────────────────────────────────────────┬───────────────────┬──────────────┬──────────────────┐
│ codigo_producto │                           nombre                            │     gama     │ dimensiones │         proveedor         │                         descripcion                          │ cantidad_en_stock │ precio_venta │ precio_proveedor │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ 11679           │ Sierra de Poda 400MM                                        │ Herramientas │ 0,258       │ HiperGarden Tools         │ Gracias a la poda se consigue manipular un poco la naturalez │ 15                │ 14           │ 11               │
│                 │                                                             │              │             │                           │ a, dándole la forma que más nos guste. Este trabajo básico d │                   │              │                  │
│                 │                                                             │              │             │                           │ e jardinería también facilita que las plantas crezcan de un  │                   │              │                  │
│                 │                                                             │              │             │                           │ modo más equilibrado, y que las flores y los frutos vuelvan  │                   │              │                  │
│                 │                                                             │              │             │                           │ cada año con regularidad. Lo mejor es dar forma cuando los e │                   │              │                  │
│                 │                                                             │              │             │                           │ jemplares son jóvenes, de modo que exijan pocos cuidados cua │                   │              │                  │
│                 │                                                             │              │             │                           │ ndo sean adultos. Además de saber cuándo y cómo hay que poda │                   │              │                  │
│                 │                                                             │              │             │                           │ r, tener unas herramientas adecuadas para esta labor es tamb │                   │              │                  │
│                 │                                                             │              │             │                           │ ién de vital importancia.                                    │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ 21636           │ Pala                                                        │ Herramientas │ 0,156       │ HiperGarden Tools         │ Palas de acero con cresta de corte en la punta para cortar b │ 15                │ 14           │ 13               │
│                 │                                                             │              │             │                           │ ien el terreno. Buena penetración en tierras muy compactas.  │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ 22225           │ Rastrillo de Jardín                                         │ Herramientas │ 1,064       │ HiperGarden Tools         │ Fabuloso rastillo que le ayudará a eliminar piedras, hojas,  │ 15                │ 12           │ 11               │
│                 │                                                             │              │             │                           │ ramas y otros elementos incómodos en su jardín.              │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ 30310           │ Azadón                                                      │ Herramientas │ 0,168       │ HiperGarden Tools         │ Longitud:24cm. Herramienta fabricada en acero y pintura epox │ 15                │ 12           │ 11               │
│                 │                                                             │              │             │                           │ i,alargando su durabilidad y preveniendo la corrosión.Diseño │                   │              │                  │
│                 │                                                             │              │             │                           │  pensado para el ahorro de trabajo.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ AR-001          │ Ajedrea                                                     │ Aromáticas   │ 15-20       │ Murcia Seasons            │ Planta aromática que fresca se utiliza para condimentar carn │ 140               │ 1            │ 0                │
│                 │                                                             │              │             │                           │ es y ensaladas, y seca, para pastas, sopas y guisantes       │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ AR-002          │ Lavándula Dentata                                           │ Aromáticas   │ 15-20       │ Murcia Seasons            │ Espliego de jardín, Alhucema rizada, Alhucema dentada, Cantu │ 140               │ 1            │ 0                │
│                 │                                                             │              │             │                           │ eso rizado. Familia: Lamiaceae.Origen: España y Portugal. Ma │                   │              │                  │
│                 │                                                             │              │             │                           │ ta de unos 60 cm de alto. Las hojas son aromáticas, dentadas │                   │              │                  │
│                 │                                                             │              │             │                           │  y de color verde grisáceas.  Produce compactas espigas de f │                   │              │                  │
│                 │                                                             │              │             │                           │ lores pequeñas, ligeramente aromáticas, tubulares,de color a │                   │              │                  │
│                 │                                                             │              │             │                           │ zulado y con brácteas púrpuras.  Frutos: nuececillas alargad │                   │              │                  │
│                 │                                                             │              │             │                           │ as encerradas en el tubo del cáliz.  Se utiliza en jardineri │                   │              │                  │
│                 │                                                             │              │             │                           │ a y no en perfumeria como otros cantuesos, espliegos y lavan │                   │              │                  │
│                 │                                                             │              │             │                           │ das.  Tiene propiedades aromatizantes y calmantes. Adecuadas │                   │              │                  │
│                 │                                                             │              │             │                           │  para la formación de setos bajos. Se dice que su aroma ahuy │                   │              │                  │
│                 │                                                             │              │             │                           │ enta pulgones y otros insectos perjudiciales para las planta │                   │              │                  │
│                 │                                                             │              │             │                           │ s vecinas.                                                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ AR-003          │ Mejorana                                                    │ Aromáticas   │ 15-20       │ Murcia Seasons            │ Origanum majorana. No hay que confundirlo con el orégano. Su │ 140               │ 1            │ 0                │
│                 │                                                             │              │             │                           │  sabor se parece más al tomillo, pero es más dulce y aromáti │                   │              │                  │
│                 │                                                             │              │             │                           │ co.Se usan las hojas frescas o secas, picadas, machacadas o  │                   │              │                  │
│                 │                                                             │              │             │                           │ en polvo, en sopas, rellenos, quiches y tartas, tortillas, p │                   │              │                  │
│                 │                                                             │              │             │                           │ latos con papas y, como aderezo, en ramilletes de hierbas.El │                   │              │                  │
│                 │                                                             │              │             │                           │  sabor delicado de la mejorana se elimina durante la cocción │                   │              │                  │
│                 │                                                             │              │             │                           │ , de manera que es mejor agregarla cuando el plato esté en s │                   │              │                  │
│                 │                                                             │              │             │                           │ u punto o en aquéllos que apenas necesitan cocción.          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ AR-004          │ Melissa                                                     │ Aromáticas   │ 15-20       │ Murcia Seasons            │ Es una planta perenne (dura varios años) conocida por el agr │ 140               │ 1            │ 0                │
│                 │                                                             │              │             │                           │ adable y característico olor a limón que desprenden en veran │                   │              │                  │
│                 │                                                             │              │             │                           │ o. Nunca debe faltar en la huerta o jardín por su agradable  │                   │              │                  │
│                 │                                                             │              │             │                           │ aroma y por los variados usos que tiene: planta olorosa, con │                   │              │                  │
│                 │                                                             │              │             │                           │ dimentaria y medicinal. Su cultivo es muy fácil. Le va bien  │                   │              │                  │
│                 │                                                             │              │             │                           │ un suelo ligero, con buen drenaje y riego sin exceso. A plen │                   │              │                  │
│                 │                                                             │              │             │                           │ o sol o por lo menos 5 horas de sol por día. Cada año, su ab │                   │              │                  │
│                 │                                                             │              │             │                           │ onado mineral correspondiente.En otoño, la melisa pierde el  │                   │              │                  │
│                 │                                                             │              │             │                           │ agradable olor a limón que desprende en verano sus flores az │                   │              │                  │
│                 │                                                             │              │             │                           │ ules y blancas. En este momento se debe cortar a unos 20 cm. │                   │              │                  │
│                 │                                                             │              │             │                           │  del suelo. Brotará de forma densa en primavera.             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ AR-005          │ Mentha Sativa                                               │ Aromáticas   │ 15-20       │ Murcia Seasons            │ ¿Quién no conoce la Hierbabuena? Se trata de una plantita mu │ 140               │ 1            │ 0                │
│                 │                                                             │              │             │                           │ y aromática, agradable y cultivada extensamente por toda Esp │                   │              │                  │
│                 │                                                             │              │             │                           │ aña. Es hierba perenne (por tanto vive varios años, no es an │                   │              │                  │
│                 │                                                             │              │             │                           │ ual). Puedes cultivarla en maceta o plantarla en la tierra d │                   │              │                  │
│                 │                                                             │              │             │                           │ el jardín o en un rincón del huerto. Lo más importante es qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e cuente con bastante agua. En primavera debes aportar ferti │                   │              │                  │
│                 │                                                             │              │             │                           │ lizantes minerales. Vive mejor en semisombra que a pleno sol │                   │              │                  │
│                 │                                                             │              │             │                           │ .Si ves orugas o los agujeros en hojas consecuencia de su at │                   │              │                  │
│                 │                                                             │              │             │                           │ aque, retíralas una a una a mano; no uses insecticidas quími │                   │              │                  │
│                 │                                                             │              │             │                           │ cos.                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ AR-006          │ Petrosilium Hortense (Peregil)                              │ Aromáticas   │ 15-20       │ Murcia Seasons            │ Nombre científico o latino: Petroselinum hortense, Petroseli │ 140               │ 1            │ 0                │
│                 │                                                             │              │             │                           │ num crispum. Nombre común o vulgar: Perejil, Perejil rizado  │                   │              │                  │
│                 │                                                             │              │             │                           │ Familia: Umbelliferae (Umbelíferas). Origen: el origen del p │                   │              │                  │
│                 │                                                             │              │             │                           │ erejil se encuentra en el Mediterraneo. Esta naturalizada en │                   │              │                  │
│                 │                                                             │              │             │                           │  casi toda Europa. Se utiliza como condimento y para adorno, │                   │              │                  │
│                 │                                                             │              │             │                           │  pero también en ensaladas. Se suele regalar en las frutería │                   │              │                  │
│                 │                                                             │              │             │                           │ s y verdulerías.El perejil lo hay de 2 tipos: de hojas plana │                   │              │                  │
│                 │                                                             │              │             │                           │ s y de hojas rizadas.                                        │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ AR-007          │ Salvia Mix                                                  │ Aromáticas   │ 15-20       │ Murcia Seasons            │ La Salvia es un pequeño arbusto que llega hasta el metro de  │ 140               │ 1            │ 0                │
│                 │                                                             │              │             │                           │ alto.Tiene una vida breve, de unos pocos años.En el jardín,  │                   │              │                  │
│                 │                                                             │              │             │                           │ como otras aromáticas, queda muy bien en una rocalla o para  │                   │              │                  │
│                 │                                                             │              │             │                           │ hacer una bordura perfumada a cada lado de un camino de Salv │                   │              │                  │
│                 │                                                             │              │             │                           │ ia. Abona después de cada corte y recorta el arbusto una vez │                   │              │                  │
│                 │                                                             │              │             │                           │  pase la floración.                                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ AR-008          │ Thymus Citriodra (Tomillo limón)                            │ Aromáticas   │ 15-20       │ Murcia Seasons            │ Nombre común o vulgar: Tomillo, Tremoncillo Familia: Labiata │ 140               │ 1            │ 0                │
│                 │                                                             │              │             │                           │ e (Labiadas).Origen: Región mediterránea.Arbustillo bajo, de │                   │              │                  │
│                 │                                                             │              │             │                           │  15 a 40 cm de altura. Las hojas son muy pequeñas, de unos 6 │                   │              │                  │
│                 │                                                             │              │             │                           │  mm de longitud; según la variedad pueden ser verdes, verdes │                   │              │                  │
│                 │                                                             │              │             │                           │  grisáceas, amarillas, o jaspeadas. Las flores aparecen de m │                   │              │                  │
│                 │                                                             │              │             │                           │ ediados de primavera hasta bien entrada la época estival y s │                   │              │                  │
│                 │                                                             │              │             │                           │ e presentan en racimos terminales que habitualmente son de c │                   │              │                  │
│                 │                                                             │              │             │                           │ olor violeta o púrpura aunque también pueden ser blancas. Es │                   │              │                  │
│                 │                                                             │              │             │                           │ ta planta despide un intenso y típico aroma, que se incremen │                   │              │                  │
│                 │                                                             │              │             │                           │ ta con el roce. El tomillo resulta de gran belleza cuando es │                   │              │                  │
│                 │                                                             │              │             │                           │ tá en flor. El tomillo atrae a avispas y abejas. En jardiner │                   │              │                  │
│                 │                                                             │              │             │                           │ ía se usa como manchas, para hacer borduras, para aromatizar │                   │              │                  │
│                 │                                                             │              │             │                           │  el ambiente, llenar huecos, cubrir rocas, para jardines en  │                   │              │                  │
│                 │                                                             │              │             │                           │ miniatura, etc. Arranque las flores y hojas secas del tallo  │                   │              │                  │
│                 │                                                             │              │             │                           │ y añadálos a un popurri, introdúzcalos en saquitos de hierba │                   │              │                  │
│                 │                                                             │              │             │                           │ s o en la almohada.También puede usar las ramas secas con fl │                   │              │                  │
│                 │                                                             │              │             │                           │ ores para añadir aroma y textura a cestos abiertos.          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ AR-009          │ Thymus Vulgaris                                             │ Aromáticas   │ 15-20       │ Murcia Seasons            │ Nombre común o vulgar: Tomillo, Tremoncillo Familia: Labiata │ 140               │ 1            │ 0                │
│                 │                                                             │              │             │                           │ e (Labiadas). Origen: Región mediterránea. Arbustillo bajo,  │                   │              │                  │
│                 │                                                             │              │             │                           │ de 15 a 40 cm de altura. Las hojas son muy pequeñas, de unos │                   │              │                  │
│                 │                                                             │              │             │                           │  6 mm de longitud; según la variedad pueden ser verdes, verd │                   │              │                  │
│                 │                                                             │              │             │                           │ es grisáceas, amarillas, o jaspeadas. Las flores aparecen de │                   │              │                  │
│                 │                                                             │              │             │                           │  mediados de primavera hasta bien entrada la época estival y │                   │              │                  │
│                 │                                                             │              │             │                           │  se presentan en racimos terminales que habitualmente son de │                   │              │                  │
│                 │                                                             │              │             │                           │  color violeta o púrpura aunque también pueden ser blancas.  │                   │              │                  │
│                 │                                                             │              │             │                           │ Esta planta despide un intenso y típico aroma, que se increm │                   │              │                  │
│                 │                                                             │              │             │                           │ enta con el roce. El tomillo resulta de gran belleza cuando  │                   │              │                  │
│                 │                                                             │              │             │                           │ está en flor. El tomillo atrae a avispas y abejas.\r\n En ja │                   │              │                  │
│                 │                                                             │              │             │                           │ rdinería se usa como manchas, para hacer borduras, para arom │                   │              │                  │
│                 │                                                             │              │             │                           │ atizar el ambiente, llenar huecos, cubrir rocas, para jardin │                   │              │                  │
│                 │                                                             │              │             │                           │ es en miniatura, etc. Arranque las flores y hojas secas del  │                   │              │                  │
│                 │                                                             │              │             │                           │ tallo y añadálos a un popurri, introdúzcalos en saquitos de  │                   │              │                  │
│                 │                                                             │              │             │                           │ hierbas o en la almohada. También puede usar las ramas secas │                   │              │                  │
│                 │                                                             │              │             │                           │  con flores para añadir aroma y textura a cestos abiertos.   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ AR-010          │ Santolina Chamaecyparys                                     │ Aromáticas   │ 15-20       │ Murcia Seasons            │                                                              │ 140               │ 1            │ 0                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-1            │ Expositor Cítricos Mix                                      │ Frutales     │ 100-120     │ Frutales Talavera S.A     │                                                              │ 15                │ 7            │ 5                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-10           │ Limonero 2 años injerto                                     │ Frutales     │             │ NaranjasValencianas.com   │ El limonero, pertenece al grupo de los cítricos, teniendo su │ 15                │ 7            │ 5                │
│                 │                                                             │              │             │                           │  origen hace unos 20 millones de años en el sudeste asiático │                   │              │                  │
│                 │                                                             │              │             │                           │ . Fue introducido por los árabes en el área mediterránea ent │                   │              │                  │
│                 │                                                             │              │             │                           │ re los años 1.000 a 1.200, habiendo experimentando numerosas │                   │              │                  │
│                 │                                                             │              │             │                           │  modificaciones debidas tanto a la selección natural mediant │                   │              │                  │
│                 │                                                             │              │             │                           │ e hibridaciones espontáneas como a las producidas por el hom │                   │              │                  │
│                 │                                                             │              │             │                           │ bre, en este caso buscando las necesidades del mercado.      │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-100          │ Nectarina                                                   │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ Se trata de un árbol derivado por mutación de los melocotone │ 50                │ 11           │ 8                │
│                 │                                                             │              │             │                           │ ros comunes, y los únicos caracteres diferenciales son la au │                   │              │                  │
│                 │                                                             │              │             │                           │ sencia de tomentosidad en la piel del fruto. La planta, si s │                   │              │                  │
│                 │                                                             │              │             │                           │ e deja crecer libremente, adopta un porte globoso con unas d │                   │              │                  │
│                 │                                                             │              │             │                           │ imensiones medias de 4-6 metros                              │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-101          │ Nogal                                                       │ Frutales     │ 8/10        │ Frutales Talavera S.A     │                                                              │ 50                │ 13           │ 10               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-102          │ Olea-Olivos                                                 │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ Existen dos hipótesis sobre el origen del olivo, una que pos │ 50                │ 18           │ 14               │
│                 │                                                             │              │             │                           │ tula que proviene de las costas de Siria, Líbano e Israel y  │                   │              │                  │
│                 │                                                             │              │             │                           │ otra que considera que lo considera originario de Asia menor │                   │              │                  │
│                 │                                                             │              │             │                           │ . La llegada a Europa probablemente tuvo lugar de mano de lo │                   │              │                  │
│                 │                                                             │              │             │                           │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │                   │              │                  │
│                 │                                                             │              │             │                           │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │                   │              │                  │
│                 │                                                             │              │             │                           │ icios de la presencia del olivo en las costas mediterráneas  │                   │              │                  │
│                 │                                                             │              │             │                           │ españolas coinciden con el dominio romano, aunque fueron pos │                   │              │                  │
│                 │                                                             │              │             │                           │ teriormente los árabes los que impulsaron su cultivo en Anda │                   │              │                  │
│                 │                                                             │              │             │                           │ lucía, convirtiendo a España en el primer país productor de  │                   │              │                  │
│                 │                                                             │              │             │                           │ aceite de oliva a nivel mundial.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-103          │ Olea-Olivos                                                 │ Frutales     │ 10/12       │ Frutales Talavera S.A     │ Existen dos hipótesis sobre el origen del olivo, una que pos │ 50                │ 25           │ 20               │
│                 │                                                             │              │             │                           │ tula que proviene de las costas de Siria, Líbano e Israel y  │                   │              │                  │
│                 │                                                             │              │             │                           │ otra que considera que lo considera originario de Asia menor │                   │              │                  │
│                 │                                                             │              │             │                           │ . La llegada a Europa probablemente tuvo lugar de mano de lo │                   │              │                  │
│                 │                                                             │              │             │                           │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │                   │              │                  │
│                 │                                                             │              │             │                           │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │                   │              │                  │
│                 │                                                             │              │             │                           │ icios de la presencia del olivo en las costas mediterráneas  │                   │              │                  │
│                 │                                                             │              │             │                           │ españolas coinciden con el dominio romano, aunque fueron pos │                   │              │                  │
│                 │                                                             │              │             │                           │ teriormente los árabes los que impulsaron su cultivo en Anda │                   │              │                  │
│                 │                                                             │              │             │                           │ lucía, convirtiendo a España en el primer país productor de  │                   │              │                  │
│                 │                                                             │              │             │                           │ aceite de oliva a nivel mundial.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-105          │ Olea-Olivos                                                 │ Frutales     │ 14/16       │ Frutales Talavera S.A     │ Existen dos hipótesis sobre el origen del olivo, una que pos │ 50                │ 70           │ 56               │
│                 │                                                             │              │             │                           │ tula que proviene de las costas de Siria, Líbano e Israel y  │                   │              │                  │
│                 │                                                             │              │             │                           │ otra que considera que lo considera originario de Asia menor │                   │              │                  │
│                 │                                                             │              │             │                           │ . La llegada a Europa probablemente tuvo lugar de mano de lo │                   │              │                  │
│                 │                                                             │              │             │                           │ s Fenicios, en transito por Chipre, Creta, e Islas del Mar E │                   │              │                  │
│                 │                                                             │              │             │                           │ geo, pasando a Grecia y más tarde a Italia. Los primeros ind │                   │              │                  │
│                 │                                                             │              │             │                           │ icios de la presencia del olivo en las costas mediterráneas  │                   │              │                  │
│                 │                                                             │              │             │                           │ españolas coinciden con el dominio romano, aunque fueron pos │                   │              │                  │
│                 │                                                             │              │             │                           │ teriormente los árabes los que impulsaron su cultivo en Anda │                   │              │                  │
│                 │                                                             │              │             │                           │ lucía, convirtiendo a España en el primer país productor de  │                   │              │                  │
│                 │                                                             │              │             │                           │ aceite de oliva a nivel mundial.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-106          │ Peral                                                       │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 50                │ 11           │ 8                │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-107          │ Peral                                                       │ Frutales     │ 10/12       │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-108          │ Peral                                                       │ Frutales     │ 12/14       │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 50                │ 32           │ 25               │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-11           │ Limonero 30/40                                              │ Frutales     │             │ NaranjasValencianas.com   │ El limonero, pertenece al grupo de los cítricos, teniendo su │ 15                │ 100          │ 80               │
│                 │                                                             │              │             │                           │  origen hace unos 20 millones de años en el sudeste asiático │                   │              │                  │
│                 │                                                             │              │             │                           │ . Fue introducido por los árabes en el área mediterránea ent │                   │              │                  │
│                 │                                                             │              │             │                           │ re los años 1.000 a 1.200, habiendo experimentando numerosas │                   │              │                  │
│                 │                                                             │              │             │                           │  modificaciones debidas tanto a la selección natural mediant │                   │              │                  │
│                 │                                                             │              │             │                           │ e hibridaciones espontáneas como a las producidas por el     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-12           │ Kunquat                                                     │ Frutales     │             │ NaranjasValencianas.com   │ su nombre científico se origina en honor a un hoticultor esc │ 15                │ 21           │ 16               │
│                 │                                                             │              │             │                           │ océs que recolectó especímenes en China, (\"Fortunella\"), R │                   │              │                  │
│                 │                                                             │              │             │                           │ obert Fortune (1812-1880), y \"margarita\", del latín margar │                   │              │                  │
│                 │                                                             │              │             │                           │ itus-a-um = perla, en alusión a sus pequeños y brillantes fr │                   │              │                  │
│                 │                                                             │              │             │                           │ utos. Se trata de un arbusto o árbol pequeño de 2-3 m de alt │                   │              │                  │
│                 │                                                             │              │             │                           │ ura, inerme o con escasas espinas.Hojas lanceoladas de 4-8 ( │                   │              │                  │
│                 │                                                             │              │             │                           │ -15) cm de longitud, con el ápice redondeado y la base cunea │                   │              │                  │
│                 │                                                             │              │             │                           │ da.Tienen el margen crenulado en su mitad superior, el haz v │                   │              │                  │
│                 │                                                             │              │             │                           │ erde brillante y el envés más pálido.Pecíolo ligeramente mar │                   │              │                  │
│                 │                                                             │              │             │                           │ ginado.Flores perfumadas solitarias o agrupadas en infloresc │                   │              │                  │
│                 │                                                             │              │             │                           │ encias axilares, blancas.El fruto es lo más característico,  │                   │              │                  │
│                 │                                                             │              │             │                           │ es el más pequeño de todos los cítricos y el único cuya cásc │                   │              │                  │
│                 │                                                             │              │             │                           │ ara se puede comer.Frutos pequeños, con semillas, de corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  fina, dulce, aromática y comestible, y de pulpa naranja ama │                   │              │                  │
│                 │                                                             │              │             │                           │ rillenta y ligeramente ácida.Sus frutos son muy pequeños y t │                   │              │                  │
│                 │                                                             │              │             │                           │ ienen un carácter principalmente ornamental.                 │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-13           │ Kunquat  EXTRA con FRUTA                                    │ Frutales     │ 150-170     │ NaranjasValencianas.com   │ su nombre científico se origina en honor a un hoticultor esc │ 15                │ 57           │ 45               │
│                 │                                                             │              │             │                           │ océs que recolectó especímenes en China, (\"Fortunella\"), R │                   │              │                  │
│                 │                                                             │              │             │                           │ obert Fortune (1812-1880), y \"margarita\", del latín margar │                   │              │                  │
│                 │                                                             │              │             │                           │ itus-a-um = perla, en alusión a sus pequeños y brillantes fr │                   │              │                  │
│                 │                                                             │              │             │                           │ utos. Se trata de un arbusto o árbol pequeño de 2-3 m de alt │                   │              │                  │
│                 │                                                             │              │             │                           │ ura, inerme o con escasas espinas.Hojas lanceoladas de 4-8 ( │                   │              │                  │
│                 │                                                             │              │             │                           │ -15) cm de longitud, con el ápice redondeado y la base cunea │                   │              │                  │
│                 │                                                             │              │             │                           │ da.Tienen el margen crenulado en su mitad superior, el haz v │                   │              │                  │
│                 │                                                             │              │             │                           │ erde brillante y el envés más pálido.Pecíolo ligeramente mar │                   │              │                  │
│                 │                                                             │              │             │                           │ ginado.Flores perfumadas solitarias o agrupadas en infloresc │                   │              │                  │
│                 │                                                             │              │             │                           │ encias axilares, blancas.El fruto es lo más característico,  │                   │              │                  │
│                 │                                                             │              │             │                           │ es el más pequeño de todos los cítricos y el único cuya cásc │                   │              │                  │
│                 │                                                             │              │             │                           │ ara se puede comer.Frutos pequeños, con semillas, de corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  fina, dulce, aromática y comestible, y de pulpa naranja ama │                   │              │                  │
│                 │                                                             │              │             │                           │ rillenta y ligeramente ácida.Sus frutos son muy pequeños y t │                   │              │                  │
│                 │                                                             │              │             │                           │ ienen un carácter principalmente ornamental.                 │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-15           │ Calamondin Copa                                             │ Frutales     │             │ Frutales Talavera S.A     │ Se trata de un pequeño arbolito de copa densa, con tendencia │ 15                │ 25           │ 20               │
│                 │                                                             │              │             │                           │  a la verticalidad, inerme o con cortas espinas. Sus hojas s │                   │              │                  │
│                 │                                                             │              │             │                           │ on pequeñas, elípticas de 5-10 cm de longitud, con los pecío │                   │              │                  │
│                 │                                                             │              │             │                           │ los estrechamente alados.Posee 1 o 2 flores en situación axi │                   │              │                  │
│                 │                                                             │              │             │                           │ lar, al final de las ramillas.Sus frutos son muy pequeños (3 │                   │              │                  │
│                 │                                                             │              │             │                           │ -3,5 cm de diámetro), con pocas semillas, esféricos u ovales │                   │              │                  │
│                 │                                                             │              │             │                           │ , con la zona apical aplanada; corteza de color naranja-roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zo, muy fina y fácilmente separable de la pulpa, que es dulc │                   │              │                  │
│                 │                                                             │              │             │                           │ e, ácida y comestible..                                      │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-16           │ Calamondin Copa EXTRA Con FRUTA                             │ Frutales     │ 100-120     │ Frutales Talavera S.A     │ Se trata de un pequeño arbolito de copa densa, con tendencia │ 15                │ 45           │ 36               │
│                 │                                                             │              │             │                           │  a la verticalidad, inerme o con cortas espinas. Sus hojas s │                   │              │                  │
│                 │                                                             │              │             │                           │ on pequeñas, elípticas de 5-10 cm de longitud, con los pecío │                   │              │                  │
│                 │                                                             │              │             │                           │ los estrechamente alados.Posee 1 o 2 flores en situación axi │                   │              │                  │
│                 │                                                             │              │             │                           │ lar, al final de las ramillas.Sus frutos son muy pequeños (3 │                   │              │                  │
│                 │                                                             │              │             │                           │ -3,5 cm de diámetro), con pocas semillas, esféricos u ovales │                   │              │                  │
│                 │                                                             │              │             │                           │ , con la zona apical aplanada; corteza de color naranja-roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zo, muy fina y fácilmente separable de la pulpa, que es dulc │                   │              │                  │
│                 │                                                             │              │             │                           │ e, ácida y comestible..                                      │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-17           │ Rosal bajo 1Âª -En maceta-inicio brotación                  │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 15                │ 2            │ 1                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-18           │ ROSAL TREPADOR                                              │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 350               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-2            │ Naranjo -Plantón joven 1 año injerto                        │ Frutales     │             │ NaranjasValencianas.com   │ El naranjo es un árbol pequeño, que no supera los 3-5 metros │ 15                │ 6            │ 4                │
│                 │                                                             │              │             │                           │  de altura, con una copa compacta, cónica, transformada en e │                   │              │                  │
│                 │                                                             │              │             │                           │ sérica gracias a la poda. Su tronco es de color gris y liso, │                   │              │                  │
│                 │                                                             │              │             │                           │  y las hojas son perennes, coriáceas, de un verde intenso y  │                   │              │                  │
│                 │                                                             │              │             │                           │ brillante, con forma oval o elíptico-lanceolada. Poseen, en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el caso del naranjo amargo, un típico peciolo alado en forma │                   │              │                  │
│                 │                                                             │              │             │                           │  de Â‘corazónÂ’, que en el naranjo dulce es más estrecho y m │                   │              │                  │
│                 │                                                             │              │             │                           │ enos patente.                                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-22           │ Pitimini rojo                                               │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 350               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-23           │ Rosal copa                                                  │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 400               │ 8            │ 6                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-29           │ Cerezo Napoleón                                             │ Frutales     │             │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-3            │ Naranjo 2 años injerto                                      │ Frutales     │             │ NaranjasValencianas.com   │ El naranjo es un árbol pequeño, que no supera los 3-5 metros │ 15                │ 7            │ 5                │
│                 │                                                             │              │             │                           │  de altura, con una copa compacta, cónica, transformada en e │                   │              │                  │
│                 │                                                             │              │             │                           │ sérica gracias a la poda. Su tronco es de color gris y liso, │                   │              │                  │
│                 │                                                             │              │             │                           │  y las hojas son perennes, coriáceas, de un verde intenso y  │                   │              │                  │
│                 │                                                             │              │             │                           │ brillante, con forma oval o elíptico-lanceolada. Poseen, en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el caso del naranjo amargo, un típico peciolo alado en forma │                   │              │                  │
│                 │                                                             │              │             │                           │  de Â‘corazónÂ’, que en el naranjo dulce es más estrecho y m │                   │              │                  │
│                 │                                                             │              │             │                           │ enos patente.                                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-31           │ Ciruelo Santa Rosa                                          │ Frutales     │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-33           │ Ciruelo Friar                                               │ Frutales     │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-34           │ Ciruelo Reina C. De Ollins                                  │ Frutales     │             │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-36           │ Granado Mollar de Elche                                     │ Frutales     │             │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 400               │ 9            │ 7                │
│                 │                                                             │              │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                                             │              │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                                             │              │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                                             │              │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                                             │              │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                                             │              │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                                             │              │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-37           │ Higuera Napolitana                                          │ Frutales     │             │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 400               │ 9            │ 7                │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-4            │ Naranjo calibre 8/10                                        │ Frutales     │             │ NaranjasValencianas.com   │ El naranjo es un árbol pequeño, que no supera los 3-5 metros │ 15                │ 29           │ 23               │
│                 │                                                             │              │             │                           │  de altura, con una copa compacta, cónica, transformada en e │                   │              │                  │
│                 │                                                             │              │             │                           │ sérica gracias a la poda. Su tronco es de color gris y liso, │                   │              │                  │
│                 │                                                             │              │             │                           │  y las hojas son perennes, coriáceas, de un verde intenso y  │                   │              │                  │
│                 │                                                             │              │             │                           │ brillante, con forma oval o elíptico-lanceolada. Poseen, en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el caso del naranjo amargo, un típico peciolo alado en forma │                   │              │                  │
│                 │                                                             │              │             │                           │  de Â‘corazónÂ’, que en el naranjo dulce es más estrecho y m │                   │              │                  │
│                 │                                                             │              │             │                           │ enos patente.                                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-40           │ Manzano Starking Delicious                                  │ Frutales     │             │ Frutales Talavera S.A     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │                   │              │                  │
│                 │                                                             │              │             │                           │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │                   │              │                  │
│                 │                                                             │              │             │                           │  color ceniciento verdoso sobre los ramos y escamosa y gris  │                   │              │                  │
│                 │                                                             │              │             │                           │ parda sobre las partes viejas del árbol. Tiene una vida de u │                   │              │                  │
│                 │                                                             │              │             │                           │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │                   │              │                  │
│                 │                                                             │              │             │                           │ e el tallo, de color verde oscuro, a veces tendiendo a negru │                   │              │                  │
│                 │                                                             │              │             │                           │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │                   │              │                  │
│                 │                                                             │              │             │                           │ n una espina                                                 │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-41           │ Manzano Reineta                                             │ Frutales     │             │ Frutales Talavera S.A     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │                   │              │                  │
│                 │                                                             │              │             │                           │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │                   │              │                  │
│                 │                                                             │              │             │                           │  color ceniciento verdoso sobre los ramos y escamosa y gris  │                   │              │                  │
│                 │                                                             │              │             │                           │ parda sobre las partes viejas del árbol. Tiene una vida de u │                   │              │                  │
│                 │                                                             │              │             │                           │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │                   │              │                  │
│                 │                                                             │              │             │                           │ e el tallo, de color verde oscuro, a veces tendiendo a negru │                   │              │                  │
│                 │                                                             │              │             │                           │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │                   │              │                  │
│                 │                                                             │              │             │                           │ n una espina                                                 │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-42           │ Manzano Golden Delicious                                    │ Frutales     │             │ Frutales Talavera S.A     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │                   │              │                  │
│                 │                                                             │              │             │                           │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │                   │              │                  │
│                 │                                                             │              │             │                           │  color ceniciento verdoso sobre los ramos y escamosa y gris  │                   │              │                  │
│                 │                                                             │              │             │                           │ parda sobre las partes viejas del árbol. Tiene una vida de u │                   │              │                  │
│                 │                                                             │              │             │                           │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │                   │              │                  │
│                 │                                                             │              │             │                           │ e el tallo, de color verde oscuro, a veces tendiendo a negru │                   │              │                  │
│                 │                                                             │              │             │                           │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │                   │              │                  │
│                 │                                                             │              │             │                           │ n una espina                                                 │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-43           │ Membrillero Gigante de Wranja                               │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 400               │ 8            │ 6                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-45           │ Melocotonero Amarillo de Agosto                             │ Frutales     │             │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-47           │ Melocotonero Paraguayo                                      │ Frutales     │             │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-48           │ Nogal Común                                                 │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 400               │ 9            │ 7                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-53           │ Peral Blanq. de Aranjuez                                    │ Frutales     │             │ Frutales Talavera S.A     │ Árbol piramidal, redondeado en su juventud, luego oval, que  │ 400               │ 8            │ 6                │
│                 │                                                             │              │             │                           │ llega hasta 20 metros de altura y por término medio vive 65  │                   │              │                  │
│                 │                                                             │              │             │                           │ años.Tronco alto, grueso, de corteza agrietada, gris, de la  │                   │              │                  │
│                 │                                                             │              │             │                           │ cual se destacan con frecuencia placas lenticulares.Las rama │                   │              │                  │
│                 │                                                             │              │             │                           │ s se insertan formando ángulo agudo con el tronco (45º), de  │                   │              │                  │
│                 │                                                             │              │             │                           │ corteza lisa, primero verde y luego gris-violácea, con numer │                   │              │                  │
│                 │                                                             │              │             │                           │ osas lenticelas.                                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-54           │ Níspero Tanaca                                              │ Frutales     │             │ Frutales Talavera S.A     │ Aunque originario del Sudeste de China, el níspero llegó a E │ 400               │ 9            │ 7                │
│                 │                                                             │              │             │                           │ uropa procedente de Japón en el siglo XVIII como árbol ornam │                   │              │                  │
│                 │                                                             │              │             │                           │ ental. En el siglo XIX se inició el consumo de los frutos en │                   │              │                  │
│                 │                                                             │              │             │                           │  toda el área mediterránea, donde se adaptó muy bien a las z │                   │              │                  │
│                 │                                                             │              │             │                           │ onas de cultivo de los cítricos.El cultivo intensivo comenzó │                   │              │                  │
│                 │                                                             │              │             │                           │  a desarrollarse a finales de los años 60 y principios de lo │                   │              │                  │
│                 │                                                             │              │             │                           │ s 70, cuando comenzaron a implantarse las variedades y técni │                   │              │                  │
│                 │                                                             │              │             │                           │ cas de cultivo actualmente utilizadas.                       │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-56           │ Nectarina                                                   │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 400               │ 8            │ 6                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-57           │ Kaki Rojo Brillante                                         │ Frutales     │             │ NaranjasValencianas.com   │ De crecimiento algo lento los primeros años, llega a alcanza │ 400               │ 9            │ 7                │
│                 │                                                             │              │             │                           │ r hasta doce metros de altura o más, aunque en cultivo se pr │                   │              │                  │
│                 │                                                             │              │             │                           │ efiere algo más bajo (5-6). Tronco corto y copa extendida. R │                   │              │                  │
│                 │                                                             │              │             │                           │ amifica muy poco debido a la dominancia apical. Porte más o  │                   │              │                  │
│                 │                                                             │              │             │                           │ menos piramidal, aunque con la edad se hace más globoso.     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-58           │ Albaricoquero                                               │ Frutales     │ 8/10        │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 200               │ 11           │ 8                │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-6            │ Mandarino 2 años injerto                                    │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 15                │ 7            │ 5                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-60           │ Albaricoquero                                               │ Frutales     │ 12/14       │ Melocotones de Cieza S.A. │ árbol que puede pasar de los 6 m de altura, en la región med │ 200               │ 32           │ 25               │
│                 │                                                             │              │             │                           │ iterránea con ramas formando una copa redondeada. La corteza │                   │              │                  │
│                 │                                                             │              │             │                           │  del tronco es pardo-violácea, agrietada; las ramas son roji │                   │              │                  │
│                 │                                                             │              │             │                           │ zas y extendidas cuando jóvenes y las ramas secundarias son  │                   │              │                  │
│                 │                                                             │              │             │                           │ cortas, divergentes y escasas. Las yemas latentes son frecue │                   │              │                  │
│                 │                                                             │              │             │                           │ ntes especialmente sobre las ramas viejas.                   │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-64           │ Cerezo                                                      │ Frutales     │ 10/12       │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 15                │ 22           │ 17               │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-66           │ Cerezo                                                      │ Frutales     │ 14/16       │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-67           │ Cerezo                                                      │ Frutales     │ 16/18       │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 50                │ 70           │ 56               │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-69           │ Cerezo                                                      │ Frutales     │ 20/25       │ Jerte Distribuciones S.L. │ Las principales especies de cerezo cultivadas en el mundo so │ 50                │ 91           │ 72               │
│                 │                                                             │              │             │                           │ n el cerezo dulce (Prunus avium), el guindo (P. cerasus) y e │                   │              │                  │
│                 │                                                             │              │             │                           │ l cerezo \"Duke\", híbrido de los anteriores. Ambas especies │                   │              │                  │
│                 │                                                             │              │             │                           │  son naturales del sureste de Europa y oeste de Asia. El cer │                   │              │                  │
│                 │                                                             │              │             │                           │ ezo dulce tuvo su origen probablemente en el mar Negro y en  │                   │              │                  │
│                 │                                                             │              │             │                           │ el mar Caspio, difundiéndose después hacia Europa y Asia, ll │                   │              │                  │
│                 │                                                             │              │             │                           │ evado por los pájaros y las migraciones humanas. Fue uno de  │                   │              │                  │
│                 │                                                             │              │             │                           │ los frutales más apreciados por los griegos y con el Imperio │                   │              │                  │
│                 │                                                             │              │             │                           │  Romano se extendió a regiones muy diversas. En la actualida │                   │              │                  │
│                 │                                                             │              │             │                           │ d, el cerezo se encuentra difundido por numerosas regiones y │                   │              │                  │
│                 │                                                             │              │             │                           │  países del mundo con clima templado                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-7            │ Mandarino calibre 8/10                                      │ Frutales     │             │ Frutales Talavera S.A     │                                                              │ 15                │ 29           │ 23               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-71           │ Ciruelo                                                     │ Frutales     │ 10/12       │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-72           │ Ciruelo                                                     │ Frutales     │ 12/14       │ Frutales Talavera S.A     │ árbol de tamaño mediano que alcanza una altura máxima de 5-6 │ 50                │ 32           │ 25               │
│                 │                                                             │              │             │                           │  m. Tronco de corteza pardo-azulada, brillante, lisa o agrie │                   │              │                  │
│                 │                                                             │              │             │                           │ tada longitudinalmente. Produce ramas alternas, pequeñas, de │                   │              │                  │
│                 │                                                             │              │             │                           │ lgadas, unas veces lisas, glabras y otras pubescentes y vell │                   │              │                  │
│                 │                                                             │              │             │                           │ osas                                                         │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-75           │ Granado                                                     │ Frutales     │ 12/14       │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 50                │ 32           │ 25               │
│                 │                                                             │              │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                                             │              │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                                             │              │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                                             │              │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                                             │              │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                                             │              │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                                             │              │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-77           │ Granado                                                     │ Frutales     │ 16/18       │ Frutales Talavera S.A     │ pequeño árbol caducifolio, a veces con porte arbustivo, de 3 │ 50                │ 70           │ 56               │
│                 │                                                             │              │             │                           │  a 6 m de altura, con el tronco retorcido. Madera dura y cor │                   │              │                  │
│                 │                                                             │              │             │                           │ teza escamosa de color grisáceo. Las ramitas jóvenes son más │                   │              │                  │
│                 │                                                             │              │             │                           │  o menos cuadrangulares o angostas y de cuatro alas, posteri │                   │              │                  │
│                 │                                                             │              │             │                           │ ormente se vuelven redondas con corteza de color café grisác │                   │              │                  │
│                 │                                                             │              │             │                           │ eo, la mayoría de las ramas, pero especialmente las pequeñas │                   │              │                  │
│                 │                                                             │              │             │                           │  ramitas axilares, son en forma de espina o terminan en una  │                   │              │                  │
│                 │                                                             │              │             │                           │ espina aguda; la copa es extendida.                          │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-78           │ Higuera                                                     │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 50                │ 15           │ 12               │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-79           │ Higuera                                                     │ Frutales     │ 10/12       │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-8            │ Limonero -Plantón joven                                     │ Frutales     │             │ NaranjasValencianas.com   │ El limonero, pertenece al grupo de los cítricos, teniendo su │ 15                │ 6            │ 4                │
│                 │                                                             │              │             │                           │  origen hace unos 20 millones de años en el sudeste asiático │                   │              │                  │
│                 │                                                             │              │             │                           │ . Fue introducido por los árabes en el área mediterránea ent │                   │              │                  │
│                 │                                                             │              │             │                           │ re los años 1.000 a 1.200, habiendo experimentando numerosas │                   │              │                  │
│                 │                                                             │              │             │                           │  modificaciones debidas tanto a la selección natural mediant │                   │              │                  │
│                 │                                                             │              │             │                           │ e hibridaciones espontáneas como a las producidas por el     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-80           │ Higuera                                                     │ Frutales     │ 12/14       │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 50                │ 32           │ 25               │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-81           │ Higuera                                                     │ Frutales     │ 14/16       │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-82           │ Higuera                                                     │ Frutales     │ 16/18       │ Frutales Talavera S.A     │ La higuera (Ficus carica L.) es un árbol típico de secano en │ 50                │ 70           │ 56               │
│                 │                                                             │              │             │                           │  los países mediterráneos. Su rusticidad y su fácil multipli │                   │              │                  │
│                 │                                                             │              │             │                           │ cación hacen de la higuera un frutal muy apropiado para el c │                   │              │                  │
│                 │                                                             │              │             │                           │ ultivo extensivo.. Siempre ha sido considerado como árbol qu │                   │              │                  │
│                 │                                                             │              │             │                           │ e no requiere cuidado alguno una vez plantado y arraigado, l │                   │              │                  │
│                 │                                                             │              │             │                           │ imitándose el hombre a recoger de él los frutos cuando madur │                   │              │                  │
│                 │                                                             │              │             │                           │ an, unos para consumo en fresco y otros para conserva. Las ú │                   │              │                  │
│                 │                                                             │              │             │                           │ nicas higueras con cuidados culturales esmerados, en muchas  │                   │              │                  │
│                 │                                                             │              │             │                           │ comarcas, son las brevales, por el interés económico de su p │                   │              │                  │
│                 │                                                             │              │             │                           │ rimera cosecha, la de brevas.                                │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-84           │ Kaki                                                        │ Frutales     │ 8/10        │ NaranjasValencianas.com   │ De crecimiento algo lento los primeros años, llega a alcanza │ 50                │ 13           │ 10               │
│                 │                                                             │              │             │                           │ r hasta doce metros de altura o más, aunque en cultivo se pr │                   │              │                  │
│                 │                                                             │              │             │                           │ efiere algo más bajo (5-6). Tronco corto y copa extendida. R │                   │              │                  │
│                 │                                                             │              │             │                           │ amifica muy poco debido a la dominancia apical. Porte más o  │                   │              │                  │
│                 │                                                             │              │             │                           │ menos piramidal, aunque con la edad se hace más globoso.     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-85           │ Kaki                                                        │ Frutales     │ 16/18       │ NaranjasValencianas.com   │ De crecimiento algo lento los primeros años, llega a alcanza │ 50                │ 70           │ 56               │
│                 │                                                             │              │             │                           │ r hasta doce metros de altura o más, aunque en cultivo se pr │                   │              │                  │
│                 │                                                             │              │             │                           │ efiere algo más bajo (5-6). Tronco corto y copa extendida. R │                   │              │                  │
│                 │                                                             │              │             │                           │ amifica muy poco debido a la dominancia apical. Porte más o  │                   │              │                  │
│                 │                                                             │              │             │                           │ menos piramidal, aunque con la edad se hace más globoso.     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-86           │ Manzano                                                     │ Frutales     │ 8/10        │ Frutales Talavera S.A     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │ 50                │ 11           │ 8                │
│                 │                                                             │              │             │                           │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │                   │              │                  │
│                 │                                                             │              │             │                           │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │                   │              │                  │
│                 │                                                             │              │             │                           │  color ceniciento verdoso sobre los ramos y escamosa y gris  │                   │              │                  │
│                 │                                                             │              │             │                           │ parda sobre las partes viejas del árbol. Tiene una vida de u │                   │              │                  │
│                 │                                                             │              │             │                           │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │                   │              │                  │
│                 │                                                             │              │             │                           │ e el tallo, de color verde oscuro, a veces tendiendo a negru │                   │              │                  │
│                 │                                                             │              │             │                           │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │                   │              │                  │
│                 │                                                             │              │             │                           │ n una espina                                                 │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-87           │ Manzano                                                     │ Frutales     │ 10/12       │ Frutales Talavera S.A     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │ 50                │ 22           │ 17               │
│                 │                                                             │              │             │                           │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │                   │              │                  │
│                 │                                                             │              │             │                           │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │                   │              │                  │
│                 │                                                             │              │             │                           │  color ceniciento verdoso sobre los ramos y escamosa y gris  │                   │              │                  │
│                 │                                                             │              │             │                           │ parda sobre las partes viejas del árbol. Tiene una vida de u │                   │              │                  │
│                 │                                                             │              │             │                           │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │                   │              │                  │
│                 │                                                             │              │             │                           │ e el tallo, de color verde oscuro, a veces tendiendo a negru │                   │              │                  │
│                 │                                                             │              │             │                           │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │                   │              │                  │
│                 │                                                             │              │             │                           │ n una espina                                                 │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-89           │ Manzano                                                     │ Frutales     │ 14/16       │ Frutales Talavera S.A     │ alcanza como máximo 10 m. de altura y tiene una copa globosa │ 50                │ 49           │ 39               │
│                 │                                                             │              │             │                           │ . Tronco derecho que normalmente alcanza de 2 a 2,5 m. de al │                   │              │                  │
│                 │                                                             │              │             │                           │ tura, con corteza cubierta de lenticelas, lisa, adherida, de │                   │              │                  │
│                 │                                                             │              │             │                           │  color ceniciento verdoso sobre los ramos y escamosa y gris  │                   │              │                  │
│                 │                                                             │              │             │                           │ parda sobre las partes viejas del árbol. Tiene una vida de u │                   │              │                  │
│                 │                                                             │              │             │                           │ nos 60-80 años. Las ramas se insertan en ángulo abierto sobr │                   │              │                  │
│                 │                                                             │              │             │                           │ e el tallo, de color verde oscuro, a veces tendiendo a negru │                   │              │                  │
│                 │                                                             │              │             │                           │ zco o violáceo. Los brotes jóvenes terminan con frecuencia e │                   │              │                  │
│                 │                                                             │              │             │                           │ n una espina                                                 │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-9            │ Limonero calibre 8/10                                       │ Frutales     │             │ NaranjasValencianas.com   │ El limonero, pertenece al grupo de los cítricos, teniendo su │ 15                │ 29           │ 23               │
│                 │                                                             │              │             │                           │  origen hace unos 20 millones de años en el sudeste asiático │                   │              │                  │
│                 │                                                             │              │             │                           │ . Fue introducido por los árabes en el área mediterránea ent │                   │              │                  │
│                 │                                                             │              │             │                           │ re los años 1.000 a 1.200, habiendo experimentando numerosas │                   │              │                  │
│                 │                                                             │              │             │                           │  modificaciones debidas tanto a la selección natural mediant │                   │              │                  │
│                 │                                                             │              │             │                           │ e hibridaciones espontáneas como a las producidas por el     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-90           │ Níspero                                                     │ Frutales     │ 16/18       │ Frutales Talavera S.A     │ Aunque originario del Sudeste de China, el níspero llegó a E │ 50                │ 70           │ 56               │
│                 │                                                             │              │             │                           │ uropa procedente de Japón en el siglo XVIII como árbol ornam │                   │              │                  │
│                 │                                                             │              │             │                           │ ental. En el siglo XIX se inició el consumo de los frutos en │                   │              │                  │
│                 │                                                             │              │             │                           │  toda el área mediterránea, donde se adaptó muy bien a las z │                   │              │                  │
│                 │                                                             │              │             │                           │ onas de cultivo de los cítricos.El cultivo intensivo comenzó │                   │              │                  │
│                 │                                                             │              │             │                           │  a desarrollarse a finales de los años 60 y principios de lo │                   │              │                  │
│                 │                                                             │              │             │                           │ s 70, cuando comenzaron a implantarse las variedades y técni │                   │              │                  │
│                 │                                                             │              │             │                           │ cas de cultivo actualmente utilizadas.                       │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-91           │ Níspero                                                     │ Frutales     │ 18/20       │ Frutales Talavera S.A     │ Aunque originario del Sudeste de China, el níspero llegó a E │ 50                │ 80           │ 64               │
│                 │                                                             │              │             │                           │ uropa procedente de Japón en el siglo XVIII como árbol ornam │                   │              │                  │
│                 │                                                             │              │             │                           │ ental. En el siglo XIX se inició el consumo de los frutos en │                   │              │                  │
│                 │                                                             │              │             │                           │  toda el área mediterránea, donde se adaptó muy bien a las z │                   │              │                  │
│                 │                                                             │              │             │                           │ onas de cultivo de los cítricos.El cultivo intensivo comenzó │                   │              │                  │
│                 │                                                             │              │             │                           │  a desarrollarse a finales de los años 60 y principios de lo │                   │              │                  │
│                 │                                                             │              │             │                           │ s 70, cuando comenzaron a implantarse las variedades y técni │                   │              │                  │
│                 │                                                             │              │             │                           │ cas de cultivo actualmente utilizadas.                       │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ FR-94           │ Melocotonero                                                │ Frutales     │ 12/14       │ Melocotones de Cieza S.A. │ Árbol caducifolio de porte bajo con corteza lisa, de color c │ 50                │ 32           │ 25               │
│                 │                                                             │              │             │                           │ eniciento. Sus hojas son alargadas con el margen ligeramente │                   │              │                  │
│                 │                                                             │              │             │                           │  aserrado, de color verde brillante, algo más claras por el  │                   │              │                  │
│                 │                                                             │              │             │                           │ envés. El melocotonero está muy arraigado en la cultura asiá │                   │              │                  │
│                 │                                                             │              │             │                           │ tica.\r\nEn Japón, el noble heroe Momotaro, una especie de C │                   │              │                  │
│                 │                                                             │              │             │                           │ id japonés, nació del interior de un enorme melocotón que fl │                   │              │                  │
│                 │                                                             │              │             │                           │ otaba río abajo.\r\nEn China se piensa que comer melocotón c │                   │              │                  │
│                 │                                                             │              │             │                           │ onfiere longevidad al ser humano, ya que formaba parte de la │                   │              │                  │
│                 │                                                             │              │             │                           │  dieta de sus dioses inmortales.                             │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-101          │ Expositor Mimosa Semilla Mix                                │ Ornamentales │ 170-200     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 6            │ 4                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-102          │ Mimosa Semilla Bayleyana                                    │ Ornamentales │ 170-200     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 6            │ 4                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-104          │ Mimosa Semilla Cyanophylla                                  │ Ornamentales │ 200-225     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 10           │ 8                │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-115          │ Forsytia Intermedia \"Lynwood\"                             │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 7            │ 5                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-116          │ Hibiscus Syriacus  \"Diana\" -Blanco Puro                   │ Ornamentales │ 35-45       │ Viveros EL OASIS          │ Por su capacidad de soportar podas, pueden ser fácilmente mo │ 120               │ 7            │ 5                │
│                 │                                                             │              │             │                           │ ldeadas como bonsái en el transcurso de pocos años. Flores d │                   │              │                  │
│                 │                                                             │              │             │                           │ e muchos colores según la variedad, desde el blanco puro al  │                   │              │                  │
│                 │                                                             │              │             │                           │ rojo intenso, del amarillo al anaranjado. La flor apenas dur │                   │              │                  │
│                 │                                                             │              │             │                           │ a 1 día, pero continuamente aparecen nuevas y la floración s │                   │              │                  │
│                 │                                                             │              │             │                           │ e prolonga durante todo el periodo de crecimiento vegetativo │                   │              │                  │
│                 │                                                             │              │             │                           │ .                                                            │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-119          │ Laurus Nobilis Arbusto - Ramificado Bajo                    │ Ornamentales │ 40-50       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-120          │ Lonicera Nitida                                             │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-122          │ Lonicera Pileata                                            │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-123          │ Philadelphus \"Virginal\"                                   │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-125          │ Viburnum Tinus \"Eve Price\"                                │ Ornamentales │ 35-45       │ Viveros EL OASIS          │                                                              │ 120               │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-127          │ Camelia japonica                                            │ Ornamentales │ 40-60       │ Viveros EL OASIS          │ Arbusto excepcional por su floración otoñal, invernal o prim │ 50                │ 7            │ 5                │
│                 │                                                             │              │             │                           │ averal. Flores: Las flores son solitarias, aparecen en el áp │                   │              │                  │
│                 │                                                             │              │             │                           │ ice de cada rama, y son con una corola simple o doble, y com │                   │              │                  │
│                 │                                                             │              │             │                           │ prendiendo varios colores. Suelen medir unos 7-12 cm de diÃ  │                   │              │                  │
│                 │                                                             │              │             │                           │ metro y tienen 5 sépalos y 5 pétalos. Estambres numerosos un │                   │              │                  │
│                 │                                                             │              │             │                           │ idos en la mitad o en 2/3 de su longitud.                    │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-128          │ Camelia japonica ejemplar                                   │ Ornamentales │ 200-250     │ Viveros EL OASIS          │ Arbusto excepcional por su floración otoñal, invernal o prim │ 50                │ 98           │ 78               │
│                 │                                                             │              │             │                           │ averal. Flores: Las flores son solitarias, aparecen en el áp │                   │              │                  │
│                 │                                                             │              │             │                           │ ice de cada rama, y son con una corola simple o doble, y com │                   │              │                  │
│                 │                                                             │              │             │                           │ prendiendo varios colores. Suelen medir unos 7-12 cm de diÃ  │                   │              │                  │
│                 │                                                             │              │             │                           │ metro y tienen 5 sépalos y 5 pétalos. Estambres numerosos un │                   │              │                  │
│                 │                                                             │              │             │                           │ idos en la mitad o en 2/3 de su longitud.                    │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-129          │ Camelia japonica ejemplar                                   │ Ornamentales │ 250-300     │ Viveros EL OASIS          │ Arbusto excepcional por su floración otoñal, invernal o prim │ 50                │ 110          │ 88               │
│                 │                                                             │              │             │                           │ averal. Flores: Las flores son solitarias, aparecen en el áp │                   │              │                  │
│                 │                                                             │              │             │                           │ ice de cada rama, y son con una corola simple o doble, y com │                   │              │                  │
│                 │                                                             │              │             │                           │ prendiendo varios colores. Suelen medir unos 7-12 cm de diÃ  │                   │              │                  │
│                 │                                                             │              │             │                           │ metro y tienen 5 sépalos y 5 pétalos. Estambres numerosos un │                   │              │                  │
│                 │                                                             │              │             │                           │ idos en la mitad o en 2/3 de su longitud.                    │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-130          │ Callistemom COPA                                            │ Ornamentales │ 110/120     │ Viveros EL OASIS          │ Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y │ 50                │ 18           │ 14               │
│                 │                                                             │              │             │                           │  colgantes (de ahí lo de \"llorón\")..                       │                   │              │                  │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-136          │ Nerium oleander ARBOL Calibre 8/10                          │ Ornamentales │ 225-250     │ Viveros EL OASIS          │                                                              │ 100               │ 18           │ 14               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-139          │ Landora Amarillo, Rose Gaujard bicolor blanco-rojo          │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-140          │ Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-141          │ Pitimini rojo                                               │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-146          │ Bougamvillea Sanderiana Tutor                               │ Ornamentales │ 125-150     │ Viveros EL OASIS          │                                                              │ 100               │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-147          │ Bougamvillea Sanderiana Tutor                               │ Ornamentales │ 180-200     │ Viveros EL OASIS          │                                                              │ 100               │ 7            │ 5                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-150          │ Bougamvillea roja, naranja                                  │ Ornamentales │ 110-130     │ Viveros EL OASIS          │                                                              │ 100               │ 2            │ 1                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-152          │ Expositor Árboles clima continental                         │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-155          │ Acer Negundo                                                │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-156          │ Acer platanoides                                            │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-157          │ Acer Pseudoplatanus                                         │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-159          │ Brachychiton Discolor                                       │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 100               │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-160          │ Brachychiton Rupestris                                      │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 100               │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-165          │ Erytrina Kafra                                              │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-168          │ Eucalyptus Ficifolia                                        │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-172          │ Lagunaria patersonii  calibre 8/10                          │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 18           │ 14               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-174          │ Morus Alba  calibre 8/10                                    │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 18           │ 14               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-176          │ Prunus pisardii                                             │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-177          │ Robinia Pseudoacacia Casque Rouge                           │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 15           │ 12               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-179          │ Sesbania Punicea                                            │ Ornamentales │ 170-200     │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-181          │ Tamarix  Ramosissima Pink Cascade                           │ Ornamentales │ 200-225     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-186          │ Sasa palmata                                                │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-188          │ Sasa palmata                                                │ Ornamentales │ 50-60       │ Viveros EL OASIS          │                                                              │ 80                │ 25           │ 20               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-193          │ Phylostachys biseti                                         │ Ornamentales │ 160-180     │ Viveros EL OASIS          │                                                              │ 80                │ 20           │ 16               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-196          │ Cedrus Deodara                                              │ Ornamentales │ 80-100      │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-200          │ Juniperus horizontalis Wiltonii                             │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-203          │ Pinus Canariensis                                           │ Ornamentales │ 80-100      │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-204          │ Pinus Halepensis                                            │ Ornamentales │ 160-180     │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-205          │ Pinus Pinea -Pino Piñonero                                  │ Ornamentales │ 70-80       │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-206          │ Thuja Esmeralda                                             │ Ornamentales │ 80-100      │ Viveros EL OASIS          │                                                              │ 80                │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-207          │ Tuja Occidentalis Woodwardii                                │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-208          │ Tuja orientalis \"Aurea nana\"                              │ Ornamentales │ 20-30       │ Viveros EL OASIS          │                                                              │ 80                │ 4            │ 3                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-209          │ Archontophoenix Cunninghamiana                              │ Ornamentales │ 80 - 100    │ Viveros EL OASIS          │                                                              │ 80                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-210          │ Beucarnea Recurvata                                         │ Ornamentales │ 130  - 150  │ Viveros EL OASIS          │                                                              │ 2                 │ 39           │ 31               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-211          │ Beucarnea Recurvata                                         │ Ornamentales │ 180 - 200   │ Viveros EL OASIS          │                                                              │ 5                 │ 59           │ 47               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-213          │ Bismarckia Nobilis                                          │ Ornamentales │ 240 - 260   │ Viveros EL OASIS          │                                                              │ 4                 │ 266          │ 212              │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-214          │ Brahea Armata                                               │ Ornamentales │ 45 - 60     │ Viveros EL OASIS          │                                                              │ 0                 │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-217          │ Brahea Edulis                                               │ Ornamentales │ 140 - 160   │ Viveros EL OASIS          │                                                              │ 100               │ 64           │ 51               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-218          │ Butia Capitata                                              │ Ornamentales │ 70 - 90     │ Viveros EL OASIS          │                                                              │ 100               │ 25           │ 20               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-222          │ Butia Capitata                                              │ Ornamentales │ 130 - 150   │ Viveros EL OASIS          │                                                              │ 100               │ 87           │ 69               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-225          │ Chamaerops Humilis                                          │ Ornamentales │ 70 - 90     │ Viveros EL OASIS          │                                                              │ 100               │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-226          │ Chamaerops Humilis                                          │ Ornamentales │ 115 - 130   │ Viveros EL OASIS          │                                                              │ 100               │ 38           │ 30               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-227          │ Chamaerops Humilis                                          │ Ornamentales │ 130 - 150   │ Viveros EL OASIS          │                                                              │ 100               │ 64           │ 51               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-234          │ Dracaena Drago                                              │ Ornamentales │ 130 - 150   │ Viveros EL OASIS          │                                                              │ 2                 │ 64           │ 51               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-236          │ Jubaea Chilensis                                            │ Ornamentales │             │ Viveros EL OASIS          │                                                              │ 100               │ 49           │ 39               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-237          │ Livistonia Australis                                        │ Ornamentales │ 100 - 125   │ Viveros EL OASIS          │                                                              │ 50                │ 19           │ 15               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-240          │ Phoenix Canariensis                                         │ Ornamentales │ 110 - 130   │ Viveros EL OASIS          │                                                              │ 50                │ 6            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-241          │ Phoenix Canariensis                                         │ Ornamentales │ 180 - 200   │ Viveros EL OASIS          │                                                              │ 50                │ 19           │ 15               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-243          │ Rhaphis Humilis                                             │ Ornamentales │ 150- 170    │ Viveros EL OASIS          │                                                              │ 50                │ 64           │ 51               │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-247          │ Trachycarpus Fortunei                                       │ Ornamentales │ 250-300     │ Viveros EL OASIS          │                                                              │ 2                 │ 462          │ 369              │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-249          │ Washingtonia Robusta                                        │ Ornamentales │ 130 - 150   │ Viveros EL OASIS          │                                                              │ 15                │ 5            │ 4                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-250          │ Yucca Jewel                                                 │ Ornamentales │ 80 - 105    │ Viveros EL OASIS          │                                                              │ 15                │ 10           │ 8                │
├─────────────────┼─────────────────────────────────────────────────────────────┼──────────────┼─────────────┼───────────────────────────┼──────────────────────────────────────────────────────────────┼───────────────────┼──────────────┼──────────────────┤
│ OR-99           │ Mimosa DEALBATA Gaulois Astier                              │ Ornamentales │ 200-225     │ Viveros EL OASIS          │ Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, │ 100               │ 14           │ 11               │
│                 │                                                             │              │             │                           │  Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimo │                   │              │                  │
│                 │                                                             │              │             │                           │ saceae. Origen: Australia, Sureste, (N. G. del Sur y Victori │                   │              │                  │
│                 │                                                             │              │             │                           │ a). Arbol de follaje persistente muy usado en parques por su │                   │              │                  │
│                 │                                                             │              │             │                           │  atractiva floración amarilla hacia fines del invierno. Altu │                   │              │                  │
│                 │                                                             │              │             │                           │ ra: de 3 a 10 metros generalmente. Crecimiento rápido. Folla │                   │              │                  │
│                 │                                                             │              │             │                           │ je perenne de tonos plateados, muy ornamental. Sus hojas son │                   │              │                  │
│                 │                                                             │              │             │                           │  de textura fina, de color verde y sus flores amarillas que  │                   │              │                  │
│                 │                                                             │              │             │                           │ aparecen en racimos grandes. Florece de Enero a Marzo (Hemis │                   │              │                  │
│                 │                                                             │              │             │                           │ ferio Norte). Legumbre de 5-9 cm de longitud, recta o ligera │                   │              │                  │
│                 │                                                             │              │             │                           │ mente curvada, con los bordes algo constreñidos entre las se │                   │              │                  │
│                 │                                                             │              │             │                           │ millas, que se disponen en el fruto longitudinalmente...     │                   │              │                  │
└─────────────────┴─────────────────────────────────────────────────────────────┴──────────────┴─────────────┴───────────────────────────┴──────────────────────────────────────────────────────────────┴───────────────────┴──────────────┴──────────────────┘
**/
```

## Consultas variadas en SQL

```sql
-- Devuelve el listado de clientes indicando el nombre del cliente y cuántos pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido.
-- Devuelve un listado con los nombres de los clientes y el total pagado por cada uno de ellos. Tenga en cuenta que pueden existir clientes que no han realizado ningún pago.
-- Devuelve el nombre de los clientes que hayan hecho pedidos en 2008 ordenados alfabéticamente de menor a mayor.
-- Devuelve el nombre del cliente, el nombre y primer apellido de su representante de ventas y el número de teléfono de la oficina del representante de ventas, de aquellos clientes que no hayan realizado ningún pago.
-- Devuelve el listado de clientes donde aparezca el nombre del cliente, el nombre y primer apellido de su representante de ventas y la ciudad donde está su oficina.
-- Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.
-- Devuelve un listado indicando todas las ciudades donde hay oficinas y el número de empleados que tiene.
```

</div>