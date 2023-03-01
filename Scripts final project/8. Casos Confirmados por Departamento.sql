-- 8. Casos Confirmados por Departamento
select 
	DE.DESCRIPCION "Nombre Departamento",
	SUM(Ca.Cantidad) "Cantidad por Departamento"
from Casos_c Ca 
inner join MUNICIPIO MU 
on 
Ca.id_municipio = MU.ID_MUNICIPIO 
inner join DEPARTAMENTO DE 
on 
MU.ID_DEPARTAMENTO = DE.ID_DEPARTAMENTO
group by (DE.DESCRIPCION)