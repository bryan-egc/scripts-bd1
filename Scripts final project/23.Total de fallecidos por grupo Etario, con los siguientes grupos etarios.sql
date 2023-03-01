SELECT 
Count(*) 'Fallecidos',
(Case When Edad Between 0 and 12 and Edad is not null then '0-12' else
Case When Edad Between 13 and 19 and Edad is not null then '13-19' else 
Case When Edad Between 20 and 45 and Edad is not null then '20-45' else 
Case When Edad Between 46 and 70 and Edad is not null then '46-70' else
Case When Edad > 70 and Edad is not null then '>70'END
END
END
END
END) [GroupEtario]
FROM CASOS_F WHERE 
(Case When Edad Between 0 and 12 and Edad is not null then '0-12' else
Case When Edad Between 13 and 19 and Edad is not null then '13-19' else 
Case When Edad Between 20 and 45 and Edad is not null then '20-45' else 
Case When Edad Between 46 and 70 and Edad is not null then '46-70' else
Case When Edad > 70 and Edad is not null then '>70'END
END
END
END
END)
IS NOT NULL 
group by 
(Case When Edad Between 0 and 12 and Edad is not null then '0-12' else
Case When Edad Between 13 and 19 and Edad is not null then '13-19' else 
Case When Edad Between 20 and 45 and Edad is not null then '20-45' else 
Case When Edad Between 46 and 70 and Edad is not null then '46-70' else
Case When Edad > 70 and Edad is not null then '>70'END
END
END
END
END)
order by 
(Case When Edad Between 0 and 12 and Edad is not null then '0-12' else
Case When Edad Between 13 and 19 and Edad is not null then '13-19' else 
Case When Edad Between 20 and 45 and Edad is not null then '20-45' else 
Case When Edad Between 46 and 70 and Edad is not null then '46-70' else
Case When Edad > 70 and Edad is not null then '>70'END
END
END
END
END)