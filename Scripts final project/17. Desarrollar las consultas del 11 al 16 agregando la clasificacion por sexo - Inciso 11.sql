USE Proyecto_Final;
/*17. Desarrollar las consultas del 11 al 16 agregando la clasificación por sexo*/
	/*11. Casos confirmados por grupo Etario*/
SELECT 
	COUNT(*) 'Confirmados',
	(CASE 
		WHEN
			Edad > 70 AND Edad IS NOT NULL 
			THEN '>70'
		ELSE
			CASE 
				WHEN 
					Edad BETWEEN 50 AND 70 AND Edad IS NOT NULL 
					THEN '50-70' 
				ELSE 
					CASE 
						WHEN 
							Edad BETWEEN 20 AND 50 AND Edad IS NOT NULL 
							THEN '20-50' 
						ELSE 
							CASE 
								WHEN 
									Edad BETWEEN 13 AND 19 AND Edad IS NOT NULL 
									THEN '13-19' 
								ELSE
									CASE 
										WHEN 
											Edad BETWEEN 0 AND 12 AND Edad IS NOT NULL 
											THEN '0-12' 
									END
							END
					END
			END
	END) 
	AS 
		GROUPEtario
	FROM 
		Casos_c 
	WHERE 
		(CASE 
			WHEN 
				Edad > 70 AND Edad IS NOT NULL 
				THEN '>70' 
			ELSE
				CASE 
					WHEN 
						Edad BETWEEN 50 AND 70 AND Edad IS NOT NULL 
						THEN '50-70' 
					ELSE 
						CASE 
							WHEN 
								Edad BETWEEN 20 AND 50 AND Edad IS NOT NULL 
								THEN '20-50' 
							ELSE 
								CASE 
									WHEN 
										Edad BETWEEN 13 AND 19 AND Edad IS NOT NULL 
										THEN '13-19' 
									ELSE
										CASE 
											WHEN 
												Edad BETWEEN 0 AND 12 AND Edad IS NOT NULL 
												THEN '0-12' 
										END
								END
						END
				END
		END)
		IS NOT NULL 
		GROUP BY 
			(CASE 
				WHEN 
					Edad > 70 AND Edad IS NOT NULL 
					THEN '>70' 
				ELSE
					CASE 
						WHEN 
							Edad BETWEEN 50 AND 70 AND Edad IS NOT NULL 
							THEN '50-70' 
						ELSE 
							CASE 
								WHEN 
									Edad BETWEEN 20 AND 50 AND Edad IS NOT NULL 
									THEN '20-50' 
								ELSE 
									CASE 
										WHEN 
											Edad BETWEEN 13 AND 19 AND Edad IS NOT NULL 
											THEN '13-19' 
										ELSE
											CASE 
												WHEN 
													Edad BETWEEN 0 AND 12 AND Edad IS NOT NULL 
													THEN '0-12' 
											END
									END
							END
					END
			END)
			ORDER BY 
				(CASE 
					WHEN 
						Edad > 70 AND Edad IS NOT NULL 
						THEN '>70' 
					ELSE
						CASE 
							WHEN 
								Edad BETWEEN 50 AND 70 AND Edad IS NOT NULL 
								THEN '50-70' 
							ELSE 
								CASE 
									WHEN 
										Edad BETWEEN 20 AND 50 AND Edad IS NOT NULL 
										THEN '20-50' 
									ELSE 
										CASE 
											WHEN 
												Edad BETWEEN 13 AND 19 AND Edad IS NOT NULL 
												THEN '13-19' 
											ELSE
												CASE 
													WHEN 
														Edad BETWEEN 0 AND 12 AND Edad IS NOT NULL 
														THEN '0-12' 
												END
										END
								END
						END
				END)