-- -- Create the book table here.  Update the name of the database and schema.
/*
CREATE TABLE Sep2025JunkDB.vasudharini_ayyar.book (
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    author_id INT,
    title VARCHAR(255),
    isbn INT,
    available BIT,
    genre_id INT
);
*/

-- -- Paste the book data values in this code box.  Be sure to update database and schema names.
/*
INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (2, 'A Midsummers Night Dream', 978149413, 1, 23);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (2, 'Romeo and Juliet', 988535196, 1, 3);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (1, 'The Golden Compass', 451664226, 1, 1);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (1, 'The Subtle Knife', 160419390, 1, 1);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (1, 'The Amber Spyglass', 94387895, 1, 1);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (3, 'The Alchemist', 464069772, 1, 2);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (4, 'And Then There Were None', 335973357, 1, 6);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (5, 'The Joy Luck Club', 990050329, 1, 10);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (5, 'The Moon Lady', 91720786, 1, 24);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Sense and Sensibility', 156879860, 1, 2);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Northanger Abbey', 951273178, 1, 3);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Pride and Prejudice', 415886839, 1, 3);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Mansfield Park', 188534067, 1, 3);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Emma', 994896202, 1, 3);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Persuasion', 28150097, 1, 3);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (6, 'Lady Susan', 230962926, 1, 3);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (7, 'Wuthering Heights', 280569946, 1, 3);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (8, 'The Handmaids Tale', 639239663, 1, 5);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (8, 'The Testaments', 826875490, 1, 5);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (9, 'The Parable of the Sower', 283359358, 1, 5);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (10, 'Little Women', 495409887, 1, 23);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'Still Life', 455128657, 1, 6);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'A Fatal Grace', 832517012, 1, 6);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'The Cruelest Month', 419285319, 1, 6);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'The Murder Stone', 656621400, 1, 6);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'The Brutal Telling', 144255852, 1, 6);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'Bury Your Dead', 208180961, 1, 6);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (11, 'A Trick of the Light', 93451531, 1, 6);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (12, 'Midnights Children', 881082293, 1, 10);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (13, 'Dont Let the Pigeon Drive the Bus!', 18409532, 1, 24);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (14, 'Beezus and Ramona', 744412630, 1, 24);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (15, 'Organic Chemistry', 604328803, 1, 25);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (16, 'I Know Why the Caged Bird Sings', 909947112, 1, 12);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (17, 'Beloved', 46736233, 1, 10);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.book(author_id, title, isbn, available, genre_id)
VALUES (18, 'Brassbones and Rainbows', 330608463, 1, 26);
*/

-- ## Test your data          
-- Run a quick query your choice to see if the book table was properly created
-- Question
-- test your book table here.
/*
SELECT TOP 10 * FROM Sep2025JunkDB.vasudharini_ayyar.book;
*/

--We will repeat a similar process for the **author, patron,** and **genre** tables. 
  --         ### **Author Table**
-- To create the **author** table, you will use the following code:
-- ```
/*
CREATE TABLE [DB].[schema].author (
    author_id INT IDENTITY(1,1), PRIMARY KEY
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_year INT,
    death_year INT
);
```
*/
/*
CREATE TABLE Sep2025JunkDB.vasudharini_ayyar.author (
    author_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_year VARCHAR(255),  -- Changed from INT
    death_year VARCHAR(255)   -- Changed from INT
);
*/

/*

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Phillip', 'Pullman', '1946', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('William', 'Shakespeare', '1564', '1616');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Paulo', 'Coelho', '1947', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Agatha', 'Christie', '1890-09-15', '1976-01-12');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Amy', 'Tan', '1952-02-19', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Jane', 'Austin', '1775-12-16', '1817-07-18');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Emily', 'Bronte', '1818-07-30', '1848-12-19');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Margaret', 'Atwood', '1939-11-18', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Octavia', 'Butler', '1947-06-22', '2006-02-24');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Louisa May', 'Alcott', '1832-11-29', '1888-03-06');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Louise', 'Penny', '1958-07-01', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Salman', 'Rushdie', '1947-08-19', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Mo', 'Willems', '1968-02-11', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Beverly', 'Cleary', '1916-04-12', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Peter', 'Vollhardt', '1946-03-07', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Maya', 'Angelou', '1928-04-04', '2014-05-28');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Toni', 'Morrison', '1931-02-18', '2019-08-05');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Shirley', 'LeFlore', '1940-03-06', '2019-05-12');

*/

