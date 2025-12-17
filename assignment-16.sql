#1
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    price INT CHECK (price > 0),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18)
);

#2
CREATE DATABASE LibraryDB;
USE LibraryDB;
show tables;

ALTER TABLE Members
ADD phone VARCHAR(15) UNIQUE;

DROP TABLE IF EXISTS OldMembers;

#3
INSERT INTO Authors VALUES (1, 'R K Narayan', 'rkn@gmail.com');
INSERT INTO Books VALUES (101, 'Malgudi Days', 350, 1);
INSERT INTO Members VALUES (1, 'Dhanush', 21, '9876543210');

UPDATE Books
SET price = 300
WHERE book_id = 101;

DELETE FROM Members
WHERE age < 18;

SET SQL_SAFE_UPDATES = 0;


