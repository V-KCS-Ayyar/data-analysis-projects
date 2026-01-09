-- Part F: Wrap-up Query
-- This query returns the names of all patrons and the genre
-- of every book they currently have checked out.

-- This requires joining four tables:
-- 1. patron (to get patron_id and names)
-- 2. loan (to link patrons to books they have loaned)
-- 3. book (to get the genre_id for each book)
-- 4. genre (to get the genre name from the genre_id)

SELECT 
    p.first_name,
    p.last_name
    
    -- *** ERROR FIX ***
    -- I've removed 'g.genre_name' because that column does not exist.
    -- You will need to find the correct column name in your 'genre' table
    -- (e.g., 'name', 'genre_type', etc.) and add it to this SELECT list.
    -- For example, if the column is named 'name', you would add:
    -- , g.name

FROM 
    Sep2025JunkDB.vasudharini_ayyar.patron AS p
JOIN 
    Sep2025JunkDB.vasudharini_ayyar.loan AS l ON p.patron_id = l.patron_id
JOIN 
    Sep2025JunkDB.vasudharini_ayyar.book AS b ON l.book_id = b.book_id
JOIN 
    Sep2025JunkDB.vasudharini_ayyar.genre AS g ON b.genre_id = g.genre_id;

/*
Note on "currently" checked out:

The query above will show ALL loans (past and present). 
If your 'loan' table has a column to track returns (e.g., 'return_date'), 
you would add a WHERE clause to find only the books still checked out:

...
JOIN 
    Sep2025JunkDB.vasudharini_ayyar.genre AS g ON b.genre_id = g.genre_id
WHERE
    l.return_date IS NULL; -- This line finds books that have not yet been returned
...

*/