-- Populate the **author** table with the `author_data.ipynb` notebook

-- -- paste the author data values in this code block.

/*

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Phillip', 'Pullman', '1946', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('William', 'Shakespeare', '1564', '1616');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Paulo', 'Coelho', '1947', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Agatha', 'Christie', '1890-09-15', '1976-01-12');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Amy', 'Tan', '1952-02-19', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Jane', 'Austin', '1775-12-16', '1817-07-18');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Emily', 'Bronte', '1818-07-30', '1848-12-19');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Margaret', 'Atwood', '1939-11-18', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Octavia', 'Butler', '1947-06-22', '2006-02-24');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Louisa May', 'Alcott', '1832-11-29', '1888-03-06');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Louise', 'Penny', '1958-07-01', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Salman', 'Rushdie', '1947-08-19', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Mo', 'Willems', '1968-02-11', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Beverly', 'Cleary', '1916-04-12', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Peter', 'Vollhardt', '1946-03-07', null);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Maya', 'Angelou', '1928-04-04', '2014-05-28');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Toni', 'Morrison', '1931-02-18', '2019-08-05');

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.author(first_name, last_name, birth_year, death_year)
VALUES ('Shirley', 'LeFlore', '1940-03-06', '2019-05-12');

*/

-- ## **Patron Table**
-- To create the **patron**, you will use the following code:
-- ```
/*
-- CREATE TABLE [DB].[schema].patron (

    patron_id INT IDENTITY (1,1) PRIMARY KEY,

    first_name VARCHAR(255),

    last_name VARCHAR(255),

    loan_id INT
-- );

```



-- create the patron table here:
*/
/*
CREATE TABLE Sep2025JunkDB.vasudharini_ayyar.patron (
    patron_id INT IDENTITY (1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    loan_id INT
);
*/


-- Populate the **patron** table with the `patron_data.ipynb` notebook.

-- insert patron data into the table here.

/*
INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Jennifer', 'Slayny', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Susan', 'Traviss', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Vincent', 'Ritelli', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Tasia', 'Laybourne', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Wren', 'Gergler', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Tory', 'Lees', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Estelle', 'Di Lorio', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Dorian', 'Betje', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Frank', 'Jelk', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Chris', 'Endon', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Gillie', 'Fritz', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Leisha', 'Defty', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Erika', 'Bompass', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Gabe', 'Moxstead', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Blake', 'Teresse', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Joshua', 'Timmouth', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Tasha', 'Timmouth', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Neil', 'Davie', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Emmeline', 'Pitherick', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Josiah', 'Staner', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('James', 'Greetham', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Isaac', 'Barstowk', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Dean', 'Nelane', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Carolina', 'Cranmere', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Champ', 'Lardiner', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Abbie', 'Quaif', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Camile', 'Milbourne', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Quentin', 'Crose', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Silvano', 'Horlick', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Phyllis', 'Cicchillo', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Jerrie', 'Brownhall', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Ludovika', 'Leist', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Tara', 'Knatt', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Kelsie', 'Parkson', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Jodi', 'Leopard', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Rosanna', 'Cultcheth', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Remy', 'Fairpool', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Megan', 'Blyth', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Rikki', 'McLernon', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Clare', 'Haacker', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Vincent', 'Chettle', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Sybil', 'Costanza', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Jonas', 'Sinclare', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Claire', 'Bendel', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Kathleen', 'Welband', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Kylie', 'Crannage', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Evelyn', 'Tarajo', NULL);

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.patron(first_name, last_name, loan_id)
VALUES ('Oliver', 'Caulson', NULL);
*/

-- ### **Genre Table**
-- To create the **genre** table, use the following code:
-- ```
/*
CREATE TABLE [DB].[schema].genre (
    genre_id INT PRIMARY KEY,
    genres VARCHAR(100)
);
```
*/
/*
CREATE TABLE Sep2025JunkDB.vasudharini_ayyar.genre (
    genre_id INT PRIMARY KEY,
    genres VARCHAR(100)
);
*/
-- Populate the **genre** table with the `genre_data.ipynb` notebook.

-- insert the genre data into the table here


