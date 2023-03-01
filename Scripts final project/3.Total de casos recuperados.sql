--3.Casos recuperados estimados
SELECT ((SELECT COUNT(*) FROM CASOS_C WHERE FECHA <= '2022-10-22') - (SELECT COUNT(*) FROM CASOS_F WHERE FECHA <= '2022-10-22'))
AS 'Recuperados'


