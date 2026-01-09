/*

1.  Create a query that returns the longest title in the dataset.  We can do this in two steps.

> A. Create a query that returns the length of the longest title.
> 
> B. Create a query that uses the length you found in step A to find the longest title.
*/
-- Code here:
-- A

/*
 SELECT MAX(LEN(title))
FROM BooksDB.dbo.books
*/
--1 B answer
/*
SELECT
  title,
  authors
FROM
  BooksDB.dbo.books
WHERE
  LEN(title) = 186;
  */

  --Use what you learned in question 1 to find the shortest author name.  
/*
> A. Create a query that returns the length of the shortest author.
> 
> B. Create a query that returns the shortest author's name.
*/

-- 2 A
/*
  SELECT MIN(LEN(authors))
FROM BooksDB.dbo.books;
*/

-- 2B
/*
SELECT
  authors
FROM
  BooksDB.dbo.books
WHERE
  LEN(authors) = (SELECT MIN(LEN(authors)) FROM BooksDB.dbo.books);
*/
--5\. How many books have been identified as printed in a language other than English?  There are four language codes for English: 'en', 'eng', 'en-US', and 'en-UK'.  Use LEFT to answer the question.  (Do not use the wildcard)

--You might want to use one of these [comparison operators](https://docs.microsoft.com/en-us/sql/t-sql/language-elements/comparison-operators-transact-sql?view=sql-server-ver15).

/*
SELECT
  COUNT(*) AS NonEnglishBookCount
FROM
  BooksDB.dbo.books
WHERE
  LEFT(language_code, 2) <> 'en';
  */
/*
  SELECT COUNT(*) AS NonEnglishBookCount
FROM BooksDB.dbo.books
WHERE LEFT(language_code, 2) <> 'en';
*/
-- retry 5 using substring
/*
SELECT COUNT(*) AS NonEnglishBookCount
FROM BooksDB.dbo.books
WHERE SUBSTRING(language_code, 1, 2) <> 'en';
*/
-- 7th question 
-- Create a column that returns the title, authors, and language codes.  Concatenate these elements so that they return in the following way: title by authors in language\_code language.
/*
> A.  Check each selected column to see where any values are NULL.  Did any of the columns contain NULL values?  If so, which one?
*/
/*
SELECT
  COUNT(*) - COUNT(title) AS MissingTitles,
  COUNT(*) - COUNT(authors) AS MissingAuthors,
  COUNT(*) - COUNT(language_code) AS MissingLanguageCodes
FROM BooksDB.dbo.books;
*/
--3 3\. How many titles contain the word "The"?  
/*
  

> A. Is there a difference between the number of titles that use "The" or "the"?
*/
/*
SELECT COUNT(*) AS TheCount
FROM BooksDB.dbo.books
WHERE LOWER(title) LIKE '%the%';
*/


-- 4.  How many authors' names _start_ with 'Z'?
/*
SELECT COUNT(DISTINCT authors) AS AuthorCount
FROM BooksDB.dbo.books
WHERE authors LIKE 'Z%';
*/


-- 2 A
/*
SELECT MIN(LEN(authors))
FROM BooksDB.dbo.books;
*/

--2B
/*
SELECT authors
FROM BooksDB.dbo.books
WHERE LEN(authors) = (SELECT MIN(LEN(authors)) FROM BooksDB.dbo.books);
*/

-- 8.  Update the query in question 7 using COALESCE to change the language code values from NULL to 'unknown'.

-- > A.  Has this changed the language\_code  where the values are NULL?
/*
SELECT CONCAT(title, ' by ', authors, ' in ', COALESCE(language_code, 'unknown'), ' language') AS BookDescription
FROM BooksDB.dbo.books;

--5
/*

SELECT COUNT(*) AS NonEnglishBookCount
FROM BooksDB.dbo.books
WHERE LEFT(language_code, 2) <> 'en';
*/

--8

SELECT CONCAT(title, ' by ', authors, ' in ', COALESCE(language_code, 'unknown'), ' language') AS BookDescription
FROM BooksDB.dbo.books;