/*

## **Loan Table**

The **loan** table will be created differently and will stay empty.  We will use our other tables to populate the loan table using queries shortly. 

Use the following code to create the **loan** table:

```
CREATE TABLE [DB].[schema].loan (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT
    CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES [DB].[schema].book (book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);
```

_Notes about the syntax:_

> We are adding a [foreign key](https://www.w3schools.com/sql/sql_foreignkey.asp) to this table to reference a
 different table's primary key.  In this studio, we are going to link the **loan** table to the **book** table using keys. 
  The **loan** table will reference and add book id numbers based on the **book** table's `book_id`.  
  We are also providing [constraints](https://www.w3schools.com/sql/sql_constraints.asp) to be very specific about what type of data is
   allowed in this column.

   */

   -- Code the loan table.
/*
   CREATE TABLE Sep2025JunkDB.vasudharini_ayyar.loan (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT,
    CONSTRAINT fk_loan_book FOREIGN KEY (book_id) REFERENCES Sep2025JunkDB.vasudharini_ayyar.book (book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);
*/
/*
CREATE TABLE Sep2025JunkDB.vasudharini_ayyar.loan (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT,
    CONSTRAINT fk_loan_book FOREIGN KEY (book_id) REFERENCES Sep2025JunkDB.vasudharini_ayyar.book (book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);
*/

/*

CREATE TABLE Sep2025JunkDB.vasudharini_ayyar.loan (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT,
    CONSTRAINT fk_loan_book FOREIGN KEY (book_id) REFERENCES Sep2025JunkDB.vasudharini_ayyar.book (book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);

*/

/*
-- Part B

-- Code your warm ups here:

-- 1. Return the mystery book titles and their ISBNs.
SELECT
    b.title,
    b.isbn
FROM
    Sep2025JunkDB.vasudharini_ayyar.book AS b
JOIN
    Sep2025JunkDB.vasudharini_ayyar.genre AS g ON b.genre_id = g.genre_id
WHERE
    g.genres = 'Mystery';


-- 2. Return all of the titles and the author's first and last names
--    for books written by authors who are currently living.
SELECT
    b.title,
    a.first_name,
    a.last_name
FROM
    Sep2025JunkDB.vasudharini_ayyar.book AS b
JOIN
    Sep2025JunkDB.vasudharini_ayyar.author AS a ON b.author_id = a.author_id
WHERE
    a.death_year IS NULL;

    */

    /*

    ## **Part C: Loan Out a Book**
                
The library would like you to create a query that will update the database when a book is loaned out.

This query needs to perform the following functions:

1. Change **available** to **0** (false) for the appropriate book.
2. Add a new row to the **loan** table with today's date as the `date_out` and the ids in the row matching the appropriate `patron_id` and `book_id`.
3. Update the appropriate **patron** with the `loan_id` for the new row created in the **loan** table.

You can use any patron and book that strikes your fancy to create and test out this query.

> _Note:  Every time you test this, you will add an additional row to the output, creating a new loan id each time.  If you do not update the patron id, then a patron will have multiple loan ids.  This is not an issue for Part C;_ _however, this may cause issues when you work on Part F._

    -- Create your query that will loan out a book:

    */

/*
-- 0. DECLARE VARIABLES to hold our chosen IDs
DECLARE @ChosenBookID INT;
DECLARE @ChosenPatronID INT;
DECLARE @NewLoanID INT;

-- SET THE IDs for the book and patron you want to use
SET @ChosenBookID = 3;       -- 'The Golden Compass'
SET @ChosenPatronID = 1;     -- 'Jennifer Slayny'

-- Wrap in a transaction to ensure all steps succeed or fail together
BEGIN TRANSACTION;

    -- 1. Change 'available' to 0 (false) for the appropriate book.
    UPDATE Sep2025JunkDB.vasudharini_ayyar.book
    SET available = 0
    WHERE book_id = @ChosenBookID;

    -- 2. Add a new row to the loan table.
    INSERT INTO Sep2025JunkDB.vasudharini_ayyar.loan (patron_id, date_out, book_id)
    VALUES (@ChosenPatronID, CAST(GETDATE() AS DATE), @ChosenBookID);

    -- Capture the new loan_id that was just created by IDENTITY(1,1)
    SET @NewLoanID = SCOPE_IDENTITY();

    -- 3. Update the appropriate patron with the new loan_id.
    UPDATE Sep2025JunkDB.vasudharini_ayyar.patron
    SET loan_id = @NewLoanID
    WHERE patron_id = @ChosenPatronID;

COMMIT TRANSACTION;
*/


-- check the book in

