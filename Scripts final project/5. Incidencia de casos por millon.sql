--5.incidencia de casos por millon de habitantes
SELECT (sum(Cantidad)/17110000000)*1000000 AS CASOS_POR_MILLON
FROM Casos_c 
