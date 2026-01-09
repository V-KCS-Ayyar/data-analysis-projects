/*
-- Question 1 --return top 100 results

SELECT TOP 100
    book_id
    ,authors
    ,title
    ,average_rating as rating
FROM BooksDB.dbo.books
ORDER BY rating DESC;
*/
/*
-- question 2 - return least popular book
SELECT MIN(average_rating) AS least_popular
, title 
FROM BooksDB.dbo.books
GROUP BY title 
ORDER BY MIN(average_rating) ASC;
*/

/*
-- question 3 - return least popular book

SELECT tag_id,COUNT
FROM BooksDb.dbo.book_tags
ORDER BY count DESC
*/
/*
--question 4 - return name of most popular tag

SELECT tag_name,tag_id
FROM BooksDB.dbo.tags
WHERE tag_id = '30574'
*/
/*
-- question 5 - return number of books published in the first decade of 2000
SELECT COUNT(original_publication_year)
FROM BooksDB.dbo.books
WHERE original_publication_year > '2000' AND original_publication_year <= '2010';

-- question 6 --return number of books that contain the word, "happy"
SELECT COUNT(title)
FROM BooksDB.dbo.books
WHERE title LIKE '%happy%'
*/
/*
-- question 7

select original_title AS 'Bill Watterson Books'
from BooksDB.dbo.books
where authors = 'Bill Watterson'
ORDER BY average_rating DESC;
SELECT original_title AS 'Brandon Sanderson Books'
FROM BooksDB.dbo.books
WHERE authors = 'Brandon Sanderson'
ORDER BY average_rating DESC;
SELECT original_title AS 'J.K. Rowling Books'
FROM BooksDB.dbo.books
WHERE authors = 'J.K. Rowling'
ORDER BY average_rating DESC;
*/
/*
-- question 8

SELECT COUNT(*)
FROM BooksDB.dbo.books
WHERE authors BETWEEN 'rock' AND 'roll';
*/

-- paRT b
/*
SELECT COUNT(*) AS WWI_Era_Book_Count
FROM BooksDB.dbo.books
WHERE original_publication_year BETWEEN 1914 AND 1921;
*/
-- 2ND QUESTION OF PART B
/*
SELECT TOP 1000 *
FROM BooksDB.dbo.book_tags
ORDER BY tag_id;
*/

-- 3RD QUESTION PART 3
/*

SELECT tag_id, COUNT(goodreads_book_id) AS BookCount
FROM BooksDB.dbo.book_tags
GROUP BY tag_id;
*/
/*
-- pART c
SELECT tag_id, COUNT(goodreads_book_id) AS BookCount
FROM BooksDB.dbo.book_tags
GROUP BY tag_id;
*/

--pART c 2ND Qquestion
/*
SELECT COUNT(DISTINCT user_id) AS LowRatingUsers
FROM BooksDB.dbo.ratings
WHERE rating < 2;
*/

-- part C 3rd question
/*
SELECT COUNT(DISTINCT book_id) AS HighRatedBooks
FROM BooksDB.dbo.ratings
WHERE rating >= 4;
*/

-- Patt D

-- Question 1
-- Question 1: Create a query that returns table items where the `tag_name` describes the book as a mystery.
-- Hint: Use the wildcard to find the word mystery at the beginning, middle, and end of a `tag_name`
/*
SELECT *
FROM BooksDB.dbo.tags
WHERE tag_name LIKE '%mystery%';
*/

--
/*
SELECT
  user_id,
  COUNT(book_id) AS [Total Books To Read]
FROM BooksDB.dbo.to_read
GROUP BY
  user_id
ORDER BY
  user_id ASC;

*/
--

SELECT
  user_id,
  COUNT(book_id) AS [Total Books To Read]
FROM BooksDB.dbo.to_read
GROUP BY
  user_id
ORDER BY
  [Total Books To Read] DESC;