-- Create your query to check a book back in:

-- 0. DECLARE VARIABLES to hold the IDs we're working with
DECLARE @PatronIDToReturn INT;
DECLARE @ActiveLoanID INT;
DECLARE @BookToReturnID INT;

-- SET THE PATRON who is returning the book
SET @PatronIDToReturn = 1;  -- 'Jennifer Slayny'

-- Find the patron's active loan ID
SELECT @ActiveLoanID = loan_id
FROM Sep2025JunkDB.vasudharini_ayyar.patron
WHERE patron_id = @PatronIDToReturn;

-- Find the book ID associated with that loan
SELECT @BookToReturnID = book_id
FROM Sep2025JunkDB.vasudharini_ayyar.loan
WHERE loan_id = @ActiveLoanID;

-- Wrap in a transaction to ensure all steps succeed or fail together
BEGIN TRANSACTION;

    -- 1. Change 'available' to 1 (true) for the appropriate book.
    UPDATE Sep2025JunkDB.vasudharini_ayyar.book
    SET available = 1
    WHERE book_id = @BookToReturnID;

    -- 2. Update the 'loan' table with today's date as date_in.
    UPDATE Sep2025JunkDB.vasudharini_ayyar.loan
    SET date_in = CAST(GETDATE() AS DATE)
    WHERE loan_id = @ActiveLoanID;

    -- 3. Update the 'patron' table, changing loan_id back to NULL.
    UPDATE Sep2025JunkDB.vasudharini_ayyar.patron
    SET loan_id = NULL
    WHERE patron_id = @PatronIDToReturn;

COMMIT TRANSACTION;

