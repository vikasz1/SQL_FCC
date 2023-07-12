-- % = any no. of character,
-- _ = one character

-- find any client's who are an LLC
SELECT  *
FROM client
WHERE client_name LIKE '%LLC';

-- find any branch supplier who are in label business
SELECT * 
FROM branch_supplier 
WHERE supplier_name LIKE '%Labels';

-- find any employee born in october
SELECT *
FROM employee
WHERE birth_day LIKE '____-10-%';