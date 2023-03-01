-- 6. Tasa de Fallecidos por millon de habitantes

DECLARE @Total_Fallecidos int
select @Total_Fallecidos = SUM(CANTIDAD) from CASOS_F

DECLARE @Poblacion int
select @Poblacion = SUM(Poblacion) from MUNICIPIO

DECLARE @Tasa_Fallecidos decimal
select @Tasa_Fallecidos = cast(@Total_Fallecidos as decimal(18,2)) / cast(@Poblacion as decimal(18,2)) * 1000000
print @Tasa_Fallecidos