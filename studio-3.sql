-- question 1 Highlight popular women writers based on ratings from `BooksDB` by writing a query that returns
--tag_id`, the number of times each `tag_id` is used and the `tag_name`. 
--   he `GROUP BY` and `HAVING` clause to narrow your focus and try multiple keywords, such as "woman" and "female".
/*
SELECT TOP 10 t.tag_name, bt.tag_id, SUM(bt.count) AS total, b.authors
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags AS t 
ON bt.tag_id = t.tag_id
LEFT JOIN BooksDB.dbo.books AS b  
ON bt.goodreads_book_id = b.book_id 
GROUP BY t.tag_name, bt.tag_id, b.authors
HAVING t.tag_name LIKE '%female%'
ORDER BY total DESC
*/

-- question 2
-- ### Event 2: Choose another event from March/Spring
-- Write a query to return authors, titles, ratings, and `tag_id` that you would want to promote during your chosen event.
/*
SELECT TOP 10 t.tag_name, bt.tag_id, SUM(bt.count) AS total, b.title
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags AS t 
ON bt.tag_id = t.tag_id
LEFT JOIN BooksDB.dbo.books AS b  
ON bt.goodreads_book_id = b.book_id 
GROUP BY t.tag_name, bt.tag_id, b.title
HAVING t.tag_name LIKE '%spring'
ORDER BY total DESC
*/

-- question 2 (a)
/*
SELECT TOP 15
    b.authors,
    b.title,
    b.average_rating,
    t.tag_id,
    t.name AS tag_name
FROM
    BooksDB.dbo.books AS b
INNER JOIN
    BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
INNER JOIN
    BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE
    t.name LIKE '%irish%'
    OR t.name LIKE '%ireland%'
ORDER BY
    b.average_rating DESC;
    */

    -- question 2 (a) part 1
/*
    SELECT TOP 10
    b.authors,
    b.title,
    b.average_rating,
    t.tag_id,
    t.tag_name AS tag_name  -- Corrected this line
FROM
    BooksDB.dbo.books AS b
INNER JOIN
    BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
INNER JOIN
    BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE
    t.tag_name LIKE '%irish%'    -- Corrected this line
    OR t.tag_name LIKE '%ireland%' -- Corrected this line
ORDER BY
    b.average_rating DESC;
    */

    -- cookbook event
/*
    SELECT TOP 10
    b.title,
    b.authors,
    b.average_rating,
    SUM(bt.count) AS popularity_score
FROM  BooksDB.dbo.books AS b
JOIN  BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
JOIN  BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE  t.tag_name IN ('cookbooks', 'food', 'cooking', 'baking', 'foodie')
GROUP BY  b.title, b.authors, b.average_rating
ORDER BY popularity_score DESC;
*/

--- cookbook event sql query
/*
SELECT TOP 10
    b.title,
    b.authors,
    SUM(bt.count) AS popularity_score
FROM  BooksDB.dbo.books AS b
JOIN  BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
WHERE  bt.tag_id IN (SELECT tag_id FROM BooksDB.dbo.tags WHERE tag_name IN ('cookbooks', 'food', 'cooking'))
GROUP BY  b.title, b.authors
ORDER BY  popularity_score DESC;
*/

-- frankenstin event sql query

SELECT TOP 10
    b.title,
    b.authors,
    b.average_rating
FROM  BooksDB.dbo.books AS b
JOIN  BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
JOIN  BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE  t.tag_name IN ('classics', 'horror', 'gothic', 'frankenstein')
GROUP BY  b.title, b.authors, b.average_rating
HAVING  COUNT(t.tag_name) > 1
ORDER BY  b.average_rating DESC;
