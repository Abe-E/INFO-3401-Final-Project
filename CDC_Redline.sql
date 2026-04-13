SELECT 
* 
FROM
 `Final Project`.CDC_Data AS CDC
 JOIN
 `Final Project`.Neighborhood_Zips AS Zips
 ON CDC.LocationName = Zips.Zip_Code
JOIN
`Final Project`.fixed_names_redline AS Redline
ON Redline.Name = NBHD_Name 
 