CREATE database collae; 
show database;
DROP database collage; 

CREATE TABLE students (
    Roll int,
    Name VARCHAR(10),
    Adress VARCHAR(30),
    Gpa dauble(3,2),
    city VARCHAR(10),
    PRIMARY KEY(Roll)
);

CREATE TABLE teachers (
    ID int NOT NULL AUTO_INCREMENT,
    Name varchar(20) NOT NULL,
    Sallery double(10,2),
    PRIMARY KEY (ID)
  );

Rename TABLE students TO teachers;

DROP TABLE students;

INSERT INTO students (Roll,Name,Age,City,Gpa,Gender)
VALUES (01,'Fahad',20,'dhaka',4.4,'mail');

INSERT INTO students VALUES 
(02,'Hasan',3.2,'mail','dhack',19),
(02,'maruf',3.2,'mail','dhack',20),
(02,'labib',3.2,'mail','dhack',22);


SELECT * FROM students;
SELECT Roll, Name, City, FROM students;
SELECT Roll, Name, City FROM students WHERE Roll = 2;

SELECT DISTINCT City FROM students;  --DISTINCT == duplicate filter. when use DISTINCT then not came duplicate data
SELECT * FROM students LIMIT 2,2;

SELECT Name FROM students
ORDER BY Name;

SELECT Name,Age,City FROM students
ORDER BY Name DESC;

SELECT Name,Age,City FROM students
ORDER BY Age ASC;

SELECT * FROM students WHERE Age > 20;
SELECT * FROM students WHERE Age BETWEEN 25 AND Gender = 'mail';
SELECT Age FROM students WHERE Age > 5 AND Age <30;
SELECT * FROM students WHERE City IN ("dhaka", "mymenshing", "khulna", "sylet");

SELECT * FROM students WHERE Name LIKE "F%";
SELECT * FROM students WHERE Name LIKE "%ha%";
SELECT * FROM students WHERE Name LIKE "%ha%";

SELECT Name AS names, Roll AS number FROM students;

DELETE FROM teachers WHERE ID = 3;
UPDATE teachers set Sallery = Sallery +5000 WHERE Sallery >500;

SELECT upper(Name) FROM teachers;

