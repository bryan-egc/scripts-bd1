USE Proyecto_Final;
/*17. Desarrollar las consultas del 11 al 16 agregando la clasificacion por sexo*/
	/*15. Casos confirmados por trimestre año*/
SELECT
	Count(*) AS 'Confirmados', 
	CAST(year(Fecha) AS char(4)) + ' - Q' + CAST(CEILING(CAST(month(Fecha) AS decimal(9,2)) / 3) AS char(1)) AS 'Año - Semestre',
	Sexo
FROM 
	Casos_c
GROUP BY 
	CAST(year(Fecha) AS char(4)) + ' - Q' + CAST(CEILING(CAST(month(Fecha) AS decimal(9,2)) / 3) AS char(1)),
	Sexo
ORDER BY 
	CAST(year(Fecha) AS char(4)) + ' - Q' + CAST(CEILING(CAST(month(Fecha) AS decimal(9,2)) / 3) AS char(1))