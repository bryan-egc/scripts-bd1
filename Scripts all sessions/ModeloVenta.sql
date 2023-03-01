/*SP's*/
/*ABC Factura*/
/*Altas de Facturas*/
create procedure AltaFactura (@aF_NoFactura int, @aF_NitCliente int, @aF_Moneda int, @aF_Fecha date)
as
begin
insert into Factura (No_Factura,Nit_Cliente,Moneda,Fecha) 
values (@aF_NoFactura, @aF_NitCliente, @aF_Moneda, @aF_Fecha)
end

/*Bajas de Facturas*/
create procedure BajaFactura (@aB_NoFactura int)
as
begin
delete from Factura
where No_Factura = @aB_NoFactura
end

/*Cambios de Facturas*/
create procedure CambiosFactura (@cF_NoFactura int, @cF_NitCliente int, @cF_Moneda int, @cF_Fecha date)
as
begin
	update Factura
	set
	Nit_Cliente = @cF_NitCliente where No_Factura = @cF_NoFactura
	update Factura
	set
	Moneda = @cF_Moneda where No_Factura = @cF_NoFactura
	update Factura
	set
	Fecha = @cF_Fecha where No_Factura = @cF_NoFactura
end

/*ABC Clientes*/
/*Altas Cliente*/
create procedure AltasCliente (@aC_Nit int, @aC_Nombre varchar(500), @aC_Apellido varchar(500), @aC_Direccion varchar(500))
as
begin
	insert into Cliente (Nit,Nombre,Apellido,Dirección) 
	values (@aC_Nit,@aC_Nombre,@aC_Apellido,@aC_Direccion)
end

/*Bajas Cliente*/
create procedure BajasCliente (@bC_Nit int)
as
begin
	delete from Cliente
	where Nit = @bC_Nit
end

/*Cambios Cliente*/
create procedure CambiosCliente (@cC_nit int, @cC_Nombre varchar(500), @cC_Apellido varchar(500), @cC_Direccion varchar(500))
as
begin
	update Cliente
	set
	Nit = @cC_nit where Nit = @cC_nit
	update Cliente
	set
	Nombre = @cC_Nombre where Nit = @cC_nit
	update Cliente
	set
	Apellido = @cC_Apellido where Nit = @cC_nit
	update Cliente
	set
	Dirección = @cC_Direccion where Nit = @cC_nit
end

/*ABC Producto*/
/*Altas Producto*/
create procedure AltasProducto (@aP_CodProducto int, @aP_Nombre varchar(500), @aP_Precio int, @aP_Marca varchar(500), @aP_Descripcion varchar(500))
as
begin
	insert into Producto (Cod_Producto,Nombre,Precio,Marca,Descripcion)
	values (@aP_CodProducto, @aP_Nombre, @aP_Precio, @aP_Marca, @aP_Descripcion)
end

/*Bajas de Producto*/
create procedure BajasProducto (@bP_CodProducto int)
as
begin
	delete from Producto
	where Cod_Producto = @bP_CodProducto
end

/*Cambios Producto*/
create procedure CambiosProducto (@cP_CodProducto int, @cP_Nombre varchar(500), @cP_Precio int, @cP_Marca varchar(500), @cP_Descrcipcion varchar(500))
as
begin
	update Producto
	set
	Cod_Producto = @cP_CodProducto where Cod_Producto = @cP_CodProducto
	update Producto
	set
	Nombre = @cP_Nombre where Cod_Producto = @cP_CodProducto
	update Producto
	set
	Precio = @cP_Precio where Cod_Producto = @cP_CodProducto
	update Producto
	set
	Marca = @cP_Marca where Cod_Producto = @cP_CodProducto
	update Producto
	set
	Descripcion = @cP_Descrcipcion where Cod_Producto = @cP_CodProducto
end

/**/

/*Funciones*/
/*Ventas por Cliente*/
create function VentasCliente (@vC_Fecha date)
returns int
as
begin 
	declare @Conteo int
	select
		@Conteo = COUNT(F.Fecha)
	from Factura F
	inner join Cliente C
	on
	C.Nit = F.Nit_Cliente
	where F.Fecha = @vC_Fecha
	group by F.Fecha
	return @Conteo
end

/*Producto más vendido en un rango de fecha*/
create function ProductoRango (@pR_Fecha1 date,  @pR_Fecha2 date)
returns int
as
begin
	declare @Top1 int
	select 
	@Top1 = COUNT(DF.Cod_Producto)
	from Factura F
	inner join Detalle_Factura DF
	on
	F.No_Factura = DF.No_Factura
	inner join Producto P
	on
	DF.Cod_Producto = P.Cod_Producto
	where F.Fecha between @pR_Fecha1 and @pR_Fecha2
	group by DF.Cod_Producto
	return @Top1
end

/*Monto de compra promedio*/
create function MontoPromedio (@mp_Nit int)
returns int
as
begin
declare @Promedio int
	select 
	@Promedio = AVG(DF.SubTotal)
	from Factura F
	inner join Detalle_Factura DF
	on
	F.No_Factura = DF.No_Factura
	where F.Nit_Cliente = @mp_Nit
return @Promedio
end