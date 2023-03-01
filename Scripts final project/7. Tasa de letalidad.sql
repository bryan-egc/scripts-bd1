-- 7. Tasa de letalidad
DECLARE @CantidadC int
select @CantidadC = SUM(Cantidad) from CASOS_C

DECLARE @CantidadF int
select @CantidadF = SUM(CANTIDAD) from CASOS_F

DECLARE @Tasa_Letalidad decimal
select @Tasa_Letalidad = cast(@CantidadF as decimal(18,2)) / cast(@CantidadC as decimal(18,2)) * 100
print @Tasa_Letalidad
