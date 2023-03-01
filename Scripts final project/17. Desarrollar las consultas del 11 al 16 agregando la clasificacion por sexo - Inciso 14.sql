USE Proyecto_Final;
/*17. Desarrollar las consultas del 11 al 16 agregando la clasificacion por sexo*/
	/*14. Casos Confirmados por mes-año*/
SELECT 
	Count(*) as 'Confirmados', 
	MONTH(Fecha) AS 'Mes', 
	Year(Fecha) AS 'Año', 
	Sexo 
FROM 
	Casos_c 
GROUP BY 
	MONTH(Fecha), 
	Year(Fecha), 
	Sexo
ORDER BY 
	Year(Fecha), 
	MONTH(Fecha)