/*
-- OPTIONAL: Run this query to check your work
SELECT
    p.first_name,
    p.loan_id AS patron_current_loan_id,
    b.title,
    b.available
FROM
    Sep2025JunkDB.vasudharini_ayyar.patron AS p,
    Sep2025JunkDB.vasudharini_ayyar.book AS b
WHERE
    p.patron_id = @PatronIDToReturn AND b.book_id = @BookToReturnID;
    */

    -- loan out 5 new books

    -- Loan 1: Susan Traviss (Patron 2) -> The Subtle Knife (Book 4)

    /*
DECLARE @ChosenBookID1 INT = 4;
DECLARE @ChosenPatronID1 INT = 2;
DECLARE @NewLoanID1 INT;

BEGIN TRANSACTION;
    UPDATE Sep2025JunkDB.vasudharini_ayyar.book SET available = 0 WHERE book_id = @ChosenBookID1;
    INSERT INTO Sep2025JunkDB.vasudharini_ayyar.loan (patron_id, date_out, book_id)
    VALUES (@ChosenPatronID1, CAST(GETDATE() AS DATE), @ChosenBookID1);
    SET @NewLoanID1 = SCOPE_IDENTITY();
    UPDATE Sep2025JunkDB.vasudharini_ayyar.patron SET loan_id = @NewLoanID1 WHERE patron_id = @ChosenPatronID1;
COMMIT TRANSACTION;
GO

-- Loan 2: Vincent Ritelli (Patron 3) -> The Alchemist (Book 6)
DECLARE @ChosenBookID2 INT = 6;
DECLARE @ChosenPatronID2 INT = 3;
DECLARE @NewLoanID2 INT;

BEGIN TRANSACTION;
    UPDATE Sep2025JunkDB.vasudharini_ayyar.book SET available = 0 WHERE book_id = @ChosenBookID2;
    INSERT INTO Sep2025JunkDB.vasudharini_ayyar.loan (patron_id, date_out, book_id)
    VALUES (@ChosenPatronID2, CAST(GETDATE() AS DATE), @ChosenBookID2);
    SET @NewLoanID2 = SCOPE_IDENTITY();
    UPDATE Sep2025JunkDB.vasudharini_ayyar.patron SET loan_id = @NewLoanID2 WHERE patron_id = @ChosenPatronID2;
COMMIT TRANSACTION;
GO

-- Loan 3: Tasia Laybourne (Patron 4) -> And Then There Were None (Book 7)
DECLARE @ChosenBookID3 INT = 7;
DECLARE @ChosenPatronID3 INT = 4;
DECLARE @NewLoanID3 INT;

BEGIN TRANSACTION;
    UPDATE Sep2025JunkDB.vasudharini_ayyar.book SET available = 0 WHERE book_id = @ChosenBookID3;
    INSERT INTO Sep2025JunkDB.vasudharini_ayyar.loan (patron_id, date_out, book_id)
    VALUES (@ChosenPatronID3, CAST(GETDATE() AS DATE), @ChosenBookID3);
    SET @NewLoanID3 = SCOPE_IDENTITY();
    UPDATE Sep2025JunkDB.vasudharini_ayyar.patron SET loan_id = @NewLoanID3 WHERE patron_id = @ChosenPatronID3;
COMMIT TRANSACTION;
GO

-- Loan 4: Wren Gergler (Patron 5) -> The Joy Luck Club (Book 8)
DECLARE @ChosenBookID4 INT = 8;
DECLARE @ChosenPatronID4 INT = 5;
DECLARE @NewLoanID4 INT;

BEGIN TRANSACTION;
    UPDATE Sep2025JunkDB.vasudharini_ayyar.book SET available = 0 WHERE book_id = @ChosenBookID4;
    INSERT INTO Sep2025JunkDB.vasudharini_ayyar.loan (patron_id, date_out, book_id)
    VALUES (@ChosenPatronID4, CAST(GETDATE() AS DATE), @ChosenBookID4);
    SET @NewLoanID4 = SCOPE_IDENTITY();
    UPDATE Sep2025JunkDB.vasudharini_ayyar.patron SET loan_id = @NewLoanID4 WHERE patron_id = @ChosenPatronID4;
COMMIT TRANSACTION;
GO

-- Loan 5: Tory Lees (Patron 6) -> Sense and Sensibility (Book 10)
DECLARE @ChosenBookID5 INT = 10;
DECLARE @ChosenPatronID5 INT = 6;
DECLARE @NewLoanID5 INT;

BEGIN TRANSACTION;
    UPDATE Sep2025JunkDB.vasudharini_ayyar.book SET available = 0 WHERE book_id = @ChosenBookID5;
    INSERT INTO Sep2025JunkDB.vasudharini_ayyar.loan (patron_id, date_out, book_id)
    VALUES (@ChosenPatronID5, CAST(GETDATE() AS DATE), @ChosenBookID5);
    SET @NewLoanID5 = SCOPE_IDENTITY();
    UPDATE Sep2025JunkDB.vasudharini_ayyar.patron SET loan_id = @NewLoanID5 WHERE patron_id = @ChosenPatronID5;
COMMIT TRANSACTION;
GO

/*

-- OPTIONAL: Run this query to see your 5 new loans
SELECT
    p.first_name,
    p.last_name,
    l.loan_id,
    l.date_out,
    b.title,
    b.available
FROM
    Sep2025JunkDB.vasudharini_ayyar.patron AS p
JOIN
    Sep2025JunkDB.vasudharini_ayyar.loan AS l ON p.loan_id = l.loan_id
JOIN
    Sep2025JunkDB.vasudharini_ayyar.book AS b ON l.book_id = b.book_id
WHERE
    p.patron_id IN (2, 3, 4, 5, 6);
    */
    */
/*
    -- Declare variables to hold the patron's name
DECLARE @PatronFirstName NVARCHAR(100) = 'Jennifer';
DECLARE @PatronLastName NVARCHAR(100) = 'Slayny';

-- Good practice: Check if the temp table already exists and drop it
IF OBJECT_ID('tempdb..#PatronLoans') IS NOT NULL
    DROP TABLE #PatronLoans;

-- Create the temp table by selecting the patron's loan data into it
SELECT 
    p.first_name,
    p.last_name,
    b.title,
    b.author,
    l.checkout_date,
    l.due_date,
    l.loan_id
INTO 
    #PatronLoans -- The '#' indicates it's a temp table
FROM 
    [DB].[schema].patron AS p
JOIN 
    [DB].[schema].loan AS l ON p.patron_id = l.patron_id
JOIN 
    [DB].[schema].book AS b ON l.book_id = b.book_id
WHERE 
    p.first_name = @PatronFirstName AND p.last_name = @PatronLastName;


-- Now you can use this temp table just like a regular table
-- for the rest of your session.
-- For example, let's select everything from it to show the results:
PRINT 'Displaying results from temp table for ' + @PatronFirstName + ':';
SELECT * FROM #PatronLoans;
*/

