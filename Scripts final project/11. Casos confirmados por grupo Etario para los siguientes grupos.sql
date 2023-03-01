/*
11. Casos confirmados por grupo Etario para los siguientes grupos
a. 0-12 años
b. 13-19 años
c. 20-50 años
d. 50-70 años
e. Mayores de 70 años.*/
SELECT 
Count(*) 'Confirmados',
(Case When Edad Between 0 and 12 and Edad is not null then '0-12' else
Case When Edad Between 13 and 19 and Edad is not null then '13-19' else 
Case When Edad Between 20 and 50 and Edad is not null then '20-50' else 
Case When Edad Between 50 and 70 and Edad is not null then '50-70' else
Case When Edad > 70 and Edad is not null then '>70'END
END
END
END
END) [GroupEtario]
FROM Casos_c WHERE 
(Case When Edad Between 0 and 12 and Edad is not null then '0-12' else
Case When Edad Between 13 and 19 and Edad is not null then '13-19' else 
Case When Edad Between 20 and 50 and Edad is not null then '20-50' else 
Case When Edad Between 50 and 70 and Edad is not null then '50-70' else
Case When Edad > 70 and Edad is not null then '>70'END
END
END
END
END)
IS NOT NULL 
group by 
(Case When Edad Between 0 and 12 and Edad is not null then '0-12' else
Case When Edad Between 13 and 19 and Edad is not null then '13-19' else 
Case When Edad Between 20 and 50 and Edad is not null then '20-50' else 
Case When Edad Between 50 and 70 and Edad is not null then '50-70' else
Case When Edad > 70 and Edad is not null then '>70'END
END
END
END
END)
order by 
(Case When Edad Between 0 and 12 and Edad is not null then '0-12' else
Case When Edad Between 13 and 19 and Edad is not null then '13-19' else 
Case When Edad Between 20 and 50 and Edad is not null then '20-50' else 
Case When Edad Between 50 and 70 and Edad is not null then '50-70' else
Case When Edad > 70 and Edad is not null then '>70'END
END
END
END
END)