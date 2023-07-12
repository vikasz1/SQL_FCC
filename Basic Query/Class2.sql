select * from student;

--updating a row in the table
UPDATE student
SET name='Vikas Maury', major='Comp. Sci.'
WHERE student_id='3';

--delete a row with the given id and major
DELETE FROM student 
where student_id=7 AND major='Computer Science';

--delete the all rows of the table but not the table
DELETE FROM student;

