-- select all employees
SELECT * FROM employee;
-- select all employees ordered by salary
SELECT * 
FROM employee
ORDER BY salary desc;
-- select all employees ordered by sex and then name
SELECT * 
FROM employee
ORDER BY sex,first_name,last_name;

-- find first and last name of all employees
SELECT first_name, last_name
FROM employee;

-- select all the gender in the table
SELECT DISTINCT sex
FROM employee;