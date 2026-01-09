--Question 1 --return top 100 results
/*
SELECT TOP 100
    book_id
    ,authors
    ,title
    ,average_rating as rating
FROM BooksDB.dbo.books
ORDER BY rating DESC;
*/
-- 2
/*
SELECT MIN(average_rating) AS least_popular
, title 
FROM BooksDB.dbo.books
GROUP BY title 
ORDER BY MIN(average_rating) ASC;
*/

--3
/*
SELECT tag_id,COUNT
FROM BooksDb.dbo.book_tags
ORDER BY count DESC
*/
/*
--question 4 - return name of most popular tag

SELECT tag_name,tag_id
FROM BooksDB.dbo.tags
WHERE tag_id = '30574'

-- 5

SELECT COUNT(original_publication_year)
FROM BooksDB.dbo.books
WHERE original_publication_year > '2000' AND original_publication_year <= '2010';
*/

-- 3. Top 10 books from your birth year ---';
SELECT 
    TOP 10
    title,
    authors,
    year,
    average_rating

    FROM BooksDB.dbo.year
WHERE 
    year = '1991'
ORDER BY 
    average_rating DESC;
