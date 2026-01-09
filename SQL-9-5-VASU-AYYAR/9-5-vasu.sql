/*
USE LaborStatisticsDB;

SELECT ROUND(SUM(value)) AS total_employees_2016
FROM annual_2016
WHERE data_type_code = 1;


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
*/
/*

USE LaborStatisticsDB;
GO
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME LIKE '%monthly%';


USE LaborStatisticsDB;
GO

SELECT 
    ROUND(AVG(m.value), 2) AS avg_weekly_hours_prod_nonsupervisory_jan_2017
FROM january_2017 AS m
JOIN series AS s 
    ON m.series_id = s.series_id
JOIN datatype AS d 
    ON s.data_type_code = d.data_type_code
WHERE 
    d.data_type_text = 'AVERAGE WEEKLY HOURS OF PRODUCTION AND NONSUPERVISORY EMPLOYEES';



USE LaborStatisticsDB;
GO

SELECT 
    ROUND(SUM(m.value), 2) AS total_weekly_payroll_prod_nonsupervisory_jan_2017
FROM january_2017 AS m
JOIN series AS s 
    ON m.series_id = s.series_id
JOIN datatype AS d 
    ON s.data_type_code = d.data_type_code
WHERE 
    d.data_type_text = 'AVERAGE WEEKLY PAYROLLS OF PRODUCTION AND NONSUPERVISORY EMPLOYEES';
    

SELECT DISTINCT data_type_text
FROM datatype;


SELECT DISTINCT data_type_text
FROM datatype
WHERE data_type_text LIKE '%PAYROLL%';


USE LaborStatisticsDB;
GO

SELECT 
    ROUND(SUM(m.value), 2) AS total_weekly_payroll_prod_nonsupervisory_jan_2017
FROM january_2017 AS m
JOIN series AS s 
    ON m.series_id = s.series_id
JOIN datatype AS d 
    ON s.data_type_code = d.data_type_code
WHERE 
    d.data_type_text = 'AGGREGATE WEEKLY PAYROLLS OF PRODUCTION AND NONSUPERVISORY EMPLOYEES';



USE LaborStatisticsDB;
GO

SELECT 
    '$' + FORMAT(ROUND(SUM(m.value), 2), 'N2') AS total_weekly_payroll_prod_nonsupervisory_jan_2017
FROM january_2017 AS m
JOIN series AS s
    ON m.series_id = s.series_id
JOIN datatype AS d
    ON s.data_type_code = d.data_type_code
WHERE d.data_type_text = 'AGGREGATE WEEKLY PAYROLLS OF PRODUCTION AND NONSUPERVISORY EMPLOYEES';



USE LaborStatisticsDB;
GO

SELECT 
    i.industry_name,
    ROUND(SUM(m.value), 2) AS total_weekly_payroll_prod_nonsupervisory_jan_2021
FROM january_2021 AS m
JOIN series AS s
    ON m.series_id = s.series_id
JOIN datatype AS d
    ON s.data_type_code = d.data_type_code
JOIN industry AS i
    ON s.industry_code = i.industry_code
WHERE d.data_type_text = 'AGGREGATE WEEKLY PAYROLLS OF PRODUCTION AND NONSUPERVISORY EMPLOYEES'
GROUP BY i.industry_name
ORDER BY total_weekly_payroll_prod_nonsupervisory_jan_2021 DESC;


USE LaborStatisticsDB;
GO

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES;


USE LaborStatisticsDB;
GO

SELECT 
    i.industry_name,
    ROUND(SUM(m.value), 2) AS total_weekly_payroll_prod_nonsupervisory_jan_2017
FROM january_2017 AS m
JOIN series AS s
    ON m.series_id = s.series_id
JOIN datatype AS d
    ON s.data_type_code = d.data_type_code
JOIN industry AS i
    ON s.industry_code = i.industry_code
WHERE d.data_type_text = 'AGGREGATE WEEKLY PAYROLLS OF PRODUCTION AND NONSUPERVISORY EMPLOYEES'
GROUP BY i.industry_name
ORDER BY total_weekly_payroll_prod_nonsupervisory_jan_2017 DESC;


USE LaborStatisticsDB;
GO

-- Join annual_2016 with series
SELECT TOP 50 *
FROM annual_2016 AS a
LEFT JOIN series AS s
    ON a.series_id = s.series_id
ORDER BY a.id;


USE LaborStatisticsDB;
GO

-- Join series and datatype on data_type_code
SELECT TOP 50 *
FROM series AS s
INNER JOIN datatype AS d
    ON s.data_type_code = d.data_type_code
ORDER BY s.id;


USE LaborStatisticsDB;
GO

-- Join series and datatype on data_type_code
SELECT TOP 50 *
FROM series AS s
INNER JOIN datatype AS d
    ON s.data_type_code = d.data_type_code
ORDER BY s.series_id;


USE LaborStatisticsDB;
GO

-- Join series and industry on industry_code
SELECT TOP 50 *
FROM series AS s
INNER JOIN industry AS i
    ON s.industry_code = i.industry_code
ORDER BY s.series_id;



USE LaborStatisticsDB;
GO

SELECT 
    j.series_id,
    s.industry_code,
    i.industry_name,
    j.value
FROM january_2017 AS j
JOIN series AS s
    ON j.series_id = s.series_id
JOIN industry AS i
    ON s.industry_code = i.industry_code
WHERE j.value > (
    SELECT AVG(a.value)
    FROM annual_2016 AS a
    WHERE a.data_type_code = 82
);



USE LaborStatisticsDB;
GO

SELECT 
    j.series_id,
    s.industry_code,
    i.industry_name,
    j.value
FROM january_2017 AS j
JOIN series AS s
    ON j.series_id = s.series_id
JOIN industry AS i
    ON s.industry_code = i.industry_code
WHERE j.value > (
    SELECT AVG(a.value)
    FROM annual_2016 AS a
    WHERE a.data_type_code = 82
);


USE LaborStatisticsDB;
GO

SELECT 
    j.series_id,
    s.industry_code,
    i.industry_name,
    j.value
FROM january_2017 AS j
JOIN series AS s
    ON j.series_id = s.series_id
JOIN industry AS i
    ON s.industry_code = i.industry_code
WHERE j.value > (
    SELECT AVG(a.value)
    FROM annual_2016 AS a
    JOIN series AS s2
        ON a.series_id = s2.series_id
    WHERE s2.data_type_code = 82
);



USE LaborStatisticsDB;
GO

-- Compare average weekly earnings between annual_2016 and january_2017
SELECT 
    ROUND(AVG(a.value), 2) AS avg_weekly_earnings,
    '2016' AS year,
    'Annual' AS period
FROM annual_2016 AS a
JOIN series AS s
    ON a.series_id = s.series_id
WHERE s.data_type_code = 30

UNION

SELECT 
    ROUND(AVG(j.value), 2) AS avg_weekly_earnings,
    '2017' AS year,
    'January' AS period
FROM january_2017 AS j
JOIN series AS s
    ON j.series_id = s.series_id
WHERE s.data_type_code = 30;

*/











