-- CHNAGE THE MASTER FROM VASUDHARINI TO LaborStatiscsDB

-- After that the result has 9 tables

-- Step 1, QUestion 1
-- Question:

-- ## Database Exploration
-- To start with, let’s get to know the database further.
-- 1. Use this space to make note of each table in the database, the columns within each table, each column’s data type, 
-- and how the tables are connected. You can write this down or draw a diagram. Whatever method helps you get an understanding of what is going on with `LaborStatisticsDB`.
--    To add a photo, diagram or document to your file, drop the file into the folder that holds this notebook.  Use the link button to the right of the  </> symbol in the gray part of this cell, the link is just the name of your file.

-- STep 1

/*
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';
*/

-- Step 2
-- . Inspect the most important table (series):
-- This table connects everything together.

/*
EXEC sp_help 'dbo.series';
*/


/*
-- step 2 (a)

SELECT 
    fk.name AS 'Constraint_Name',
    OBJECT_NAME(fk.parent_object_id) AS 'Table_Name',
    c_parent.name AS 'Column_in_Series_Table',
    OBJECT_NAME(fk.referenced_object_id) AS 'Links_to_Table',
    c_ref.name AS 'Column_in_Other_Table'
FROM 
    sys.foreign_keys AS fk
INNER JOIN 
    sys.foreign_key_columns AS fkc ON fk.object_id = fkc.constraint_object_id
INNER JOIN 
    sys.columns AS c_parent ON fkc.parent_object_id = c_parent.object_id AND fkc.parent_column_id = c_parent.column_id
INNER JOIN 
    sys.columns AS c_ref ON fkc.referenced_object_id = c_ref.object_id AND fkc.referenced_column_id = c_ref.column_id
WHERE 
    fk.parent_object_id = OBJECT_ID('dbo.series');

*/

/*
-- 2. What is the datatype for women employees?
SELECT 
    data_type_code, 
    data_type_text
FROM 
    dbo.datatype
WHERE 
    data_type_text LIKE '%WOMEN EMPLOYEES%';
    */


/*
    -- 3. What is the series id for  women employees in the commercial banking industry in the financial activities supersector?

    SELECT
    s.series_id,
    s.series_title
FROM
    dbo.series AS s
JOIN
    dbo.datatype AS dt ON s.data_type_code = dt.data_type_code
JOIN
    dbo.industry AS i ON s.industry_code = i.industry_code
JOIN
    dbo.supersector AS ss ON s.supersector_code = ss.supersector_code
WHERE
    s.data_type_code = '10' -- Code for Women Employees, Thousands (from Q2)
    AND i.industry_name = 'Commercial banking'
    AND ss.supersector_name = 'Financial activities';

    */

    -- Part 2
--     ## Aggregate Your Friends and Code some SQL
-- Put together the following:
-- 1. How many employees were reported in 2016 in all industries? Round to the nearest whole number.

/*
SELECT
    -- Multiply by 1000 to get the full number of employees, then round to 0 decimal places.
    ROUND(a.value * 1000, 0) AS total_all_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.data_type_code = '01'      -- Filter for 'ALL EMPLOYEES, THOUSANDS'
    AND s.industry_code = '00-000000'; -- Filter for 'Total nonfarm' (All Industries)
    */

    /*

    SELECT TOP 10 s.data_type_code, s.industry_code
FROM dbo.series AS s
WHERE s.data_type_code LIKE '01%';

*/

/*

SELECT data_type_code, data_type_text
FROM dbo.datatype
WHERE data_type_text LIKE '%ALL EMPLOYEES%';

*/

/*
SELECT
    -- Multiply by 1000 to get the full number of employees, then round to 0 decimal places.
    ROUND(a.value * 1000, 0) AS total_all_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.industry_code = '00-000000'      -- Filter for 'Total nonfarm' (All Industries)
    -- This filter handles the NULL data_type_code by relying on the descriptive title instead
    AND s.series_title LIKE '%All employees%'
    AND s.series_title LIKE '%Total nonfarm%';

    */

/*
    SELECT TOP 10
    s.series_title,
    s.data_type_code,
    a.value
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.industry_code = '00-000000';

    

    SELECT TOP 10
    s.series_title,
    s.data_type_code,
    a.value
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    TRIM(s.industry_code) = '00-000000';

    

    SELECT 
    industry_code, 
    industry_name
FROM 
    dbo.industry
WHERE 
    industry_name LIKE '%nonfarm%';

    

    SELECT
    -- Multiply by 1000 (value is in thousands) and round to the nearest whole number.
    ROUND(a.value * 1000, 0) AS total_all_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.data_type_code = '01'      -- Filter for 'ALL EMPLOYEES, THOUSANDS'
    AND s.industry_code = '0';   -- Filter for 'Total nonfarm' (All Industries)

    

    SELECT
    -- Multiply by 1000 and round to the nearest whole number.
    ROUND(a.value * 1000, 0) AS total_all_employees_2016
FROM
    dbo.annual_2016 AS a

    

    SELECT
    s.series_id,
    s.industry_code,
    s.data_type_code,
    a.value
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    ROUND(a.value, 0) = 144317;

    */

