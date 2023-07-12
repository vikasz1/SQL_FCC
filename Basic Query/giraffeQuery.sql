--CLASS 1
DROP TABLE student;
-- CREATING DATABASE TABLES 
CREATE TABLE student(       
        student_id INT PRIMARY KEY AUTO_INCREMENT,
        name varchar(20) NOT NULL,
        major varchar(20) DEFAULT 'undecided'
    );
DESCRIBE student;

-- ALTER TABLE student ADD gpa DECIMAL(3,2);
-- ALTER TABLE student DROP COLUMN gpa

INSERT INTO student(name,major) VALUES('Jack','Biology');
INSERT INTO student(name,major) VALUES('Kate','Sociology');
INSERT INTO student(name,major) VALUES('Claire','Chemistry');
INSERT INTO student(name,major) VALUES('Jack','Biology');
INSERT INTO student(name,major) VALUES('Vikas','Computer Science');

-- DELETE FROM student WHERE student_id=3;

Select * from student;