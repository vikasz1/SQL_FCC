-- union is a special sql operator which we can use to combine the results of multiple
-- select statements into one

-- Examples
-- find list of employees and branch name and client names
SELECT first_name as Company_names
FROM employee
union
select branch_name
FROM branch
union 
select client_name
from client;

-- find a list of all clients and branch suppliers names
select client_name, branch_id
from client
union
select supplier_name,branch_id
from branch_supplier;

-- find a list of all money spent or earned by company
select SUM(total_sales) as MoneyEarned
from works_with
union
select sum(salary) 
from employee;