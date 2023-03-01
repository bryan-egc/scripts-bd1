USE Proyecto_Final;
/*17. Desarrollar las consultas del 11 al 16 agregando la clasificacion por sexo*/
	/*13. Casos confirmados por semana y a�o*/
SELECT 
	Count(*) as 'Confirmados', 
	DATEPART(wk, Fecha) AS 'Semana', 
	Year(Fecha) As 'A�o',
	Sexo
FROM 
	Casos_c 
GROUP BY 
	DATEPART(wk, Fecha), 
	Year(Fecha),
	Sexo
ORDER BY 
	Year(Fecha), 
	DATEPART(wk, Fecha)