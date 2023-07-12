-- Find name of all employees who have 
-- sold over 30,000 to a single client
-- step1: get all the employee_id who have sold more than 30000
-- step2: write subquery
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales>30000
);

-- find all the client who are handled by branch
-- that micheal scott manages
--assume you know micheal's id
SELECT client.client_name
FROM client
WHERE client.branch_id = (
    -- if you put = sign it means sub-query returns single value
    -- so if the result is large we can limit it to one value
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1
)
