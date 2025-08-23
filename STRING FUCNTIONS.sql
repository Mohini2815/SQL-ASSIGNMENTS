USE Hospital;
-- Display all patient names in uppercase form
select upper(patient_name) from patients;
-- Show all doctor names in lowercase form
select lower(doctor_name) from doctors;
-- Find patients whose name length is greater than 10 characters.
select length(patient_name) > 10 from patients;
-- Show doctor names along with their character count.
select doctor_name,length(doctor_name) from doctors;
-- List patients whose phone number has extra spaces at start or end.
select patient_name from patients where phone like ' %' or phone like '% ';
-- Extract the first 3 characters of each patient’s name.
select left(patient_name,3) from patients;
-- Display the last 4 digits of all patient phone numbers.
select right(phone,4) from patients;
-- From doctor specialization, extract the part of the string containing 'logy' if present.
select specialization from doctors where specialization like '%logy';
-- Show patient names that start with 'K'.
select patient_name from patients where patient_name like 'K%';
-- List doctors whose name ends with 'dav'.
select doctor_name from doctors where doctor_name like '%dav';
-- Find medications that contain 'cin' anywhere in the name.
select substring(patient_name,'cin');
-- Replace the word 'Hospital' with 'Clinic' in all department names.
select replace(dept_name,'Pharmacy','Clinic') from departments;
-- Replace spaces with hyphens in patient names.
select replace(patient_name,' ','-') from patients;
-- Display patient details by combining patient_name, city, and state in one column.
select concat_ws('-',patient_name,city,state) from patients;
-- Show a combined doctor contact string as 'Dr. - '.
select concat('Dr.',doctor_name) from doctors;
-- List patients where the blood_group is missing and display 'Unknown' instead.
select patient_name,ifnull(blood_group,'Unknown') from patients;
-- Show gender-wise labels as 'Male Patient' or 'Female Patient'.
select patient_name,case when gender = 'F' then 'Female Patient' when gender = 'M' then 'Male Patient' end as lebel from patients;
-- Display patient names in the format: 'Last 2 letters in uppercase + remaining in lowercase'.
select concat(lower(substring(patient_name,1,length(patient_name)-2)), upper(substring(patient_name,-2))) from patients;
-- From each department name, extract only the first word.

-- Find the longest patient name in the database.
select patient_name,length(patient_name)from patients where length(patient_name) = (select max(length(patient_name)) from patients);
-- List appointments scheduled today.
SELECT * FROM appointments WHERE appointment_date = CURDATE();
-- Show admissions created in the last 7 days
select * from admissions where admit_date >= CURDATE() - INTERVAL 7 DAY;
-- Fetch payments recorded between two given dates (inclusive)
select * from payments where payment_date between '2024-01-01' and '2024-12-31';
-- list bills created in the previous calender month
-- Show lab results whose result_date falls in the next 14 days from today
SELECT  * from lab_results where result_date >= curdate() and result_date <= curdate() + interval 14 day;
-- Retrieve admissions where the discharge_date is before today and discharge_date is NOT NULL
SELECT * FROM admissions WHERE discharge_date < CURDATE() AND discharge_date IS NOT NULL;
-- Get patients whose dob falls in the current month (any year)
SELECT * from patients where extract(MONTH FROM dob) = EXTRACT(MONTH FROM CURRENT_DATE);
-- From Bills, display bill_id with bill year, bill month number, and bill day as separate columns
select bill_id,year(bill_date) as bill_year,month(bill_date) as bill_month,day(bill_date) as bill_day from bills;
-- From Appointments, show appointment_id with the weekday name of appointment_date
select appointment_id,appointment_date,dayname(appointment_date) as weekday from appointments;
-- For Payments, return payment_id with calendar week number and quarter number of payment_date
select payment_id,payment_date,week(payment_date) as week_number,quarter(payment_date) as quarter_number from payments; 
-- for admissions,returns admission_id with year-week label derived from admit_date
select admission_id,admit_date,date_format(admit_date,'%Y-%u') from admissions;
-- from patients show patient_id,patient_name and the birth month name from dob. 
-- for each admission,compute the planned discharge date as admit_date + 5 days(display both)
select patient_id,patient_name,dob,monthname(dob) from patients;
-- for each appointment,show the date 7 days before appointment_date(as a remainder date)
select appointment_id,appointment_date, date_add(appointment_date, interval -7 day ) as remainder_date from appointments;
-- for each bill,display the due date as bill_date + 15 days
select bill_id,bill_date,date_add(bill_date,interval 15 day) as due_date from bills;
-- for each lab_result,show the age of the result in days from result_date till today
select result_id,result_date,datediff(curdate(),result_date) as age_of_result from lab_results;
-- for each patients compute the exact age in years as of today(whole number)
select patient_id,patient_name,floor(datediff(curdate(),dob) / 365.25) as age_in_years from patients;
-- count appointments per month for the current year, returning month number and count
select month(appointment_date) as month_number,count(*) as appointment_count from appointments where year(appointment_date) = year(curdate()) group by month(appointment_date)
order by month_number;
-- show payments grouped by quarter of the current year with total amount
select quarter(payment_date) as quarter_date, sum(amount) as total_amount from payments where year(payment_date) = year(curdate()) group by
quarter(payment_date) order by quarter_date;
-- list admissions grouped by room_type and year(admit_date) with counts per group
select admission_id,
-- for bills compute total amount per week for the last 8 weeks(show year-week label and sum)