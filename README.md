🩺 Project Overview

This project performs a comprehensive data analysis of hospital inpatient separations across South Australian hospitals from 2012–13 to 2017–18.
The goal is to identify long-term trends, top-performing hospitals, and year-over-year changes in hospital activity, using MySQL for data processing and Power BI for visualization.

The dataset provides quarterly separation counts for each hospital, representing the number of admitted patients discharged during that quarter.
Through SQL-based data modeling and aggregation, key insights into hospital utilization and performance are extracted and visualized for executive decision-making.

📊 Dataset Description

The dataset used is titled “Inpatient Separations by Hospital (RID1076)”, sourced from SA Health Open Data.
It contains quarterly separation counts for each hospital over six financial years (2012–13 to 2017–18).
Each record corresponds to a hospital, with 24 columns representing individual quarters.

Attributes include:

Hospital_Code: Unique identifier for each hospital.

Hospital_Name: Name of the healthcare facility.

Quarterly Separation Columns: From 2012_13_Sep_Quarter to 2017_18_Jun_Quarter, showing the number of inpatient separations in that period.

This dataset enables longitudinal analysis of healthcare trends and performance metrics.

🧱 Database Design & Data Loading

The database named sa_health was created to store and analyze hospital separation data.
A single table, inpatient_separations, was defined with columns representing each quarter.

The dataset was loaded into MySQL using the LOAD DATA LOCAL INFILE command, allowing efficient import from CSV format.
Once loaded, the table served as the foundation for all analytical queries and Power BI integrations.

The data was cleaned and validated by:

Ensuring all missing values were treated as zero using COALESCE() functions.

Aggregating numeric columns for yearly and total calculations.

Structuring the schema for compatibility with BI tools.

🧠 SQL Analytical Workflow

After loading the data, several SQL queries were executed to derive meaningful insights.

1. Total Separations per Hospital

Calculated the overall number of patient separations across all six years for each hospital.
This helped identify the busiest hospitals and overall service demand distribution.

2. Yearly Total Separations

Summed the separations for all hospitals per financial year to analyze system-wide growth trends and workload fluctuations over time.

3. Top Performing Hospitals

Computed the average separations per quarter for every hospital and ranked them to find those with the most consistent patient throughput.
This metric normalizes hospital performance over time rather than focusing only on totals.

4. Power BI Views

Two reusable SQL Views were created:

vw_yearly_trends → summarizes total separations by year (for trend line visualization).

vw_hospital_performance → shows total separations per hospital (for performance comparison dashboards).

These views simplified integration with Power BI and allowed dynamic reporting without writing complex SQL repeatedly.

📈 Power BI Visualization (Concept)

The processed data was connected to Power BI through MySQL, enabling the creation of interactive dashboards.
Key visuals include:

KPI Cards: Total separations, total hospitals, and year-over-year change.

Line Chart: Annual separation trend showing healthcare system growth.

Bar Chart: Top 5 hospitals by average separations per quarter.

Table View: Detailed breakdown of hospital performance metrics.

These visuals provide healthcare administrators with an intuitive overview of operational trends, capacity planning insights, and hospital utilization.
