-- Question 1 - part 4 Studio
-- Willow wants a list of book titles that have multiple authors attributed to them.  Write a query to return her desired results.
-- using correlated sub query
/*
SELECT T1.title
FROM BooksDB.dbo.Books AS T1
WHERE (
    SELECT COUNT(T2.author_id)
    FROM BooksDB.dbo.BooksAuthors AS T2
    WHERE T2.book_id = T1.id
) > 1;
*/
/*
SELECT T1.title
FROM BooksDB.dbo.Books AS T1
WHERE (
    SELECT COUNT(T2.author_id)
    FROM BooksDB.dbo.BooksAuthors AS T2
    WHERE T2.book_id = T1.id  
) > 1;
*/
/*
SELECT T1.title
FROM BooksDB.dbo.Books AS T1
WHERE (
    SELECT COUNT(T2.author_id)
    FROM BooksDB.dbo.AuthorBooks AS T2  
    WHERE T2.book_id = T1.id
) > 1;
*/
/* answer for question 1, works perfectly
SELECT b.authors, b.title 
FROM BooksDB.dbo.books AS b
WHERE authors IN
  ( SELECT b.authors
     WHERE authors LIKE '%, %')
     */

-- 2nd question:
-- 
/*
SELECT title
FROM BooksDB.dbo.books AS bookstag
WHERE EXISTS (
    -- Check if a record exists in the linking table...
    SELECT 1
    FROM BooksDB.dbo.book_tags AS bt
    WHERE bt.goodreads_book_id= bookstag.id-- (This is the correlation)
    
    -- ...that matches the 'Meditation' tag ID
    AND bt.tag_id IN (
        -- This subquery finds the 'Meditation' tag's ID
        SELECT t.tag_id
        FROM BooksDB.dbo.tags AS t
        WHERE t.tag_id ='meditation'
       -- WHERE t.name = 'Meditation'
    )
);
*/

-- 2nd question 2nd query after editing first one
-- Ira was asked by a customer for titles that have been tagged "Meditation". 
-- As you create a query for Ira, think about how the tables in BooksDB are organized as you write your query.
/*
SELECT title
FROM BooksDB.dbo.books AS bookstag
WHERE EXISTS (
    SELECT 1
    FROM BooksDB.dbo.book_tags AS bt
    WHERE bt.goodreads_book_id = bookstag.id
    AND bt.tag_id IN (
        SELECT t.tag_id
        FROM BooksDB.dbo.tags AS t
        WHERE t.tag_name= 'meditation'  
            )
);
*/

--3rd question
/*
SELECT title, original_title, average_rating
    FROM BooksDB.dbo.books 
    WHERE average_rating >= 4.2 
    INTERSECT
    SELECT title, original_title, average_rating 
    FROM BooksDB.dbo.books 
    WHERE original_title IS NOT NULL AND original_title = title
    ORDER by average_rating DESC;
    */

    -- Select books with an average rating of 4.2 or higher
    -- answer for 3rd question
    /*
SELECT original_title, title, average_rating
FROM BooksDB.dbo.books
WHERE average_rating >= 4.2
INTERSECT
SELECT original_title, title, average_rating
FROM BooksDB.dbo.books
WHERE title = original_title AND original_title IS NOT NULL
ORDER BY average_rating DESC;
*/

-- 4th question part A
/*
SELECT original_publication_year, title
FROM BooksDB.dbo.books AS b
WHERE (
    SELECT AVG(CAST(r.rating AS FLOAT))
    FROM BooksDB.dbo.ratings AS r
    WHERE r.book_id = b.id
) > b.average_rating;
*/


-- 4th question part B
/* this has values with null and minus, removing it and getting only values with year and not in negative
SELECT original_publication_year, title
FROM BooksDB.dbo.books AS b
WHERE (
        SELECT AVG(CAST(r.rating AS FLOAT))
    FROM BooksDB.dbo.ratings AS r
    WHERE r.book_id = b.id
) > b.average_rating

-- Part B: Order by year, then by title
ORDER BY original_publication_year, title;
*/

-- 4th question values without null and negative years
/*
SELECT original_publication_year, title
FROM BooksDB.dbo.books AS b
WHERE (
    SELECT AVG(CAST(r.rating AS FLOAT))
    FROM BooksDB.dbo.ratings AS r
    WHERE r.book_id = b.id
) > b.average_rating
AND original_publication_year IS NOT NULL 
AND original_publication_year > 0         

-- Part B: Order by year, then by title
ORDER BY original_publication_year, title;
*/