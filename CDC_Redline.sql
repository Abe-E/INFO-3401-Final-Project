SELECT 
* 
FROM
 `Final Project`.CDC_Data AS CDC
 Case # Quantifying Grades for analysis
	WHEN Line.grade = "A" then 4 
    WHEN Line.grade = "B" then 3
    WHEN Line.grade = "C" then 2
    WHEN Line.grade = "D" then 1 
END AS "Redline Score"
 JOIN
 `Final Project`.Neighborhood_Zips AS Zips
 ON CDC.LocationName = Zips.Zip_Code
JOIN
`Final Project`.fixed_names_redline AS Redline
ON Redline.Name = NBHD_Name 
 
