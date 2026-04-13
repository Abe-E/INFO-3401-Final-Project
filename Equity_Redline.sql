
# This filters out of all of the data that I don't want and combines that redline data with the equity data 
SELECT 
Equity.NBHD_Name,
Equity.avgAccessToCareScore,
Equity.avgBuiltEnvScore,
Equity.avgMobidityScore,
Equity.avgOverallEquityScore,
Equity.avgsocioeconscore,
Line.grade AS "Redline_Grade",
Line.residential,
Line.commercial,
Line.industrial,
Case # Quantifying Grades for analysis
	WHEN Line.grade = "A" then 4 
    WHEN Line.grade = "B" then 3
    WHEN Line.grade = "C" then 2
    WHEN Line.grade = "D" then 1 
END AS "Redline Score"
FROM 
`Final Project`.`equity_data`AS Equity
JOIN `Final Project`.`fixed_names_redline` AS Line
ON Equity.`NBHD_Name` = Line.`name`
ORDER BY 
Line.grade