/*

-- Declare variables to easily change the patron you are searching for
DECLARE @PatronFirstName VARCHAR(255) = 'Jennifer';
DECLARE @PatronLastName VARCHAR(255) = 'Slayny';

-- Good practice: Check if a temp table with this name already exists
-- in this session and drop it if it does. This lets you re-run the query.
IF OBJECT_ID('tempdb..#PatronLoans') IS NOT NULL
BEGIN
    DROP TABLE #PatronLoans;
END;

-- This is the main query that creates the temp table
SELECT 
    p.patron_id,
    p.first_name, 
    p.last_name,
    b.title,
    l.loan_id,
    l.checkout_date,
    l.due_date,
    l.return_date -- Assuming a return_date column exists in your loan table
INTO 
    #PatronLoans  -- The '#' symbol makes this a local temp table
FROM 
    Sep2025JunkDB.vasudharini_ayyar.patron AS p
JOIN 
    Sep2025JunkDB.vasudharini_ayyar.loan AS l ON p.patron_id = l.patron_id
JOIN 
    Sep2025JunkDB.vasudharini_ayyar.book AS b ON l.book_id = b.book_id
WHERE 
    p.first_name = @PatronFirstName 
    AND p.last_name = @PatronLastName;

-- To verify the temp table was created, you can select from it.
-- This data is now stored in #PatronLoans for the rest of your
-- database session.
PRINT 'Temp table #PatronLoans created. Displaying contents:';
SELECT * FROM #PatronLoans;

*/

/* This query finds all loans for a specific patron, "Jennifer Slayny",
by joining the patron, loan, and book tables. It then stores these
results in a temporary table named #PatronLoans.
*/

/*
-- Declare variables to easily change the patron you are searching for
DECLARE @PatronFirstName VARCHAR(255) = 'Jennifer';
DECLARE @PatronLastName VARCHAR(255) = 'Slayny';

-- Good practice: Check if a temp table with this name already exists
-- in this session and drop it if it does. This lets you re-run the query.
IF OBJECT_ID('tempdb..#PatronLoans') IS NOT NULL
BEGIN
    DROP TABLE #PatronLoans;
END;

-- This is the main query that creates the temp table
SELECT 
    p.patron_id,
    p.first_name, 
    p.last_name,
    b.title,
    l.loan_id
    
    -- *** ERROR FIX ***
    -- I've removed the incorrect date columns that caused the error.
    -- To make this query complete, you will need to find the correct 
    -- column names for dates in your 'loan' table and add them to this SELECT list.
    -- For example, if your column is named 'LoanDate', you would add:
    -- , l.LoanDate

INTO 
    #PatronLoans  -- The '#' symbol makes this a local temp table
FROM 
    Sep2025JunkDB.vasudharini_ayyar.patron AS p
JOIN 
    Sep2025JunkDB.vasudharini_ayyar.loan AS l ON p.patron_id = l.patron_id
JOIN 
    Sep2025JunkDB.vasudharini_ayyar.book AS b ON l.book_id = b.book_id
WHERE 
    p.first_name = @PatronFirstName 
    AND p.last_name = @PatronLastName;

-- To verify the temp table was created, you can select from it.
-- This data is now stored in #PatronLoans for the rest of your
-- database session.
PRINT 'Temp table #PatronLoans created. Displaying contents:';
SELECT * FROM #PatronLoans;
*/
/*
-- This script helps debug why no loans were found for 'Jennifer Slayny'.

DECLARE @PatronID INT;

PRINT '--- Step 1: Finding patron_id for Jennifer Slayny ---';

-- Get the patron_id and store it in the variable
SELECT @PatronID = patron_id 
FROM Sep2025JunkDB.vasudharini_ayyar.patron
WHERE first_name = 'Jennifer' AND last_name = 'Slayny';

-- Check if the patron was found and print the ID
IF @PatronID IS NOT NULL
BEGIN
    PRINT 'Found patron. patron_id is: ' + CAST(@PatronID AS VARCHAR(10));
    
    PRINT '--- Step 2: Checking ''loan'' table for this patron_id ---';
    
    -- Use the variable to find loans
    SELECT * FROM Sep2025JunkDB.vasudharini_ayyar.loan 
    WHERE patron_id = @PatronID;
    
    PRINT '--- End of loan check ---';
END
ELSE
BEGIN
    PRINT 'Error: Could not find patron ''Jennifer Slayny''. Check for typos.';
END;

*/


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
    p.last_name,
    g.genre_name -- Assuming your 'genre' table has a 'genre_name' column
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
