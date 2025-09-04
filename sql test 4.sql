CREATE TABLE employes(emp_id SMALLINT,emp_name VARCHAR(15),department VARCHAR(15),city VARCHAR(15),age SMALLINT,salary INT,
join_date DATE,performance SMALLINT,emp_satisfaction SMALLINT,emp_warnings SMALLINT,dept_id int);
INSERT INTO employes VALUES
(1, 'Mohini', 'HR', 'Pune', 21, 50000, '2009-11-9', 5, 9, 1,6),
(2, 'Gauri','Finance','Mumbai', 23, 90000, '2011-02-05', 2, 3, 0,1),
(3, 'Shanaya','Marketing','Pune', 30, 80000, '2004-10-3', 4, 5, 1,8),
(4, 'Bhargavi','Sales','Pune', 25, 10000, '2002-8-8', 6, 1, 3,5),
(5, 'Shabhavi','Design','Rahuri', 33, 30000, '2009-6-3', 8, 7, 1,7),
(6, 'Neha','CS','Deolali', 48, 25000, '2020-8-18', 10, 9, 0,2),
(7, 'Sneha','Project','Nagpur', 25, 60000, '2024-12-5', 0, 1, 1,3),
(8, 'Ashi','IT','Solapur', 27, 80000, '2017-9-6', 2, 3, 2,4),
(9, 'Ananya','Sales','Kolkata', 39, 70000, '2018-5-7', 4, 5, 3,5),
(10, 'Ahaan','Finance','Hyderabad', 42, 75000, '2019-2-8', 6, 7, 0,1),
(11, 'Vaani','HR','Banglore', 43, 74000, '2020-1-8', 9, 9, 1,6),
(12, 'Ruhi','Design','Bhopal', 44, 51000, '2021-3-24', 10, 0, 2,7),
(13, 'Moni','Project','Chennai', 45, 52000, '2022-4-22', 0, 0, 3,3),
(14, 'Chitra','Marketing','Surat', 46, 53000, '2023-5-23', 2, 0, 0,8),
(15, 'Siya', 'CS','Jaipur', 47, 15000, '2025-6-6', 4, 1, 2,2),
(16, 'Ronny', 'HR','Pune', 24, 18000, '2024-7-8', 6, 3, 2,6),
(17, 'Ishwar', 'Finance','Lucknow', 26, 19000, '2016-12-8', 8, 5, 3,1),
(18, 'Omkar', 'Design','Pune', 28, 20000, '2015-12-8', 10, 7, 0,7),
(19, 'Rushi', 'Design','Agra', 38, 24000, '2014-12-8', 0, 9, 1,7),
(20, 'Rani', 'IT','Kanpur', 32, 25000, '2013-12-8', 2, 0, 2,4),
(21, 'Raj','HR', 'Indore', 33, 32000, '2012-12-8', 4, 1, 2,6),
(22, 'Varad','HR','Patna', 35, 36000, '2011-12-8', 6, 3, 0,6),
(23, 'Anamika','Finance','Raipur', 45, 38000, '2022-12-8', 8, 5, 1,1),
(24, 'Gautam','Finance','Mysuru', 36, 61000, '2024-12-8', 10, 7, 2,1),
(25, 'Elvish', 'Finance','Varanasi', 37, 41000, '2022-12-8', 0, 9, 3,1),
(26, 'Ranvijay', 'Finance','Nashik', 48, 43000, '2018-12-8', 2, 0, 0,1),
(27, 'Kushal','Finance','Ranchi', 20, 82000, '2019-12-8', 4, 1, 1,1),
(28, 'Yogesh', 'HR','Srinagar', 21, 83000, '2020-12-8', 6, 3, 2,6),
(29, 'Munavvar', 'HR','Jabalpur', 25, 73000, '2017-12-8', 8, 5, 3,6),
(30, 'Ankita', 'IT','Rajkot', 27, 16000, '2016-12-8', 10, 7, 0,4),
(31, 'Kamya','IT','Coimbatore', 49, 17000, '2015-12-8', 0, 9, 1,4),
(32, 'Bhavya', 'IT','Vadodara', 53, 18000, '2014-12-8', 2, 0, 2,4),
(33, 'Radha', 'IT','Guwahati', 52, 19000, '2013-12-8', 4, 1, 3,4),
(34, 'Radhika','IT','Kota',  22, 23000, '2012-12-8', 6, 3, 0,4),
(35, 'Prasad', 'CS','Faridabad', 32, 22000, '2011-12-8', 8, 5, 1,2),
(36, 'Roshni', 'CS','Varanasi', 39, 24000, '2009-12-8', 10, 7, 2,2),
(37, 'Prita', 'CS','Pune', 56, 26000, '2008-12-8', 0, 9, 3,2),
(38, 'Anjum','CS','Jamshedpur', 52, 32000, '2007-12-8', 2, 3, 0,2),
(39, 'Ramme', 'Marketing','Chandigarh', 51, 34000, '2008-12-8', 4, 0, 1,8),
(40, 'Kriti', 'Marketing','Kochi', 50, 62000, '2002-12-8', 6, 1, 2,8),
(41, 'Kritika', 'Marketing','Madhural', 30, 63000, '2001-12-8', 8, 3, 3,8),
(42, 'Gautami','Marketing','Ahmedabad', 40, 19000, '2010-12-8', 10, 5, 0,8),
(43, 'Harsh','Project','Kochi', 20, 85000, '2011-12-8', 0, 7, 1,3),
(44, 'Kirtika', 'Project','Nagar', 26, 63000, '2010-12-8', 2, 9, 2,3),
(45, 'Shravan','Design','Pune', 41, 62000, '2012-12-8', 4, 0, 3,7),
(46, 'priya','Design','Mumbai', 36, 56000, '2013-12-8', 6, 0, 0,7),
(47, 'Sweetherat', 'Design','Delhi', 37, 53000, '2014-12-8', 8, 1, 1,7),
(48, 'Raja', 'Design','Bengluru', 42, 52000, '2015-12-8', 10, 1, 2,7),
(49, 'Shubhra','Design','Pune',  41, 51000, '2016-11-8', 0, 9, 3,7),
(50, 'Vaishnavi', 'Project','Pune', 40, 20000, '2017-10-9', 2, 9, 0,3),
(51, 'Rohini', 'Human resourses','Pune', 30, 63000, '2001-12-8', 9, 2, 1,15),
(52, 'Sanskar','Business','Mumbai', 40, 19000, '2010-10-8', 1, 6, 2,9),
(53, 'Ragini','Science','Kerala', 20, 85000, '2011-8-8', 0, 7, 1,10),
(54, 'Reshma', 'Analysis','Mumbai', 26, 63000, '2010-1-1', 2, 9, 2,11),
(55, 'Monika','Development','Satara', 41, 62000, '2012-12-8', 4, 4, 3,12),
(56, 'Priyash','Healthcare','Sangvi', 36, 56000, '2013-12-8', 6, 0, 1,13),
(57, 'Naine', 'Finance','Kokan', 37, 53000, '2014-12-8', 8, 1, 1,1),
(58, 'Mrunmay', 'IT','Bengluru', 42, 52000, '2015-12-8', 10, 1, 3,4),
(59, 'Mrunal','HR','Pune',  41, 51000, '2016-11-8', 0, 9, 3,6),
(60, 'Vaishnav', 'Project','Pune', 40, 20000, '2017-10-9', 2, 9, 0,3);
select * from employes;
-- 1.Show employees whose salary is not between 30,000 and 70,000.
select emp_name,salary from employes where salary not between 30000 and 70000;
-- 2.Retrieve employees from departments 2 and 4, excluding department 3.
select emp_name,department,dept_id from employes where dept_id in (2,4);
-- 3. Display employees ordered by name alphabetically.
select emp_name from employes  order by emp_name asc;
-- 4. List employees with salary greater than the average salary of all employees.
select avg(salary) from employes;
select emp_name,avg(salary) from employes where salary > (select avg(salary) from employes) group by emp_name;
-- 5.Find employees hired before the year 2020.
select emp_name,join_date from employes where join_date < '2020-01-01';
-- 6.Show employees hired in the last 10 years (experience < 10).
select * from employes where join_date >= date_sub(curdate(),interval 10 year);
-- 7. Display the month name of each hire_date.
select emp_name,join_date,monthname(join_date) as name_of_month from employes;
-- 8.Display departments and the highest salary in each department.
select department,dept_id,max(salary) as maximum_salary from employes group by department,dept_id;
-- 9.List departments and employees earning below department average salary.
select department,emp_name from employes e where salary < (select avg(salary) from employes where department = e.department);
-- 10.Find employees who earn the maximum salary across the whole company.
select emp_name,salary from employes where salary = (select max(salary) from employes);
-- 11.Show department names with zero employees (anti-join).
-- 12.Display each department along with the count of distinct salaries.
select department,count(distinct salary) from employes group by department;
-- 13.Display the square root of each employee’s salary.
select emp_name,salary,sqrt(salary) as square_root from employes;
-- 14.Show salaries rounded up (CEIL) and down (FLOOR).
select salary,ceil(salary) as rounded_up_salary,floor(salary) as rounded_down_salary from employes;
-- 15.Calculate the difference between the maximum and minimum salary.
select max(salary) - min(salary) as difference from employes;
-- 16.Find the average salary rounded to the nearest hundred.
select round(avg(salary),-2) as avg_salary from employes;
-- 17.Raise each salary to the power of 3.
select power(salary,3) as power_salary from employes;
-- 18.Show employees whose salary is an even number.
select emp_name,salary from employes where salary % 2 = 0;
-- 19.Show employees whose salary is divisible by 5.
select emp_name,salary from employes where salary % 5 = 0;