-- Creación DB
create database DBVacuna
use DBVacuna

-- Creación de tablas
create table Vacuna (
	id_Vacuna int primary key,
	Nombre varchar(500)
);

create table Paciente (
	Dpi int primary key,
	Nombre varchar(500),
	Apellido varchar(500),
	Edad int
);

create table CentroVacunacion (
	Codigo_Centro int primary key,
	Nombre varchar(500),
	Direccion varchar(500)
);

create table Dosis (
	id_Dosis int primary key,
	Dpi_Paciente int foreign key (Dpi_Paciente) references Paciente(Dpi),
	id_Vacuna int foreign key (id_Vacuna) references Vacuna(id_Vacuna),
	Codigo_CentroVacunacion int foreign key (Codigo_CentroVacunacion) references CentroVacunacion(Codigo_Centro),
	Numero_Dosis int,
	Fecha_Administracion date
);