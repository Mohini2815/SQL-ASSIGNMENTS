CREATE DATABASE college;
USE college;
CREATE TABLE students(stud_id INT,name VARCHAR(30),department VARCHAR(30),admission_year YEAR);
CREATE TABLE courses(course_id INT,course_name VARCHAR(30),department VARCHAR(30),credits SMALLINT);
CREATE TABLE enrollments(enroll_id INT,stud_id INT,course_id INT,semester SMALLINT);
CREATE TABLE faculty(fac_id INT, name VARCHAR(20),department VARCHAR(30),subject_handled VARCHAR(30));
-- insert 5 records in each table
INSERT INTO students VALUES(1,'Bhargavi Argade','Science',2020),(2,'Gauri Wanjale','Arts',2021),(3,'Neha Gore','Commerce',2023),(4,'Purva Hamid','BSC',2024),(5,'Mohini Argade','DS',2025);
INSERT INTO courses VALUES(1,'Pharmacy','Science',2),(2,'Politics','Arts',4),(3,'Btech','Commerce',3),(4,'Bsc','Science',5),(5,'BA','Arts',2);
INSERT INTO enrollments VALUES(1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5);
INSERT INTO faculty VALUES(1,'Engineering','Science','Civil'),(2,'Medicine','Science','Pharmacy'),(3,'Law','Arts','Politics'),(4,'Business','Commerce','BCA'),(5,'Biology','Science','Environment');
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollments;
SELECT * FROM faculty;
-- update the department of a student
SET SQL_SAFE_UPDATES=0;
UPDATE students SET department='Commerce' WHERE name='Gauri Wanjale';
-- delete a course name from courses
DELETE FROM courses WHERE course_name='Pharmacy';
-- update subject handled by a faculty member
UPDATE faculty SET subject_handled='Economics' WHERE subject_handled='Pharmacy';
SELECT * FROM faculty;
-- insert a new enrollment record for a student in a course
INSERT INTO enrollments VALUES(6,6,6,6);
SELECT * FROM enrollments;
-- create a user college_user and grant them Insert and Update permission on the students and enrollments tables
CREATE USER college_user;
GRANT INSERT,UPDATE ON college.students TO college_user;
GRANT INSERT,UPDATE ON college.enrollments TO college_user;
-- Revoke UPDATE permission from college_user for the Enrollments tables 
REVOKE UPDATE ON college.enrollments FROM college_user;
-- Transactions
-- begin transaction 
START TRANSACTION;
-- insert a new student
INSERT INTO students VALUES(6,'Mina Ahmed','Psycology',2019);
SELECT * FROM students;
-- insert new enrollment for that student
INSERT INTO enrollments VALUES(7,6,3,3);
SELECT * FROM enrollments;
-- commit the transaction
COMMIT;
-- begin transaction
-- insert a course
INSERT INTO courses VALUES(6,'CA','Commerce',4);

-- delete a faculty member
DELETE FROM faculty WHERE fac_id=1;
SAVEPOINT S2;
-- rollback the transaction
ROLLBACK;
-- insert a student
START TRANSACTION;
INSERT INTO students VALUES(8,'Disha Patani','Eco',2025);
SAVEPOINT s1;
-- insert a course
INSERT INTO courses VALUES(1,'Environment','Science',4);
-- rollback to savepoint
ROLLBACK TO SAVEPOINT s1;
COMMIT;
-- test what happens if you ROLLBACK after a COMMIT write down the boservation as a comment
START TRANSACTION;
INSERT INTO students VALUES(9,'Sumi','Science',2020);
COMMIT;
ROLLBACK;
SELECT * FROM students;
-- Rollback do not make any changes after commit.


