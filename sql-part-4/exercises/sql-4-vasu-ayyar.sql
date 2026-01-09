/*
SELECT COUNT(DISTINCT r.user_id) AS users_above_avg
FROM BooksDB.dbo.ratings AS r
WHERE r.rating > (
    SELECT b.average_rating
    FROM BooksDB.dbo.books AS b
    WHERE b.id = r.book_id
);



-- Books with over 1000 one-star ratings
SELECT r.book_id
FROM BooksDB.dbo.ratings AS r
WHERE r.rating = 1
GROUP BY r.book_id
HAVING COUNT(*) > 1000

UNION

-- Books with over 1000 five-star ratings
SELECT r.book_id
FROM BooksDB.dbo.ratings AS r
WHERE r.rating = 5
GROUP BY r.book_id
HAVING COUNT(*) > 1000;

*/
/*
-- Check the maximum count of 1-star ratings per book
SELECT TOP 10 book_id, COUNT(*) AS one_star_count
FROM BooksDB.dbo.ratings
WHERE rating = 1
GROUP BY book_id
ORDER BY one_star_count DESC;



-- Check the maximum count of 5-star ratings per book
SELECT TOP 10 book_id, COUNT(*) AS five_star_count
FROM BooksDB.dbo.ratings
WHERE rating = 5
GROUP BY book_id
ORDER BY five_star_count DESC;


SELECT r.book_id
FROM BooksDB.dbo.ratings AS r
WHERE r.rating = 1
GROUP BY r.book_id
HAVING COUNT(*) > 20

UNION

SELECT r.book_id
FROM BooksDB.dbo.ratings AS r
WHERE r.rating = 5
GROUP BY r.book_id
HAVING COUNT(*) > 20;






-- Books with over 1000 one-star ratings
SELECT r.book_id
FROM BooksDB.dbo.ratings AS r
WHERE r.rating = 1
GROUP BY r.book_id
HAVING COUNT(*) > 1000

INTERSECT

-- Books with over 1000 five-star ratings
SELECT r.book_id
FROM BooksDB.dbo.ratings AS r
WHERE r.rating = 5
GROUP BY r.book_id
HAVING COUNT(*) > 1000;
*/

/*
SELECT r.book_id
FROM BooksDB.dbo.ratings AS r
WHERE r.rating = 1
GROUP BY r.book_id
HAVING COUNT(*) > 20

INTERSECT

SELECT r.book_id
FROM BooksDB.dbo.ratings AS r
WHERE r.rating = 5
GROUP BY r.book_id
HAVING COUNT(*) > 20;


SELECT book_id
FROM BooksDB.dbo.books
WHERE language_code = 'en-US'
  AND book_id NOT IN (
      SELECT book_id
      FROM BooksDB.dbo.books
      WHERE language_code = 'en-GB'
  );
  

  
SELECT 
    t.tag_id,
    t.tag_name
FROM BooksDB.dbo.tags AS t
JOIN BooksDB.dbo.book_tags AS bt
    ON t.tag_id = bt.tag_id
GROUP BY 
    t.tag_id, 
    t.tag_name
HAVING 
    COUNT(bt.book_id) > 100000;
    

    SELECT TOP 5 *
FROM BooksDB.dbo.book_tags;


SELECT 
    t.tag_id,
    t.tag_name
FROM BooksDB.dbo.tags AS t
JOIN BooksDB.dbo.book_tags AS bt
    ON t.tag_id = bt.tag_id
GROUP BY 
    t.tag_id, 
    t.tag_name
HAVING 
    COUNT(bt.goodreads_book_id) > 100000;
    

    SELECT 
    t.tag_id,
    t.tag_name,
    COUNT(bt.goodreads_book_id) AS tag_usage_count
FROM BooksDB.dbo.tags AS t
JOIN BooksDB.dbo.book_tags AS bt
    ON t.tag_id = bt.tag_id
GROUP BY 
    t.tag_id, 
    t.tag_name
ORDER BY 
    tag_usage_count DESC;
    */

    SELECT 
    t.tag_id,
    t.tag_name,
    COUNT(bt.goodreads_book_id) AS tag_usage_count
FROM BooksDB.dbo.tags AS t
JOIN BooksDB.dbo.book_tags AS bt
    ON t.tag_id = bt.tag_id
GROUP BY 
    t.tag_id, 
    t.tag_name
HAVING 
    COUNT(bt.goodreads_book_id) > 9000
ORDER BY 
    tag_usage_count DESC;







