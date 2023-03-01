
--2.Casos Acumulados
SELECT COUNT(*) AS CASOS_ACUMULADOS
FROM Casos_c

SELECT Count(*) as 'Confirmados', 

--1.Total de casos activos estimados
SELECT SUM(Cantidad) AS TOTAL_CASOS_ACTIVOS_ESTIMADOS FROM  Casos_c
WHERE Fecha BETWEEN '2022-10-22' AND '2022-10-27' AND Sexo IS NOT NULL

--3.Casos recuperados estimados
SELECT SUM(Cantidad) AS TOTAL_CASOS_RECUPERADOS_ESTIMADOS FROM  Casos_c
WHERE Fecha BETWEEN '2020-03-13' AND '2022-10-22' AND Sexo IS NOT NULL 
INNER JOIN CASOS_F

SELECT Count(*) as TOTAL_CASOS_RECUPERADOS_ESTIMADOS, WHERE Fecha BETWEEN '2020-03-13' AND '2022-10-22' AND Sexo IS NOT NULL 
FROM Casos_c 
SELECT COUNT (*) WHERE Fecha BETWEEN '2020-03-13' AND '2022-10-22' AND Sexo IS NOT NULL from Casos_f

SELECT * FROM Casos_c LEFT JOIN CASOS_F
on Casos_c.Cantidad = CASOS_F.CANTIDAD 
WHERE CASOS_F IS NULL



--4.Total fallecidos regisrados
SELECT COUNT(*) AS Casos_Fallecidos
FROM Casos_f

--5.incidencia de casos por millon de habitantes
SELECT (sum(Cantidad)/17110000000)*1000000 AS CASOS_POR_MILLON
FROM Casos_c 