/*
    SELECT
    -- Multiply by 1000 (value is in thousands) and round to the nearest whole number.
    ROUND(a.value * 1000, 0) AS total_all_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.data_type_code = '01'
    AND s.industry_code = '0'; 
-- NOTE: This filter is based on BLS standards, although the data failed to match.


SELECT
    -- Multiply by 1000 and round to get the full number of women employees.
    ROUND(a.value * 1000, 0) AS total_women_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.data_type_code = '10'      -- Filter for 'WOMEN EMPLOYEES, THOUSANDS'
    AND s.industry_code = '0';   -- Filter for 'Total nonfarm' (All Industries)

    */
/*
    SELECT
    -- Multiply by 1000 and round to get the full number of production/nonsupervisory employees.
    ROUND(a.value * 1000, 0) AS total_prod_non_sup_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.data_type_code = '06'      -- Filter for 'PRODUCTION AND NONSUPERVISORY EMPLOYEES, THOUSANDS'
    AND s.industry_code = '0';   -- Filter for 'Total nonfarm' (All Industries)

    SELECT
    -- Multiply by 1000 and round to get the full number of production/nonsupervisory employees.
    ROUND(a.value * 1000, 0) AS total_prod_non_sup_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.data_type_code = '06'      -- Filter for 'PRODUCTION AND NONSUPERVISORY EMPLOYEES, THOUSANDS'
    AND s.industry_code = '0';   -- Filter for 'Total nonfarm' (All Industries)
    

    SELECT
    j.value AS avg_weekly_hours
FROM
    dbo.january_2017 AS j
JOIN
    dbo.series AS s ON j.series_id = s.series_id
WHERE
    s.data_type_code = '07'      -- Filter for 'AVERAGE WEEKLY HOURS (PRODUCTION)'
    AND s.industry_code = '0';   -- Filter for 'Total nonfarm' (All Industries)
    

    SELECT
    j.value AS avg_weekly_hours
FROM
    dbo.january_2017 AS j
JOIN
    dbo.series AS s ON j.series_id = s.series_id
WHERE
    s.data_type_code = '07'      -- Filter for 'AVERAGE WEEKLY HOURS (PRODUCTION)'
    AND s.industry_code = '0';   -- Filter for 'Total nonfarm' (All Industries)

    

    SELECT
    -- Multiply by 1000 (value is in thousands of dollars) and round to the nearest penny (2 decimal places).
    ROUND(j.value * 1000, 2) AS total_weekly_payroll
FROM
    dbo.january_2017 AS j
JOIN
    dbo.series AS s ON j.series_id = s.series_id
WHERE
    s.data_type_code = '82'      -- Filter for 'AGGREGATE WEEKLY PAYROLLS (PRODUCTION)'
    AND s.industry_code = '0';   -- Filter for 'Total nonfarm' (This filter fails, but must be submitted)
    */


/*

    -- Query for Highest Average Weekly Hours
SELECT TOP 1 
    i.industry_name,
    j.value AS avg_weekly_hours
FROM
    dbo.january_2017 AS j
JOIN
    dbo.series AS s ON j.series_id = s.series_id
JOIN
    dbo.industry AS i ON s.industry_code = i.industry_code
WHERE
    s.data_type_code = '07'
    AND i.industry_name NOT LIKE '%Total%' -- EXCLUDE faulty aggregate rows
ORDER BY
    j.value DESC; -- HIGHEST


--- Query for Lowest Average Weekly Hours ---

SELECT TOP 1 
    i.industry_name,
    j.value AS avg_weekly_hours
FROM
    dbo.january_2017 AS j
JOIN
    dbo.series AS s ON j.series_id = s.series_id
JOIN
    dbo.industry AS i ON s.industry_code = i.industry_code
WHERE
    s.data_type_code = '07'
    AND i.industry_name NOT LIKE '%Total%' 
ORDER BY
    j.value ASC; -- LOWEST



    -- question 1 in part 2

    SELECT
    ROUND(a.value * 1000, 0) AS total_all_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.data_type_code = '01' AND s.industry_code = '0';
    
-- 2nd question part 2 doesnt work

    SELECT
    ROUND(a.value * 1000, 0) AS total_women_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.data_type_code = '10' AND s.industry_code = '0';

    


-- 3rd question part 2 doesnt work
    SELECT
    ROUND(a.value * 1000, 0) AS total_prod_non_sup_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.data_type_code = '06' AND s.industry_code = '0';

    

    -- 4th question part 2-- doesnt work

    SELECT
    j.value AS avg_weekly_hours
FROM
    dbo.january_2017 AS j
JOIN
    dbo.series AS s ON j.series_id = s.series_id
WHERE
    s.data_type_code = '07' AND s.industry_code = '0';

    */

