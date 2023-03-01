USE Proyecto_Final;
/*24. Total de fallecidos por Sexo*/
SELECT 
	SEXO, 
	COUNT(SEXO) AS CANTIDAD 
FROM 
	CASOS_F
GROUP BY
	SEXO;