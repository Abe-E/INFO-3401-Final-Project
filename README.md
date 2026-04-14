__Project Overview__

We investigated whether historical redlining in the city of Denver predicted current neighborhood equity scores. To clarify our results, we utilized CDC data to determine whether redlining predicted specific diseases based on zipcodes.


__Method for CDC Disease Analysis__

- CDC File --> https://data.cdc.gov/500-Cities-Places/PLACES-Local-Data-for-Better-Health-County-Data-20/swc5-untb/about_data

This part of the project investigates the impact of historical housing policy on modern community health in Denver. Utilizing SQL and Excel, I integrated two datasets: historical HOLC "Redlining" equity maps and 2023 CDC places morbidity data. To extract the data from the large CDC file, data was cleaned and joined in SQL and exported to Excel. To analyze this data, I performed Z-score standardization on clinical measures to account for population variance across 78 neighborhoods. I then ran a linear regression model, with the historical equity grade as the independent variable to predict the prevalence of modern chronic conditions. This analysis attempted to quantify how early 20th century redlining remains a statistically significant predictor in 21st century health conditions. A pivot table and graph was made to visualize the results. 

__Findings__
