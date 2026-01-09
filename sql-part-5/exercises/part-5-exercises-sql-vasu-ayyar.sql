/*
-- Step 1: Create the table

CREATE TABLE Sep2025JunkDB.vasudharini_ayyar.planned_makes (
    make_id INT IDENTITY(1,1) PRIMARY KEY,
    make_name VARCHAR(100),
    category VARCHAR(50),
    materials VARCHAR(255),
    estimated_hours DECIMAL(5,2),
    status VARCHAR(20)
);

-- Step 2: Insert sample data

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.planned_makes
(make_name, category, materials, estimated_hours, status)
VALUES
('Chocolate Cake', 'Recipe', 'Flour, Sugar, Cocoa, Eggs', 3.0, 'Planned'),
('Portfolio Website', 'Coding', 'HTML, CSS, JavaScript', 8.5, 'In Progress'),
('Bookshelf', 'Woodwork', 'Wood, Nails, Hammer, Paint', 6.0, 'Completed');

-- Step 3: View your table

SELECT * 
FROM Sep2025JunkDB.vasudharini_ayyar.planned_makes;
*/


/*
INSERT INTO Sep2025JunkDB.vasudharini_ayyar.planned_makes
(make_name, category, materials, estimated_hours, status)
VALUES
('Chocolate Cake', 'Cooking', 'Flour, Sugar, Cocoa, Eggs, Milk', 3.0, 'Planned'),
('Personal Website', 'Coding', 'HTML, CSS, JavaScript', 6.5, 'In Progress'),
('Wooden Bookshelf', 'Woodworking', 'Wood, Nails, Paint, Glue', 5.0, 'Completed');
SELECT * 
FROM Sep2025JunkDB.vasudharini_ayyar.planned_makes;
*/

INSERT INTO Sep2025JunkDB.vasudharini_ayyar.planned_makes
(make_name, category, materials, estimated_hours, status)
VALUES
('Chocolate Cake', 'Cooking', 'Flour, Sugar, Cocoa, Eggs, Milk', 3.0, 'Planned'),
('Personal Website', 'Coding', 'HTML, CSS, JavaScript', 6.5, 'In Progress'),
('Wooden Bookshelf', 'Woodworking', 'Wood, Nails, Paint, Glue', 5.0, 'Completed');
SELECT * 
FROM Sep2025JunkDB.vasudharini_ayyar.planned_makes;