-- find number of employees in the company
SELECT COUNT(emp_id)
FROM employee;

-- find all the female employees born after 1970
SELECT COUNT(*)
FROM employee
WHERE sex='F' AND birth_day > '1970-01-01';

-- find average of all employee's salary
SELECT AVG(salary)
FROM employee;

-- find the sum of all employee salary
SELECT SUM(salary)
FROM employee;

-- find out how many males and females there are
SELECT sex, COUNT(sex)
FROM employee
GROUP BY sex;

-- find total sales of each salesman
SELECT client_id, SUM(total_sales)
FROM works_with
GROUP BY client_id;

select * from works_with;