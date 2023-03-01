--13. Casos confirmados por semana (1-52) y año
SELECT Count(*) as 'Confirmados', DATEPART(wk, Fecha) AS 'Semana', Year(Fecha) As 'Año' 
FROM Casos_c 
GROUP BY DATEPART(wk, Fecha), Year(Fecha) 
ORDER BY Year(Fecha), DATEPART(wk, Fecha)