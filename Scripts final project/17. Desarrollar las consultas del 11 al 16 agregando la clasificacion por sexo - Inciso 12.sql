USE Proyecto_Final;
/*17. Desarrollar las consultas del 11 al 16 agregando la clasificaci�n por sexo*/
	/*12. Casos confirmados por grupo D�a*/
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