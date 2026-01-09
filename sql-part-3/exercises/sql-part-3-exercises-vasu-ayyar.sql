/*

SELECT TOP 30 
    b.title, 
    b.average_rating, 
    b.books_count,
    tr.user_id, 
    tr.book_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr
    ON b.book_id = tr.book_id
ORDER BY tr.book_id;


-- question 5 part A

SELECT TOP 1 
    b.title,
    SUM(bt.count) AS total_tags
FROM BooksDB.dbo.books AS b
JOIN BooksDB.dbo.book_tags AS bt
    ON b.best_book_id = bt.goodreads_book_id
GROUP BY b.title
ORDER BY total_tags DESC;



-- question 5 part B

SELECT 
    b.title,
    COUNT(DISTINCT bt.tag_id) AS num_of_unique_tags
FROM BooksDB.dbo.books AS b
JOIN BooksDB.dbo.book_tags AS bt
    ON b.best_book_id = bt.goodreads_book_id
WHERE b.title = (
    SELECT TOP 1 b2.title
    FROM BooksDB.dbo.books AS b2
    JOIN BooksDB.dbo.book_tags AS bt2
        ON b2.best_book_id = bt2.goodreads_book_id
    GROUP BY b2.title
    ORDER BY SUM(bt2.count) DESC
)
GROUP BY b.title;


-- question 5 part c

SELECT TOP 1 
    t.tag_name,
    bt.tag_id,
    SUM(bt.count) AS tag_usage
FROM BooksDB.dbo.book_tags AS bt
JOIN BooksDB.dbo.books AS b
    ON bt.goodreads_book_id = b.best_book_id
JOIN BooksDB.dbo.tags AS t
    ON bt.tag_id = t.tag_id
WHERE b.title = (
    SELECT TOP 1 b2.title
    FROM BooksDB.dbo.books AS b2
    JOIN BooksDB.dbo.book_tags AS bt2
        ON b2.best_book_id = bt2.goodreads_book_id
    GROUP BY b2.title
    ORDER BY SUM(bt2.count) DESC
)
GROUP BY t.tag_name, bt.tag_id
ORDER BY tag_usage DESC;


-- 6 part A

SELECT 
    tag_id,
    tag_name
FROM BooksDB.dbo.tags
WHERE tag_name LIKE '%baking%';


-- 6th part B

SELECT TOP 1 
    b.title,
    SUM(bt.count) AS tag_usage_count
FROM BooksDB.dbo.books AS b
JOIN BooksDB.dbo.book_tags AS bt
    ON b.best_book_id = bt.goodreads_book_id
WHERE bt.tag_id = 3816
GROUP BY b.title
ORDER BY tag_usage_count DESC;



-- 7th question part A

-- 7th question part B

SELECT TOP 10
    b.title,
    COUNT(tr.user_id) AS to_read_count
FROM BooksDB.dbo.to_read AS tr
JOIN BooksDB.dbo.books AS b
    ON tr.book_id = b.book_id
GROUP BY b.title
ORDER BY to_read_count DESC;


-- 8th question part A

SELECT TOP 10
    tr.user_id,
    COUNT(tr.book_id) AS total_titles
FROM BooksDB.dbo.to_read AS tr
GROUP BY tr.user_id
ORDER BY total_titles DESC;

*/

-- 8th question part b

SELECT 
    b.title
FROM BooksDB.dbo.to_read AS tr
JOIN BooksDB.dbo.books AS b
    ON tr.book_id = b.book_id
WHERE tr.user_id = 38457;




