-- join is used to combine row from two or more tables based on related column b/w them.
select * from employee;
-- we did the following to understand an upcoming concept. So, don't worry.
INSERT INTO branch VALUES(4,'Buffalo',NULL,NULL);

-- Examples
-- find all the branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

-- find all the branches and the names of their managers
-- In this case all the rows from employee table are mapped to branch
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- find all the branches and the names of their managers
-- In this case all the rows of branch are mapped to rows of employee
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- full outer join = left join+right join
-- WE CANT DO FULL OUTER JOIN IN MYSQL but we can suimulate it
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id
UNION
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id
