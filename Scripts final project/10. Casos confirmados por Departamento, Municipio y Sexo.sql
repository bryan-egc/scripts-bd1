-- 10. Casos confirmados por Departamento, Municipio y Sexo
select 
	COUNT(*) "Casos Confirmados",
	DE.DESCRIPCION "Departamento",
	MU.DESCRIPCION "Municipio",
	Ca.Sexo
from Casos_c Ca 
inner join MUNICIPIO MU 
on 
Ca.id_municipio = MU.ID_MUNICIPIO 
inner join DEPARTAMENTO DE 
on 
MU.ID_DEPARTAMENTO = DE.ID_DEPARTAMENTO
where Ca.Sexo IS NOT NULL
group by DE.DESCRIPCION,MU.DESCRIPCION,Ca.Sexo 