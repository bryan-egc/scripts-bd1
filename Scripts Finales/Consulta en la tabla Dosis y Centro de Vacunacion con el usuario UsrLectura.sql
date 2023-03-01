select 
D.Dpi_Paciente,
CV.Nombre
from 
Dosis D 
inner join CentroVacunacion CV 
on 
Codigo_CentroVacunacion = Codigo_Centro