--20.Casos tamizados por Departamento, municipio, mes
SELECT Count(*) as 'Tamizados', DEP.DESCRIPCION, MUN.DESCRIPCION, MONTH(Fecha) AS 'Mes'
FROM DEPARTAMENTO DEP INNER JOIN MUNICIPIO MUN ON DEP.ID_DEPARTAMENTO = MUN.ID_DEPARTAMENTO 
INNER JOIN CASOS_T CT ON CT.ID_MUNICIPIO = MUN.ID_MUNICIPIO
Group by DEP.DESCRIPCION, MUN.DESCRIPCION, MONTH(Fecha)
Order by MONTH(Fecha)