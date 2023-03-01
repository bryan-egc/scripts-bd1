/*
select * from stores

update stocks set product_id='3' where store_id = '3';

/*MOSTRAR: IdProducto, Nombre de Producto, Tienda, Cantidad*/*/
select 
	products.product_id, 
	product_name, 
	store_name, 
	quantity 
from 
products 
INNER JOIN stores
ON 
products.product_id = stores.store_id
INNER JOIN stocks
ON 
products.product_id = stores.store_id




select * from [PracticaTablas].[dbo].[products], [PracticaTablas].[dbo].stores, PracticaTablas.dbo.stocks

/*Mostrar Todos los Productos y el Stock por tienda*/
select 
	stores.store_name,
	products.product_name,
	stocks.quantity
from 
products 
inner join stores 
on 
products.product_id = stores.store_id 
inner join stocks 
on 
products.product_id = stores.store_id

/*Crear el producto "USB-C" para la tienda de ID=10000 (sino existe crearla) con stock = 5*/

/*Creación tienda ID = 100000*/
insert into 
stores (store_id, store_name, phone, email, street, city, states) 
values ('10000', 'Tienda W', '4781973', 'fklak@masd', 'Mixco', 'Guatemala', 'Ciudad de Guatemala')

/*Creación de la nueva marca de la USB*/
insert into
brands (brand_id, brand_name)
values ('4', 'HP')

/*Creación del producto USB-C*/
insert into
products (product_id, product_name, brand_id, category_id, model_year, list_price)
values ('4', 'USB-C', '4', '2','2010','45')

/*Ingreso de stock al producto en la tienda nueva*/
insert into 
stocks (store_id, product_id, quantity)
values ('10000', '4', '5')

/*Mostrar un listado completo de tiendas con el stock para el producto con ID creado en el punto anterior*/

select 
	stores.store_id,
	store_name,
	phone,
	email,
	street,
	city,
	states,
	product_id,
	quantity
from 
stores 
left outer join stocks 
on stores.store_id = stocks.store_id 
where product_id = '4'



/*VCliente: IdCliente, Nombre Completo, Email*/

CREATE VIEW vcliente
as 
select customer_id,
CONCAT(first_name,' ', last_name) full_name, 
email 
from customers; 

select * from vcliente

/*VTienda: IdTienda, Nombre, Telefono, Direccion, Ciudad, Email*/

CREATE VIEW VTienda
as
select store_id,
store_name,
phone,
street,
city,
email
from stores;

select * from VTienda

/*VStaff: IdStaff, Nombre Completo, email, telefono, estado, IdTienda*/

CREATE VIEW VStaff
as
select staff_id,
CONCAT(first_name, ' ', last_name) full_name,
email,
phone,
active,
store_id
from staffs;

select * from VStaff