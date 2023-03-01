--12. Casos confirmados por día
SELECT Fecha, Count(*) As 'Total_Confirmados' 
FROM Casos_c 
GROUP BY Fecha 
ORDER BY Fecha