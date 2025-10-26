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