CREATE DATABASE office;
USE office;
CREATE TABLE employee(emp_id SMALLINT,emp_name VARCHAR(15),department VARCHAR(15),city VARCHAR(15),age SMALLINT,salary INT,join_date DATE,performance SMALLINT,emp_satisfaction SMALLINT,emp_warnings SMALLINT);
INSERT INTO employee VALUES(1, 'Mohini', 'HR', 'Pune', 21, 50000, '2009-11-9', 5, 9, 1),(2, 'Gauri','Finance','Mumbai', 23, 90000, '2011-02-05', 2, 3, 0),(3, 'Shanaya','Marketing','Pune', 30, 80000, '2004-10-3', 4, 5, 1),
(4, 'Bhargavi','Sales','Pune', 25, 10000, '2002-8-8', 6, 1, 3),
(5, 'Shabhavi','Design','Rahuri', 33, 30000, '2009-6-3', 8, 7, 1),
(6, 'Neha','CS','Deolali', 48, 25000, '2020-8-18', 10, 9, 0),
(7, 'Sneha','Project','Nagpur', 25, 60000, '2024-12-5', 0, 1, 1),
(8, 'Ashi','IT','Solapur', 27, 80000, '2017-9-6', 2, 3, 2),
(9, 'Ananya','Sales','Kolkata', 39, 70000, '2018-5-7', 4, 5, 3),
(10, 'Ahaan','Finance','Hyderabad', 42, 75000, '2019-2-8', 6, 7, 0),
(11, 'Vaani','HR','Banglore', 43, 74000, '2020-1-8', 9, 9, 1),
(12, 'Ruhi','Design','Bhopal', 44, 51000, '2021-3-24', 10, 0, 2),
(13, 'Moni','Project','Chennai', 45, 52000, '2022-4-22', 0, 0, 3),
(14, 'Chitra','Marketing','Surat', 46, 53000, '2023-5-23', 2, 0, 0),
(15, 'Siya', 'CS','Jaipur', 47, 15000, '2025-6-6', 4, 1, 2),
(16, 'Ronny', 'HR','Pune', 24, 18000, '2024-7-8', 6, 3, 2),
(17, 'Ishwar', 'Finance','Lucknow', 26, 19000, '2016-12-8', 8, 5, 3),
(18, 'Omkar', 'Design','Pune', 28, 20000, '2015-12-8', 10, 7, 0),
(19, 'Rushi', 'Design','Agra', 38, 24000, '2014-12-8', 0, 9, 1),
(20, 'Rani', 'IT','Kanpur', 32, 25000, '2013-12-8', 2, 0, 2),
(21, 'Raj','HR', 'Indore', 33, 32000, '2012-12-8', 4, 1, 3),
(22, 'Varad','HR','Patna', 35, 36000, '2011-12-8', 6, 3, 0),
(23, 'Anamika','Finance','Raipur', 45, 38000, '2022-12-8', 8, 5, 1),
(24, 'Gautam','Finance','Mysuru', 36, 61000, '2024-12-8', 10, 7, 2),
(25, 'Elvish', 'Finance','Varanasi', 37, 41000, '2022-12-8', 0, 9, 3),
(26, 'Ranvijay', 'Finance','Nashik', 48, 43000, '2018-12-8', 2, 0, 0),
(27, 'Kushal','Finance','Ranchi', 20, 82000, '2019-12-8', 4, 1, 1),
(28, 'Yogesh', 'HR','Srinagar', 21, 83000, '2020-12-8', 6, 3, 2),
(29, 'Munavvar', 'HR','Jabalpur', 25, 73000, '2017-12-8', 8, 5, 3),
(30, 'Ankita', 'IT','Rajkot', 27, 16000, '2016-12-8', 10, 7, 0),
(31, 'Kamya','IT','Coimbatore', 49, 17000, '2015-12-8', 0, 9, 1),
(32, 'Bhavya', 'IT','Vadodara', 53, 18000, '2014-12-8', 2, 0, 2),
(33, 'Radha', 'IT','Guwahati', 52, 19000, '2013-12-8', 4, 1, 3),
(34, 'Radhika','IT','Kota',  22, 23000, '2012-12-8', 6, 3, 0),
(35, 'Prasad', 'CS','Faridabad', 32, 22000, '2011-12-8', 8, 5, 1),
(36, 'Roshni', 'CS','Varanasi', 39, 24000, '2009-12-8', 10, 7, 2),
(37, 'Prita', 'CS','Pune', 56, 26000, '2008-12-8', 0, 9, 3),
(38, 'Anjum','CS','Jamshedpur', 52, 32000, '2007-12-8', 2, 3, 0),
(39, 'Ramme', 'Marketing','Chandigarh', 51, 34000, '2008-12-8', 4, 0, 1),
(40, 'Kriti', 'Marketing','Kochi', 50, 62000, '2002-12-8', 6, 1, 2),
(41, 'Kritika', 'Marketing','Madhural', 30, 63000, '2001-12-8', 8, 3, 3),
(42, 'Gautami','Marketing','Ahmedabad', 40, 19000, '2010-12-8', 10, 5, 0),
(43, 'Harsh','Project','Kochi', 20, 85000, '2011-12-8', 0, 7, 1),
(44, 'Kirtika', 'Project','Nagar', 26, 63000, '2010-12-8', 2, 9, 2),
(45, 'Shravan','Design','Pune', 41, 62000, '2012-12-8', 4, 0, 3),
(46, 'priya','Design','Mumbai', 36, 56000, '2013-12-8', 6, 0, 0),
(47, 'Sweetherat', 'Design','Delhi', 37, 53000, '2014-12-8', 8, 1, 1),
(48, 'Raja', 'Design','Bengluru', 42, 52000, '2015-12-8', 10, 1, 2),
(49, 'Shubhra','Design','Pune',  41, 51000, '2016-11-8', 0, 9, 3),
(50, 'Vaishnavi', 'Project','Pune', 40, 20000, '2017-10-9', 2, 9, 0);
SELECT * FROM employee;
-- insert 10 new records into the employee table for 5 new departments
INSERT INTO employee VALUES(51, 'Rohini', 'Human resourses','Pune', 30, 63000, '2001-12-8', 9, 2, 1),
(52, 'Sanskar','Business','Mumbai', 40, 19000, '2010-10-8', 1, 6, 2),
(53, 'Ragini','Science','Kerala', 20, 85000, '2011-8-8', 0, 7, 1),
(54, 'Reshma', 'Analysis','Mumbai', 26, 63000, '2010-1-1', 2, 9, 2),
(55, 'Monika','Development','Satara', 41, 62000, '2012-12-8', 4, 4, 3),
(56, 'Priyash','Healthcare','Sangvi', 36, 56000, '2013-12-8', 6, 0, 1),
(57, 'Naine', 'Finance','Kokan', 37, 53000, '2014-12-8', 8, 1, 1),
(58, 'Mrunmay', 'IT','Bengluru', 42, 52000, '2015-12-8', 10, 1, 3),
(59, 'Mrunal','HR','Pune',  41, 51000, '2016-11-8', 0, 9, 3),
(60, 'Vaishnav', 'Project','Pune', 40, 20000, '2017-10-9', 2, 9, 0);
SELECT * FROM employee;
-- update salary of all employee in dept 'IT' by 10%
UPDATE employee SET salary = salary * 1.10 WHERE department='IT';
SELECT * FROM employee WHERE department='IT';
-- Add a new column 'LastAppraisalDate' of type DATE to the 'Employees' table
ALTER TABLE employee ADD COLUMN LastAppraisalDate DATE;
-- delete all employees who wer hired before 2010
DELETE FROM employee WHERE join_date < '2010-1-1';
SELECT * FROM employee;
-- rename employee table to 'staff'
RENAME TABLE employee TO staff;
-- drop the LastAppraisalDate column 
ALTER TABLE staff DROP COLUMN LastAppraisalDate;
-- modify data type of salary column from int to decimal(10,2)
ALTER TABLE staff MODIFY COLUMN salary DECIMAL(10,2);
-- Add a new column "Performance" to store the perfromance of the employees on the scale of 1-10
-- added already
-- Fetch the records of the employees whose performance rating is more than 7
SELECT * FROM staff WHERE performance >7;
-- Fetch the records of the employees whose salary is more than 50,000
SELECT * FROM staff WHERE salary>50000;
-- SELECT and UNIQUE
-- Display all unique cities from the employee table.
RENAME TABLE staff TO employee;
SELECT DISTINCT city FROM employee;
-- Show distinct department names in the company
SELECT DISTINCT department FROM employee;
-- ORDER BY
-- List all employees ordered by their salary in descending order
SELECT emp_name,salary FROM employee ORDER BY salary DESC; 
-- Display employees sorted by age (youngest first) and then by name alphabetically.
SELECT emp_name,age FROM employee ORDER BY age,emp_name ASC;
-- Show employees with the highest satisfaction scores first.
SELECT * FROM employee ORDER BY emp_satisfaction DESC;
-- LIMIT
-- Display the top 5 highest paid employees
SELECT * FROM employee ORDER BY salary DESC LIMIT 5;
-- Show the 3 oldest employees in the company
SELECT * FROM employee ORDER BY age DESC LIMIT 3;
-- List the 10 employees with the lowest performance scores
SELECT * FROM employee ORDER BY performance ASC LIMIT 10;
-- Basic Aggregates
-- What is the average salary in the company?
SELECT AVG(salary) from employee;
-- Find the total number of employees in each city.
SELECT city, COUNT(*) as Employees FROM employee GROUP BY city;
-- Calculate the maximum and minimum age of employees.
SELECT MAX(age) from employee;
SELECT MIN(age) from employee;
-- What is the average satisfaction score for the entire company?
SELECT AVG(emp_satisfaction) from employee;
-- GROUP BY
-- Show the average salary by department
SELECT department, AVG(salary) as Average_Salary FROM employee GROUP BY department;
-- Calculate the number of employees in each age group (20-30, 31-40, 41-50, 51+).
-- Find the maximum performance score in each city.
SELECT city, MAX(performance) as Max_Performance_Score FROM employee GROUP BY city;
--  Display the average satisfaction score by department.
SELECT department, AVG(emp_satisfaction) as avg_satisfaction_Score FROM employee GROUP BY department;
-- HAVING
-- List departments that have an average salary greater than 75,000.
SELECT department, AVG(salary) as avg_salary FROM employee GROUP BY department HAVING AVG(salary) > 75000;
--  Show cities with more than 10 employees.
SELECT city, COUNT(*) as cities FROM employee GROUP BY city HAVING COUNT(*) > 10;
-- Find departments where the minimum performance score is below 5
SELECT department, MIN(performance) as departments FROM employee GROUP BY department HAVING MIN(performance)<5;
-- Display age groups that have an average satisfaction score above 7.
SELECT age, AVG(emp_satisfaction) as satisfactions FROM employee GROUP BY age HAVING AVG(emp_satisfaction) > 7;
-- Combination of Clauses
-- Show the top 3 departments with the highest average salaries (order results).
SELECT department,AVG(salary) as average_sal FROM employee GROUP BY  department ORDER BY average_sal DESC LIMIT 3;
-- List cities with average employee age below 35 and more than 5 employees.
SELECT city,AVG(age) as avg_age,COUNT(*) as num_of_emp FROM employee GROUP BY city HAVING AVG(age) < 35 and COUNT(*) > 5;
-- Find departments where the maximum salary is over 100,000 and display them in descending order of maximum salary.
INSERT INTO employee VALUES(61, 'Tanmay', 'Travel','Bengluru', 21, 150000, '2015-12-8', 10, 1, 2);
SELECT department,MAX(salary) as max_salary , COUNT(*) as num_of_emp FROM employee GROUP BY department HAVING MAX(salary) > 100000 ORDER BY department DESC; 
-- Display the 5 departments with the lowest attrition rates (highest retention)(attrtion score = 1).
ALTER TABLE employee ADD COLUMN attrition_rate INT;
SET SQL_SAFE_UPDATES=0;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=1;
UPDATE  employee SET attrition_rate=9 WHERE emp_id=2;
UPDATE  employee SET attrition_rate=8 WHERE emp_id=3;
UPDATE  employee SET attrition_rate=1 WHERE emp_id=4;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=5;
UPDATE  employee SET attrition_rate=5 WHERE emp_id=6;
UPDATE  employee SET attrition_rate=6 WHERE emp_id=7;
UPDATE  employee SET attrition_rate=6 WHERE emp_id=8;
UPDATE  employee SET attrition_rate=8 WHERE emp_id=9;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=10;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=11;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=12;
UPDATE  employee SET attrition_rate=7 WHERE emp_id=13;
UPDATE  employee SET attrition_rate=4 WHERE emp_id=14;
UPDATE  employee SET attrition_rate=3 WHERE emp_id=15;
UPDATE  employee SET attrition_rate=1 WHERE emp_id=16;
UPDATE  employee SET attrition_rate=8 WHERE emp_id=17;
UPDATE  employee SET attrition_rate=8 WHERE emp_id=18;
UPDATE  employee SET attrition_rate=9 WHERE emp_id=19;
UPDATE  employee SET attrition_rate=1 WHERE emp_id=20;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=21;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=22;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=23;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=24;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=25;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=26;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=27;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=28;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=29;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=30;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=31;
UPDATE  employee SET attrition_rate=3 WHERE emp_id=32;
UPDATE  employee SET attrition_rate=6 WHERE emp_id=33;
UPDATE  employee SET attrition_rate=9 WHERE emp_id=34;
UPDATE  employee SET attrition_rate=7 WHERE emp_id=35;
UPDATE  employee SET attrition_rate=5 WHERE emp_id=36;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=37;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=38;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=39;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=40;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=41;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=42;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=43;
UPDATE  employee SET attrition_rate=3 WHERE emp_id=44;
UPDATE  employee SET attrition_rate=3 WHERE emp_id=45;
UPDATE  employee SET attrition_rate=4 WHERE emp_id=46;
UPDATE  employee SET attrition_rate=4 WHERE emp_id=47;
UPDATE  employee SET attrition_rate=1 WHERE emp_id=48;
UPDATE  employee SET attrition_rate=10 WHERE emp_id=49;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=50;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=51;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=52;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=53;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=54;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=55;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=56;
UPDATE  employee SET attrition_rate=8 WHERE emp_id=57;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=58;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=59;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=60;
UPDATE  employee SET attrition_rate=2 WHERE emp_id=61;
SELECT * FROM employee;
SELECT  department, AVG(attrition_rate) as avg_att_rate FROM employee GROUP BY department ORDER BY avg_att_rate ASC LIMIT 5;
-- Calculate the average salary difference between employees with warnings and without warnings.

