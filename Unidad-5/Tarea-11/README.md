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
select e.nombre, j.nombre from empleado as e, empleado as j where
-- Devuelve un listado que muestre el nombre de cada empleados, el nombre de su jefe y el nombre del jefe de sus jefe.
select e.nombre, j.nombre, jj.nombre from  empleado as e, empleado as j, empleado as jj where
-- Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.
select c.nombre_cliente from cliente as c, pedido as p where
-- Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.
select c.codigo_cliente, c.nombre_cliente, g.gama from cliente as c, pedidos as p, detalle_pedido as dp, producto as pr, gama as g where
```

</div>