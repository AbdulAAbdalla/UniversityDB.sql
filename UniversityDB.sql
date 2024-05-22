CREATE DATABASE UniversityDB; -- creating database called UniversityDB.

USE UniversityDB; -- selecting to use UniversityDB database.

-- creating the table called Students in the database. 

CREATE TABLE Students(
StudentID INT primary key AUTO_INCREMENT, 
FirstName varchar(50),
LastName varchar(50),
Age INT,
Major varchar(50)
);



-- Inserting data in the Student table columns.

INSERT INTO Students (StudentID, FirstName, LastName, Age, Major)
VALUES
(1, 'Salim', 'Sayyeed', 19, 'Law'),
(2, 'Anita', 'Adhiambo', 22, 'Computer_Science'),
(3, 'Paul', 'Ndeto', 23, 'Software_Engineering'),
(4, 'Khadija', 'Zakhalagha', 18, 'Business_Administration'),
(5, 'Pauline', 'Matundura', 20, 'Law');


-- Creating a column called GPA

ALTER TABLE Students -- Altering the content of the Student table by adding column GPA'
ADD COLUMN GPA DECIMAL(10,2); -- The column only accepts Decimal upto 10 digits and 2 decimal pplaces


-- Updating data in the GPA column manually.

UPDATE Students
SET GPA = 3.2
WHERE StudentID=1;


UPDATE Students
SET GPA = 3.2
WHERE StudentID = 2;



UPDATE Students
SET GPA=2.6
WHERE StudentID=3;


UPDATE Students
SET GPA=3.1
WHERE StudentID=4;

UPDATE Students
SET GPA=1.7
WHERE StudentID=5;

-- Renaming the Students table to EnrolledStudents
USE UniversityDB;

RENAME TABLE Students TO EnrolledStudents;



/*Creating a new table called Courses within the UniversityDB database.
With columns*/

USE UniversityDB;

CREATE TABLE Courses(
CourseID INT primary key AUTO_INCREMENT,
CourseName varchar(100),
Instructor varchar(100),
Credits INT
);




-- Selecting to use the UniversityDB Database.
USE UniversityDB;


-- Now inserting data into the newly created table called Courses as per the column data types.

INSERT INTO Courses (CourseID, CourseName, Instructor, Credits)
VALUES
(101, 'Software Engineering', 'Prof. Samwel Ukwa', 3),
(102, 'Business Administration', 'Dr. Ibrahim Eminem', 4),
(103, 'Computer Science', 'Prof. Samwel Ukwa', 3),
(104, 'Law', 'Dr. Ali Mazrui Abadan', 4);



-- Checking to have a look at the table and data entered



-- Deleting the EnrollmentStudents table from the UnniversityDB database

DROP TABLE EnrolledStudents;
