/*
    -- 5th qurstion

    SELECT
    ROUND(j.value * 1000, 2) AS total_weekly_payroll
FROM
    dbo.january_2017 AS j
JOIN
    dbo.series AS s ON j.series_id = s.series_id
WHERE
    s.data_type_code = '82' AND s.industry_code = '0';
    */
    /*

    SELECT
    -- Multiply by 1000 (value is in thousands) and round to the nearest whole number.
    ROUND(a.value * 1000, 0) AS total_all_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.data_type_code = '01'      -- Filter for 'ALL EMPLOYEES, THOUSANDS'
    AND s.industry_code = '0';   -- Filter for 'Total nonfarm' (All Industries)
    

    SELECT
    ROUND(a.value * 1000, 0) AS total_all_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.data_type_code = '01'      -- Filter for 'ALL EMPLOYEES, THOUSANDS'
    AND s.industry_code = '0';   -- Filter for 'Total nonfarm' (All Industries)
    */
/*
    -- Let's find ALL data related to 'Total nonfarm' to see the correct codes
SELECT TOP 10
    s.series_id,
    s.series_title,
    s.industry_code,
    s.data_type_code,
    a.value
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.industry_code = '0'; -- We know this code is correct for 'Total nonfarm'
    */

    -- another try differnt way, this works
/*
    USE LaborStatisticsDB;

SELECT 
    ROUND(SUM(a.value), 0) AS total_employees_2016
FROM 
    annual_2016 AS a
JOIN 
    series AS s
    ON a.series_id = s.series_id
WHERE 
    s.data_type_code = '01';  -- '01' usually represents "All Employees"
    */
/*
    -- 2nd question part 2  works

    USE LaborStatisticsDB;

SELECT 
    ROUND(SUM(a.value), 0) AS total_women_employees_2016
FROM 
    annual_2016 AS a
JOIN 
    series AS s
    ON a.series_id = s.series_id
WHERE 
    s.data_type_code = '06';  -- '06' typically represents "Women Employees"

    

    SELECT
    -- Multiply by 1000 (value is in thousands) and round to the nearest whole number.
    ROUND(a.value * 1000, 0) AS total_women_employees_2016
FROM
    dbo.annual_2016 AS a
JOIN
    dbo.series AS s ON a.series_id = s.series_id
WHERE
    s.data_type_code = '10'      -- Filter for 'WOMEN EMPLOYEES, THOUSANDS'
    AND s.industry_code = '0';   -- Filter for 'Total nonfarm' (All Industries)
*/

-- 3rd of part 2
/*
USE LaborStatisticsDB;

SELECT 
    ROUND(SUM(a.value), 0) AS total_production_nonsupervisory_employees_2016
FROM 
    annual_2016 AS a
JOIN 
    series AS s
    ON a.series_id = s.series_id
JOIN 
    datatype AS d
    ON s.data_type_code = d.data_type_code
WHERE 
    d.data_type_name = 'Production and nonsupervisory employees';
*/

/*

USE LaborStatisticsDB;
SELECT TOP 10 * FROM datatype;
*/

/*
USE LaborStatisticsDB;

SELECT 
    ROUND(SUM(a.value), 0) AS total_production_nonsupervisory_employees_2016
FROM 
    annual_2016 AS a
JOIN 
    series AS s
    ON a.series_id = s.series_id
JOIN 
    datatype AS d
    ON s.data_type_code = d.data_type_code
WHERE 
    d.data_type_text = 'PRODUCTION AND NONSUPERVISORY EMPLOYEES';
    */

/*
    USE LaborStatisticsDB;

SELECT 
    ROUND(AVG(m.value), 2) AS avg_weekly_hours_prod_nonsupervisory_jan_2017
FROM 
    monthly_2017 AS m
JOIN 
    series AS s
    ON m.series_id = s.series_id
JOIN 
    datatype AS d
    ON s.data_type_code = d.data_type_code
WHERE 
    d.data_type_text = 'AVERAGE WEEKLY HOURS OF PRODUCTION AND NONSUPERVISORY EMPLOYEES'
    AND m.month = 1;
    

    SELECT
    j.value AS avg_weekly_hours
FROM
    dbo.january_2017 AS j
JOIN
    dbo.series AS s ON j.series_id = s.series_id
WHERE
    s.data_type_code = '07'      -- Filter for 'AVERAGE WEEKLY HOURS (PRODUCTION)'
    AND s.industry_code = '0';   -- Filter for 'Total nonfarm' (All Industries)
    */

    USE LaborStatisticsDB;
GO
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES;

-- answer
-- Result Set 1-0
========================================
-- total_weekly_payroll_prod_nonsupervisory_jan_2017
-------------------------------------------------
$1,838,753,220.00     
--                           ((1 row affected))



