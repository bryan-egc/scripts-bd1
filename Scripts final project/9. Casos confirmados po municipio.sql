-- 9.Casos confirmados po municipio
select 
MU.DESCRIPCION "Nombre Municipio",
SUM(Ca.Cantidad) "Cantidad de Casos Confirmados"
from Casos_c Ca 
inner join MUNICIPIO MU
on
Ca.id_municipio = MU.ID_MUNICIPIO
group by (MU.DESCRIPCION)