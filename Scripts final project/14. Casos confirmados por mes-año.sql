--14. Casos confirmados por mes-año
SELECT Count(*) AS 'Confirmados', MONTH(Fecha) AS 'Mes', Year(Fecha) AS 'Año' 
FROM Casos_c 
GROUP BY MONTH(Fecha), Year(Fecha) 
ORDER BY Year(Fecha), MONTH(Fecha)