-- Show departments where the average performance score is higher than the company average.
SELECT department,AVG(performance) as department_performance FROM employee GROUP BY department HAVING AVG(performance) > (SELECT AVG(performance) FROM employee);
-- List employees who are in the top 10% salary bracket in their department.

-- Find cities where the average satisfaction score is higher than the department average.
SELECT city,AVG(emp_satisfaction) as city_satisfaction FROM employee GROUP BY city HAVING AVG(emp_satisfaction) > (SELECT AVG(emp_satisfaction) FROM employee);
-- Queries on Real-world Problems
-- HR wants to identify departments with high attrition (above 10%) (dept where employee attrition is 1 for more than 10% )and low satisfaction (below 5) for intervention.

-- Management wants to see which cities have both high performance (average >8) and high salaries (average >80k).
SELECT city, AVG(performance) as Average_Performance, AVG(salary) as Average_Salary FROM employee GROUP BY city HAVING AVG(performance) > 8 AND AVG(salary) > 80000;
-- Find employees who might be at risk of leaving (high salary, low satisfaction, and average performance).

-- Identify departments that have both young employees (average age <30) and high performance (average >80).
SELECT department, AVG(age) as Average_Age, AVG(performance) as Average_Performance FROM employee GROUP BY department HAVING AVG(age) < 30 AND AVG(performance) > 80;


