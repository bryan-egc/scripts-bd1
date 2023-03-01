--16. Casos confirmados por semestre año.
SELECT Count(*) 'Confirmados', CAST(year(Fecha) AS char(4)) + ' - ' + CAST(CEILING(CAST(month(Fecha) AS decimal(9,2)) / 6) AS char(1)) FROM Casos_c
GROUP BY CAST(year(Fecha) AS char(4)) + ' - ' + CAST(CEILING(CAST(month(Fecha) AS decimal(9,2)) / 6) AS char(1))
ORDER BY CAST(year(Fecha) AS char(4)) + ' - ' + CAST(CEILING(CAST(month(Fecha) AS decimal(9,2)) / 6) AS char(1))