__Project Overview__

We investigated whether historical redlining in the city of Denver predicted current neighborhood equity scores. To clarify our results, we utilized CDC data to determine whether redlining predicted specific diseases based on zipcodes.


__Method for Equity Analysis__ 
- Equity Data --> https://opendata-geospatialdenver.hub.arcgis.com/datasets/f298a05190724b0aaf7f6a76f260aa7d_298/explore?location=39.854677%2C-105.270802%2C9
- Redlining Data --> https://dsl.richmond.edu/panorama/redlining/data/CO-Denver#cityData

Used google earth and layered maps of Equity Data and Redlining Data to determine which neighborhoods fit into the current map of Denver  

Converted Redlining Data from a Geojson file to a CSV file using python (do i include screenshot of that?) 

Did statistical analysis --> Calculated Mean and SD to find Z scores to standardize the measurements, then ran a regression using Excel on the Z scores 

__Method for CDC Disease Analysis__
- Created a CSV file with zipcodes for each County in Colroado
- CDC File --> https://data.cdc.gov/500-Cities-Places/PLACES-Local-Data-for-Better-Health-County-Data-20/swc5-untb/about_data

  Filtered CDC Data on the website to only include zipcodes that start with 802 because that is Denver zipcodes 
- Phases:
  Cleaned Data in SQL
  Joined data in SQL
  Exported to Excel for data analysis
