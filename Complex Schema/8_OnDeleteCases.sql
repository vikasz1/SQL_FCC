--There are only two things that can happen
--On delete Cascade(delete the entire row) and Ondelete set null
select * from branch_supplier;
 
DELETE FROM employee
WHERE emp_id=102; 

DELETE FROM branch 
WHERE branch_id=2;