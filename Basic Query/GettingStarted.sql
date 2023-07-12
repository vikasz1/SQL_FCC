--select all column from the table
SELECT * FROM student;

--select specific columns from the table ordered by name column descending order
SELECT student.name, student.major
FROM student
ORDER BY name DESC;

-- limit the results 
SELECT * 
FROM  student 
ORDER BY student_id DESC
LIMIT 2;

--WHERE is used for putting some condition for filtering the data based on column values
SELECT * 
FROM student
WHERE major = 'Computer Science';
