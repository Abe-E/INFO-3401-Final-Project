__Project Overview__

We investigated whether historical redlining in the city of Denver predicted current neighborhood equity scores. To clarify our results, we utilized CDC data to determine whether redlining predicted specific diseases based on zipcodes.


__Method for Equity Analysis__ 
- Equity Data --> https://opendata-geospatialdenver.hub.arcgis.com/datasets/f298a05190724b0aaf7f6a76f260aa7d_298/explore?location=39.854677%2C-105.270802%2C9
- Redlining Data --> https://dsl.richmond.edu/panorama/redlining/data/CO-Denver#cityData

Geojson file for redlining data was converted from a Geojson file to a CSV file using python. A statistical analysis was then ran by calculating z-scores to standardize measurements and a regression was ran using Excel. 

__Method for CDC Disease Analysis__

- CDC File --> https://data.cdc.gov/500-Cities-Places/PLACES-Local-Data-for-Better-Health-County-Data-20/swc5-untb/about_data

This part of the project investigates the impact of historical housing policy on modern community health in Denver. Utilizing SQL and Excel, I integrated two datasets: historical HOLC "Redlining" equity maps and 2023 CDC places morbidity data. To extract the data from the large CDC file, data was cleaned and joined in SQL and exported to Excel. To analyze this data, I performed Z-score standardization on clinical measures to account for population variance across 78 neighborhoods. I then ran a linear regression model, with the historical equity grade as the independent variable to predict the prevalence of modern chronic conditions. This analysis attempted to quantify how early 20th century redlining remains a statistically significant predictor in 21st century health conditions. A pivot table and graph was made to visualize the results. 

**Doctor Regression**
SUMMARY OUTPUT								
								
Regression Statistics								
Multiple R	0.448771733							
R Square	0.201396069							
Adjusted R Square	0.1728745							
Standard Error	0.909464403							
Observations	30							
								
ANOVA								
	df	SS	MS	F	Significance F			
Regression	1	5.840485993	5.840485993	7.061184779	0.012864817			
Residual	28	23.15951401	0.8271255					
Total	29	29						
								
	         Coefficients	Standard Error	t Stat	P-value	Lower 95%	Upper 95%	Lower 95.0%	Upper 95.0%
Intercept	-1.34718E-14	0.166044723	-8.11333E-14	1	-0.340127196	0.340127196	-0.340127196	0.340127196
Redline 	0.448771733	0.1688833	2.657288991	0.012864817	0.102829976	0.794713491	0.102829976	0.794713491


**Cancer Regression**
SUMMARY OUTPUT								
								
Regression Statistics								
Multiple R	0.530044824							
R Square	0.280947515							
Adjusted R Square	0.255267069							
Standard Error	0.862979102							
Observations	30							
								
ANOVA								
	df	SS	MS	F	Significance F			
Regression	1	8.14747794	8.14747794	10.94013384	0.002589723			
Residual	28	20.85252206	0.744732931					
Total	29	29						
								
	            Coefficients	Standard Error	t Stat	P-value	Lower 95%	Upper 95%	Lower 95.0%	Upper 95.0%
Intercept	-4.04938E-16	0.157557707	-2.57009E-15	1	-0.322742332	0.322742332	-0.322742332	0.322742332
Redline	0.530044824	0.160251196	3.307587315	0.002589723	0.201785129	0.858304519	0.201785129	0.858304519


**Diabetes Regression**
SUMMARY OUTPUT								
								
Regression Statistics								
Multiple R	0.174928623							
R Square	0.030600023							
Adjusted R Square	-0.004021405							
Standard Error	1.002008685							
Observations	30							
								
ANOVA								
	df	SS	MS	F	Significance F			
Regression	1	0.887400668	0.887400668	0.883846364	0.355190715			
Residual	28	28.11259933	1.004021405					
Total	29	29						
								
	          Coefficients	Standard Error	t Stat	P-value	Lower 95%	Upper 95%	Lower 95.0%	Upper 95.0%
Intercept	  -3.47E-16	0.18294092	-1.90E-15	1	-0.374737487	0.374737487	-0.374737487	0.374737487
Redline	   -0.174928623	0.186068342	-0.940131036	0.355190715	-0.556072343	0.206215097	-0.556072343	0.206215097
