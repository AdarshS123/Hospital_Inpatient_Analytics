CREATE DATABASE sa_health;
USE sa_health;

CREATE TABLE inpatient_separations (
    Hospital_Code VARCHAR(10),
    Hospital_Name VARCHAR(255),
    2012_13_Sep_Quarter INT,
    2012_13_Dec_Quarter INT,
    2012_13_Mar_Quarter INT,
    2012_13_Jun_Quarter INT,
    2013_14_Sep_Quarter INT,
    2013_14_Dec_Quarter INT,
    2013_14_Mar_Quarter INT,
    2013_14_Jun_Quarter INT,
    2014_15_Sep_Quarter INT,
    2014_15_Dec_Quarter INT,
    2014_15_Mar_Quarter INT,
    2014_15_Jun_Quarter INT,
    2015_16_Sep_Quarter INT,
    2015_16_Dec_Quarter INT,
    2015_16_Mar_Quarter INT,
    2015_16_Jun_Quarter INT,
    2016_17_Sep_Quarter INT,
    2016_17_Dec_Quarter INT,
    2016_17_Mar_Quarter INT,
    2016_17_Jun_Quarter INT,
    2017_18_Sep_Quarter INT,
    2017_18_Dec_Quarter INT,
    2017_18_Mar_Quarter INT,
    2017_18_Jun_Quarter INT
);
drop table inpatient_separations;
show databases;
SHOW VARIABLES LIKE 'local_infile';

SHOW VARIABLES LIKE 'C:/Users/adars/OneDrive/Desktop/project/hospital sql project/rid1076_inpatient-seps.csv';
SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE "C:/Users/adars/OneDrive/Desktop/project/hospital sql project/rid1076_inpatient-seps.csv"
INTO TABLE inpatient_separations
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from inpatient_separations;

#################################################################################################################################
#4.1 Total separations per hospital (all years)

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
GROUP BY Hospital_Name
ORDER BY total_separations DESC;

##########################################################################################################################################
#4.2 Yearly total separations across all hospitals

