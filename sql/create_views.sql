##############################################################################
# 5. Create SQL Views for Power BI

CREATE OR REPLACE VIEW vw_yearly_trends AS
SELECT
    '2012_13' AS Year,
    SUM(`2012_13_Sep_Quarter` + `2012_13_Dec_Quarter` + `2012_13_Mar_Quarter` + `2012_13_Jun_Quarter`) AS Total_Separations
FROM inpatient_separations
UNION ALL
SELECT
    '2013_14',
    SUM(`2013_14_Sep_Quarter` + `2013_14_Dec_Quarter` + `2013_14_Mar_Quarter` + `2013_14_Jun_Quarter`)
FROM inpatient_separations
UNION ALL
SELECT
    '2014_15',
    SUM(`2014_15_Sep_Quarter` + `2014_15_Dec_Quarter` + `2014_15_Mar_Quarter` + `2014_15_Jun_Quarter`)
FROM inpatient_separations
UNION ALL
SELECT
    '2015_16',
    SUM(`2015_16_Sep_Quarter` + `2015_16_Dec_Quarter` + `2015_16_Mar_Quarter` + `2015_16_Jun_Quarter`)
FROM inpatient_separations
UNION ALL
SELECT
    '2016_17',
    SUM(`2016_17_Sep_Quarter` + `2016_17_Dec_Quarter` + `2016_17_Mar_Quarter` + `2016_17_Jun_Quarter`)
FROM inpatient_separations
UNION ALL
SELECT
    '2017_18',
    SUM(`2017_18_Sep_Quarter` + `2017_18_Dec_Quarter` + `2017_18_Mar_Quarter` + `2017_18_Jun_Quarter`)
FROM inpatient_separations;

#################################################################################################################

#5.2 View for hospital performance

CREATE OR REPLACE VIEW vw_hospital_performance AS
SELECT 
    Hospital_Name,
    SUM(
        COALESCE(`2012_13_Sep_Quarter`,0) + COALESCE(`2012_13_Dec_Quarter`,0) + COALESCE(`2012_13_Mar_Quarter`,0) + COALESCE(`2012_13_Jun_Quarter`,0) +
        COALESCE(`2013_14_Sep_Quarter`,0) + COALESCE(`2013_14_Dec_Quarter`,0) + COALESCE(`2013_14_Mar_Quarter`,0) + COALESCE(`2013_14_Jun_Quarter`,0) +
        COALESCE(`2014_15_Sep_Quarter`,0) + COALESCE(`2014_15_Dec_Quarter`,0) + COALESCE(`2014_15_Mar_Quarter`,0) + COALESCE(`2014_15_Jun_Quarter`,0) +
        COALESCE(`2015_16_Sep_Quarter`,0) + COALESCE(`2015_16_Dec_Quarter`,0) + COALESCE(`2015_16_Mar_Quarter`,0) + COALESCE(`2015_16_Jun_Quarter`,0) +
        COALESCE(`2016_17_Sep_Quarter`,0) + COALESCE(`2016_17_Dec_Quarter`,0) + COALESCE(`2016_17_Mar_Quarter`,0) + COALESCE(`2016_17_Jun_Quarter`,0) +
        COALESCE(`2017_18_Sep_Quarter`,0) + COALESCE(`2017_18_Dec_Quarter`,0) + COALESCE(`2017_18_Mar_Quarter`,0) + COALESCE(`2017_18_Jun_Quarter`,0)
    ) AS total_separations
FROM inpatient_separations
GROUP BY Hospital_Name;

SELECT * FROM vw_yearly_trends;
SELECT * FROM vw_hospital_performance;