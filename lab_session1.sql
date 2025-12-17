CREATE DATABASE StudentRepo;

USE 1612wiprodb;

#1
CREATE TABLE Student (ID INT PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL,
    CLASS VARCHAR(20) NOT NULL,
    MARK INT NOT NULL,
    GENDER VARCHAR(10) NOT NULL);
    
#2
INSERT INTO Student 
VALUES(1, 'John Deo', 'Four', 75, 'female'),
(2, 'Max Ruin', 'Three', 85, 'male'),
(3, 'Arnold', 'Three', 55, 'male'),
(4, 'Krish Star', 'Four', 60, 'female'),
(5, 'John Mike', 'Four', 60, 'female'),
(6, 'Alex John', 'Four', 55, 'male'),
(7, 'My John Rob', 'Five', 78, 'male'),
(8, 'Asruid', 'Five', 85, 'male'),
(9, 'Tes Qry', 'Six', 78, 'male'),
(10, 'Big John', 'Four', 55, 'female');

#3
SET SQL_SAFE_UPDATES = 0;

UPDATE Student
SET MARK = 70
WHERE NAME='Arnold';

#4
DELETE FROM Student
WHERE NAME = 'Tes Qry';

#5
SELECT * FROM Student
ORDER BY MARK ASC;
SELECT * FROM Student
ORDER BY MARK DESC;

#6
SELECT * FROM Student
WHERE GENDER = 'female';

#7
SELECT NAME,MARK FROM Student
WHERE MARK = (SELECT MIN(MARK) FROM Student);

#8
SELECT NAME,MARK FROM Student
WHERE MARK = (SELECT MAX(MARK) FROM Student);