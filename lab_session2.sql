USE 1612wiprodb;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    age INT,
    marks INT
);

#1
INSERT INTO students
VALUES (1, 'Dhanush', 'CSE', 21, 78);

#2
INSERT INTO students VALUES
(2, 'Arun', 'ECE', 20, 65),
(3, 'Priya', 'CSE', 19, 88),
(4, 'Karthik', 'MECH', 22, 72);

#3
INSERT INTO students
VALUES (5, 'Anitha', 'EEE', 21, NULL);

#4
INSERT INTO students (student_id, name, department)
VALUES (6, 'Ravi', 'CSE');

#5
INSERT INTO students
VALUES (7, 'Suresh', 'IT', 20, 85);

#6 Select
SELECT * FROM students;

#7
SELECT name, department FROM students;

#8
SELECT * FROM students
WHERE department = 'CSE';

#9
SELECT * FROM students
WHERE marks > 70;

#10
SELECT * FROM students
WHERE age BETWEEN 18 AND 22;

#11
SELECT * FROM students
ORDER BY marks DESC;

#12
SELECT COUNT(*) AS Total_Students FROM students;

#13 Update
UPDATE students
SET marks = 90
WHERE student_id = 1;

#14
UPDATE students
SET marks = marks + 5;

#15
UPDATE students
SET department = 'IT'
WHERE student_id = 2;

#16
UPDATE students
SET marks = 0
WHERE marks IS NULL;

#17
UPDATE students
SET age = 22
WHERE department = 'ECE';

#18 Delete
DELETE FROM students
WHERE student_id = 4;

#19
DELETE FROM students
WHERE marks < 40;

#20
DELETE FROM students
WHERE department = 'MECH';

#21
DELETE FROM students;









