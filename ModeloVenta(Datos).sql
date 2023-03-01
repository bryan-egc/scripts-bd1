/*Creación de tablas y relaciones*/
create table Cliente (
	Nit int primary key,
	Nombre varchar(500),
	Apellido varchar(500),
	Dirección varchar(500)
);

create table Producto (
	Cod_Producto int primary key,
	Nombre varchar(500),
	Precio int,
	Marca varchar(500),
	Descripcion varchar(500)
);

create table Moneda (
	Cod_Moneda int primary key,
	Signo varchar(50),
	Nombre varchar(50),
	Tipo_Cambio varchar(50)
);

create table Factura (
	No_Factura int primary key,
	Nit_Cliente int foreign key (Nit_Cliente) references Cliente(Nit),
	Moneda int foreign key (Moneda) references Moneda(Cod_Moneda),
	Fecha date
);

create table Detalle_Factura (
	No_Factura int foreign key (No_Factura) references Factura(No_Factura),
	No_Linea int primary key,
	Cod_Producto int foreign key (Cod_Producto) references Producto(Cod_Producto),
	Cantidad int,
	Precio int,
	SubTotal int
);

/*Funciones*/
