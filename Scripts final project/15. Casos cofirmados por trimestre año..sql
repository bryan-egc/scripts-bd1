--15. Casos cofirmados por trimestre año.
SELECT Count(*) AS 'Confirmados', CAST(year(Fecha) AS char(4)) + ' - Q' + CAST(CEILING(CAST(month(Fecha) AS decimal(9,2)) / 3) AS char(1)) FROM Casos_c
GROUP BY CAST(year(Fecha) AS char(4)) + ' - Q' + CAST(CEILING(CAST(month(Fecha) AS decimal(9,2)) / 3) AS char(1))
ORDER BY CAST(year(Fecha) AS char(4)) + ' - Q' + CAST(CEILING(CAST(month(Fecha) AS decimal(9,2)) / 3) AS char(1))