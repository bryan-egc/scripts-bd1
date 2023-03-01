/*Vista Practica Examen*/
create view vPraticaExamen
as
select 
	A.id_alumno,
	A.nif,
	CONCAT(A.nombre,' ',A.apellido1,' ',A.apellido2) "Nombre Completo",
	R.nota,
	CONCAT(P.titulo, ', dificultad: ',P.dificultad) "Descripción de la práctica",
	D.id_profesor
from Alumno A
inner join Realiza R
on
A.id_alumno = R.id_practica
inner join Practica P 
on
R.id_practica = P.id_practica
inner join Diseño D
on
R.id_practica = D.id_practica

select * from vPraticaExamen

/*Vista Estudiante*/
create view vEstudiante
as
select 
	CONCAT(nombre,' ',apellido1,' ',apellido2) "Nombre Completo",
	A.nif,
	A.seccion
from Alumno A

select * from vEstudiante

/*Consultas*/
select  
	D.id_practica,
	D.id_profesor,
	P.dificultad
from Diseño D
inner join Practica P
on
P.id_practica = D.id_practica

/*Nota por practica*/
select 
	A.seccion,
	A.nif "Carné",
	CONCAT(A.nombre,' ',A.apellido1,' ',A.apellido2) "Nombre Completo",
	P.titulo "Nombre Practica",
	R.nota,
	Pr.nombre "Profesor"
from Realiza R
inner join Alumno A
on
R.id_alumno = A.id_alumno
inner join Practica P
on
R.id_practica = P.id_practica
inner join Diseño D
on
P.id_practica = D.id_practica
inner join Profesor Pr
on
D.id_profesor = Pr.id_profesor

/*Nota Promedio Práctica*/
select 
	P.id_practica,
	P.titulo,
	count(R.id_practica) "Total de Entregas",
	AVG(R.nota) "Nota Promedio",
	MIN(R.nota) "Nota Minima",
	MAX(R.nota) "Nota Maxima"
from Realiza R
inner join Practica P
on
R.id_practica = P.id_practica
group by R.id_practica, P.id_practica,P.titulo

/*Transacciones*/
/*Primera Transaccion*/
begin tran
insert into Alumno (id_alumno,nif,nombre,apellido1,apellido2,seccion) values (11,381038,'Pedro','Gamez','Solares','A');
insert into Alumno (id_alumno,nif,nombre,apellido1,apellido2,seccion) values (12,787911,'Ernesto','Gamez','Alvarado','A');
insert into Alumno (id_alumno,nif,nombre,apellido1,apellido2,seccion) values (13,814018,'Susana','Melgar','Alonso','A');

insert into Practica (id_practica,titulo,dificultad) values (6,'Automatizacion de procesos','Media')
insert into Practica (id_practica,titulo,dificultad) values (7,'Comandos en consola','Alta')

insert into Realiza (id_alumno,id_practica,nota) values (11,6,70)
insert into Realiza (id_alumno,id_practica,nota) values (13,7,60)
insert into Realiza (id_alumno,id_practica,nota) values (12,6,80)

commit

/*Segunda*/

begin tran
update Realiza
set
nota = 60 where id_alumno = 11

begin tran
update Realiza
set
nota = 80 where id_alumno = 12;

begin tran
update Realiza
set
nota = 100 where id_alumno = 13

select * from Realiza

/*Operación C*/
insert into Alumno(id_alumno,nif,nombre,apellido1,apellido2,seccion) values (14,019002,'Gerardo','Lopez','Martinez','F');
insert into Alumno(id_alumno,nif,nombre,apellido1,apellido2,seccion) values (15,78123,'Alicia','Hernandez','Arevalo','S');
insert into Alumno(id_alumno,nif,nombre,apellido1,apellido2,seccion) values (16,98989,'Maria','Castro','Arias','K');
insert into Alumno(id_alumno,nif,nombre,apellido1,apellido2,seccion) values (17,973792,'Pedro','Lemus','Farias','A');
insert into Alumno(id_alumno,nif,nombre,apellido1,apellido2,seccion) values (18,9982231,'Raul','Muñoz','Solares','X');
insert into Alumno(id_alumno,nif,nombre,apellido1,apellido2,seccion) values (19,9983122,'Samuel','Barrios','Cipriano','Y');
insert into Alumno(id_alumno,nif,nombre,apellido1,apellido2,seccion) values (20,367212,'Astrid','Guzman','Alvarado','V');
insert into Alumno(id_alumno,nif,nombre,apellido1,apellido2,seccion) values (21,3412223,'Ariel','Nuñez','Rios','G');
insert into Alumno(id_alumno,nif,nombre,apellido1,apellido2,seccion) values (22,983192,'Manuel','Ramirez','Cruz','P');
insert into Alumno(id_alumno,nif,nombre,apellido1,apellido2,seccion) values (23,367812,'Sofia','Saldaña','Larios','E');

insert into Realiza(id_alumno,id_practica) values (14,3)
insert into Realiza(id_alumno,id_practica) values (15,1)
insert into Realiza(id_alumno,id_practica) values (16,5)
insert into Realiza(id_alumno,id_practica) values (17,2)
insert into Realiza(id_alumno,id_practica) values (18,7)
insert into Realiza(id_alumno,id_practica) values (19,6)
insert into Realiza(id_alumno,id_practica) values (20,4)
insert into Realiza(id_alumno,id_practica) values (21,5)
insert into Realiza(id_alumno,id_practica) values (22,1)
insert into Realiza(id_alumno,id_practica) values (23,4)

select * from Realiza

begin tran
update Realiza
set
nota = 60 where (id_alumno%2) = 0

begin tran
update Realiza
set
nota = 75 where (id_alumno%2) <> 0