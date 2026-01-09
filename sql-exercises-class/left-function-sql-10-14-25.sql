/*
select upper(left(surname, 3)) as surname_first_3, nationality, driverID
from formula_one.dbo.drivers;
*/

-- which month have the most races occured in?

/*
SELECT month(date) as race_month,
datename(month,date)as month_name,
count(*) as num_races
from formula_one.dbo.races
WHERE YEAR([date]>2014
group by month(date), Datename(month,date)
order by num_races DESC;
*/

-- race reviews occures 4 days after each race
/*
select name as race_name,
date as race_date,
DATEADD(DAY,4,date)as review_date
from formula_one.dbo.races 
*/


-- how can we dispaly each race date as a formateed string like "Sunday,march 28, 2021"
/*
SELECT name as race_name,
format(date, 'dddd,MMMM,dd,yyyy') AS formatted_date
from formula_one.dbo.races
order by date 
*/

-- create a column thta gas original title, if it exists, or title if original_title is null
/*
select authors, book_id, ISNULL(original_title,title)AS original_title_refined
from BooksDB.dbo.books 
*/

--colaesce function in sql

select authors, book_id, COALESCE(original_title,title)AS original_title_refined
from BooksDB.dbo.books 


-- cell phone, home phone, wor phone
-- promary phone contatc

COALESCE (cell_phone, home_phone, work_phone)