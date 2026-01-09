-- Select all columns from the Books table
-- question 1 from exercise 1
/*
SELECT TOP 1000 *
FROM BooksDB.dbo.books
*/

-- qUESTION 2
/*
SELECT COUNT(*) AS NumberOfTitles
FROM BooksDB.dbo.books
*/

-- QUESTION 3
/*
SELECT COUNT(*) AS BooksBefore1800
FROM BooksDB.dbo.books
WHERE original_publication_year < 1800;
*/

-- QUESTION 4
/*
SELECT DISTINCT authors
FROM BooksDB.dbo.books;
*/
/*
-- QUESTION 5

SELECT COUNT(*) AS EnglishBookCount
FROM BooksDB.dbo.books
WHERE language_code = 'eng' OR language_code LIKE 'en-%';
*/
/*
-- QUESTION 6

SELECT COUNT(*) AS WWI_Era_Book_Count
FROM BooksDB.dbo.books
WHERE original_publication_year BETWEEN 1914 AND 1921;
*/

-- QUESTION 7

