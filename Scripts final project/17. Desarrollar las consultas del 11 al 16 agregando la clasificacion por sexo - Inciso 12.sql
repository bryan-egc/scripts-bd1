USE Proyecto_Final;
/*17. Desarrollar las consultas del 11 al 16 agregando la clasificación por sexo*/
	/*12. Casos confirmados por grupo Día*/
SELECT 
	Fecha, 
	Count(*) As 'Total_Confirmados',
	Sexo
FROM
	Casos_c 
GROUP BY 
	Fecha,
	Sexo
ORDER BY 
	Fecha