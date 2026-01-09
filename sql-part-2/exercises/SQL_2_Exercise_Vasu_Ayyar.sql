/*
SELECT
    base,
    RIGHT(base, 3) AS Last_Three_Chars
FROM
    RideShareDB.dbo.other_FHV_services_jan_aug_2015;
    

-- 1st question
    SELECT 
    base_name,
    RIGHT(base_name, 3) AS last_three_characters
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;


-- 2nd question

SELECT
    trips,
    CHARINDEX(' ', trips) AS space_position_in_trips,
    pickups,
    CHARINDEX(' ', pickups) AS space_position_in_pickups
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;


SELECT TOP 5 *
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;



SELECT
    Number_of_Trips,
    CHARINDEX(' ', Number_of_Trips) AS space_position_in_trips,
    Number_of_Vehicles,
    CHARINDEX(' ', Number_of_Vehicles) AS space_position_in_vehicles
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;


SELECT 
    DATENAME(month, Pick_Up_Date) AS Month_Name
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
ORDER BY Month_Name DESC;


SELECT 
    DAY(Pick_Up_Date) AS Day_Number,
    DATENAME(month, Pick_Up_Date) AS Month_Name
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
ORDER BY Day_Number ASC;


SELECT TOP 1
    Base_Name,
    Pick_Up_Date,
    pickup_latitude,
    pickup_longitude
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
WHERE Base_Name LIKE '%Lyft%'
ORDER BY pickup_latitude DESC;


SELECT TOP 5 *
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;


SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME LIKE '%latitude%' OR COLUMN_NAME LIKE '%longitude%';


SELECT TOP 1 *
FROM RideShareDB.dbo.lyft
ORDER BY Latitude DESC;
*/

-- Using <span style="color: rgb(163, 21, 21);
--  font-family: Menlo, Monaco, Consolas, &quot;Droid Sans Mono&quot;, &quot;Courier New&quot;, 
-- monospace, &quot;Droid Sans Fallback&quot;; font-size: 12px;">other_FHV_services_jan_aug_2015
-- </span><span style="color: var(--vscode-foreground);">, write a query that connects the the base number
--  and the base name in a string that uses the following format: base_number: base_name.</span>

SELECT 
    Base_Number + ': ' + Base_Name AS Base_Info
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;








