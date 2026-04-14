__Project Overview__

We investigated whether historical redlining in the city of Denver predicted current neighborhood equity scores. To clarify our results, we utilized CDC data to determine whether redlining predicted specific diseases based on zipcodes.


__Method for CDC Disease Analysis__

- CDC File --> https://data.cdc.gov/500-Cities-Places/PLACES-Local-Data-for-Better-Health-County-Data-20/swc5-untb/about_data
- Redlining --> https://dsl.richmond.edu/panorama/redlining/data/CO-Denver#cityData

This project investigates the impact of historical housing policy on modern community health in Denver. Data for the redlining was downloaded and as geojson and was converted to a CSV file via a python script. Utilizing SQL and Excel, I integrated two datasets: historical HOLC "Redlining" equity maps and 2023 CDC places morbidity data. To extract the data from the large CDC file, data was cleaned and joined in SQL and exported to Excel. To analyze this data, I performed Z-score standardization on clinical measures to account for population variance across 78 neighborhoods. I then ran a linear regression model, with the historical equity grade as the independent variable to predict the prevalence of modern chronic conditions. This analysis attempted to quantify how early 20th century redlining remains a statistically significant predictor in 21st century health conditions. A pivot table and graph was made to visualize the results. 

__Findings__


**1. Clinical Outcome: Cancer (Non-Skin) or Melanoma**

| Statistical Metric | Value | Statistical Significance |
| :--- | :---: | :--- |
| **Multiple R** | 0.530 | Moderate-to-Strong Correlation |
| **R-Squared ($R^2$)** | 0.281 | 28.1% of variance explained |
| **P-Value ($p$)** | **0.002** | **High Significance** |

---

 **2. Clinical Outcome: Routine Doctor Visits**

| Statistical Metric | Value | Statistical Significance |
| :--- | :---: | :--- |
| **Multiple R** | 0.449 | Moderate Correlation |
| **R-Squared ($R^2$)** | 0.201 | 20.1% of variance explained |
| **P-Value ($p$)** | **0.013** | **Significant** |

---

 **3. Clinical Outcome: Diagnosed Diabetes**

| Statistical Metric | Value | Statistical Significance |
| :--- | :---: | :--- |
| **Multiple R** | 0.175 | Weak Correlation |
| **R-Squared ($R^2$)** | 0.031 | 3.1% of variance explained |
| **P-Value ($p$)** | 0.355 | Not Significant (Trend Only) |

---

 **Statistics Summary**

| Clinical Measure | Grade A (Best) | Grade B | Grade C | Grade D (Redlined) |
| :--- | :---: | :---: | :---: | :---: |
| **Diagnosed Diabetes** | 5.4% | 5.8% | 7.3% | 10.1% |
| **Routine Doctor Visits** | 66.1% | 73.2% | 68.1% | 60.9% |
| **Cancer (non-skin)** | 5.1% | 5.8% | 6.8% | 3.5%* |

__Discussion__


Our findings indicate that historical redlining functions as a predictor for certain outcomes. For example, Cancer was shown to be highly significant, and that nearly 30% of the difference in cancer rates across Denver neighborhoods is linked to 1930s housing grades. Additionally, routine doctor visits explained 20.1% of the variance in doctor visits. This shows that historically redlined neighborhoods have the lowest percentage of routine visits, suggesting that policies from ~90 years ago are still preventing people from getting preventative care today. 
