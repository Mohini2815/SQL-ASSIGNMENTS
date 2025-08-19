CREATE DATABASE Hospital;
USE Hospital;
-- departments table
CREATE TABLE departments(dept_id INT PRIMARY KEY,dept_name VARCHAR(30) UNIQUE,location VARCHAR(20));
-- doctors table
CREATE TABLE doctors(doctor_id INT PRIMARY KEY,doctor_name VARCHAR(20),specialization VARCHAR(20),phone varchar(20),dept_id INT,FOREIGN KEY(dept_id) REFERENCES departments(dept_id));
-- patients table
CREATE TABLE patients(patient_id INT PRIMARY KEY,patient_name VARCHAR(30),gender varchar(10),dob DATE,city VARCHAR(20),state VARCHAR(20),phone VARCHAR(20),blood_group VARCHAR(5));
-- rooms
CREATE TABLE rooms(room_id INT PRIMARY KEY,room_type varchar(20), daily_rate DECIMAL,status varchar(20));
-- admissions table
create table admissions(admission_id INT primary key,patient_id INT,foreign key(patient_id) references patients(patient_id),room_id INT,foreign key(room_id)references rooms(room_id),admit_date DATE, discharge_date DATE,admitting_doctor_id int,doctor_id int,foreign key(doctor_id) references doctors(doctor_id),diagnosis varchar(20));
-- appointments table
CREATE TABLE appointments(appointment_id int primary key,patient_id int,foreign key(patient_id) references patients(patient_id),doctor_id int,foreign key(doctor_id)references doctors(doctor_id),appointment_date date,status varchar(20),reason varchar(30));
-- medications table
create table medications(med_id int primary key,med_name varchar(30) unique,category varchar(30),unit_price decimal,is_active boolean);
-- prescriptions table
create table priscriptions(prescription_id int primary key,appointment_id int,foreign key(appointment_id) references appointments(appointment_id),med_id int,foreign key(med_id)references medications(med_id),dosage int,frequency int,days int);
-- labtests table
create table lab_tests(test_id int primary key,test_name varchar(30)unique,category varchar(20),base_price decimal);
-- LabResults table
create table lab_results(result_id int primary key,appointment_id int,foreign key(appointment_id)references appointments(appointment_id),test_id int,foreign key(test_id)references lab_tests(test_id),result_value int,result_date date,status varchar(20));
-- Bills table
create table bills(bill_id int primary key,patient_id int,foreign key(patient_id)references patients(patient_id),bill_date date,bill_type varchar(10),total_amount decimal);
-- Payments table
create table payments(payment_id int primary key,bill_id int,foreign key(bill_id)references bills(bill_id),payment_date date,amount decimal,method varchar(20),status varchar(20));
insert into departments values(1001,'Accident&Emergency','Pune');
insert into departments values(1002,'Radiology','Mumbai');
insert into departments values(1003,'Pharmacy','Bengluru');
insert into departments values(1004,'Laboratory','Chennai');
insert into departments values(1005,'OT','Himachal');
select * from departments;
insert into doctors values(701,'Suresh Gupta','Cardiology','9090909090',1005);
insert into doctors values(702,'Veer jha','Orthopedics','1231231231',1002);
insert into doctors values(703,'Purav sinha','Neurology','9898778787',1001);
insert into doctors values(704,'Samiha singh','Oncology','9292343536',1004);
insert into doctors values(705,'Sidharth yadav','Pediatrics','7878787777',1003);
select * from doctors;
insert into patients values(9,'Sonakshi sinha','F','2012-01-01','Mumbai','Maharashtra','1212312345','AB');
insert into patients values(11,'Salman khan','M','1999-01-01','Chennai','Tamil Nadu','2342342345','B+');
insert into patients values(15,'Vaani Batra','F','2003-10-22','Benguluru','Karnataka','9090111190','O');
insert into patients values(20,'Krish kapoor','M','1980-10-28','Kochi','Kerala','7877787778','AB');
insert into patients values(1,'Kiara advani','F','2000-01-01','Kolkata','West Bangal','1001001000','A');
select * from patients;
insert into rooms values(1000,'General',700,'Occupied');
insert into rooms values(1005,'Private',2000,'Available');
insert into rooms values(1011,'Semi-Private',1500,'Occupied');
insert into rooms values(1021,'ICU',3500,'Occupied');
insert into rooms values(999,'General',700,'Available');
select * from rooms;
insert into admissions values(901,9,999,'2025-01-10','2025-01-25',101,701,'Hypertension');
insert into admissions values(902,1,1000,'2024-10-2','2024-10-10',102,705,'Diabetes');
insert into admissions values(903,20,1005,'2022-9-11','2022-9-21',103,703,'Hypothyroidism');
insert into admissions values(904,11,1011,'2025-4-11','2022-4-19',104,704,'acute appendicitis');
insert into admissions values(905,15,1021,'2022-9-11','2022-9-21',105,705,'Anemia');
update admissions set doctor_id=702 where admission_id=905;
select * from admissions;
insert into appointments values(21,11,705,'2022-9-9','Completed','Follow up for surgery');
insert into appointments values(22,9,703,'2022-9-1','Scheduled','General checkup');
insert into appointments values(23,1,702,'2022-8-10','Cancelled','Rescheduled due to emergency');
insert into appointments values(24,15,704,'2025-01-01','Cancelled','New patient consultation');
insert into appointments values(25,20,701,'2025-01-09','Scheduled','Medication review');
select * from appointments;
INSERT INTO medications VALUES(31, 'Aspirin', 'Pain Relief', 5, TRUE),(32, 'Lisinopril', 'Blood Pressure', 10, TRUE),(33, 'Ibuprofen', 'Pain Relief', 7, TRUE),(34, 'Metformin', 'Diabetes', 8, TRUE),(35, 'Paracetamol', 'Pain Relief', 3, TRUE);
select * from medications;
update medications set med_id=31 where med_name='Aspirin';
update medications set med_id=32 where med_name='Lisinopril';
update medications set med_id=33 where med_name='Ibuprofen';
update medications set med_id=34 where med_name='Metformin';
update medications set med_id=35 where med_name='Paracetamol';
alter table priscriptions modify column frequency varchar(20);
INSERT INTO priscriptions VALUES (2001,21, 31, 6, '1/day', 30),(2002, 22, 32, 10, '1/day', 90),(2003, 23, 33, 4, '2/day', 14),(2004,24, 34, 5, '2/day', 60),(2005, 25, 35, 8, '1/day', 30);
select * from priscriptions;
INSERT INTO lab_tests VALUES (501, 'Complete Blood Count (CBC)', 'Hematology', 500),(502, 'Blood Glucose Test', 'Biochemistry', 200),
(503, 'Lipid Profile', 'Biochemistry', 800),(504, 'Urine Routine Examination', 'Pathology','200'),(505, 'Liver Function Test', 'Biochemistry', 1000);
select * from lab_tests;
alter table lab_results modify column result_value varchar(50);
INSERT INTO lab_results VALUES (91, 21, 501, 'Hemoglobin: 14.5 g/dL', '2024-01-12', 'Normal'),(92, 22, 502, 'Blood Glucose: 120 mg/dL', '2024-01-16', 'Abnormal'),(93, 23, 503, 'Cholesterol: 180 mg/dL', '2024-02-02', 'Normal'),
  (94, 24, 504, 'Urine Protein: Negative', '2024-03-02', 'Normal'),(95, 25, 505, 'ALT: 40 U/L', '2024-04-02', 'Abnormal');
  select * from lab_results;
INSERT INTO bills VALUES (301, 9, '2024-01-15', 'OPD', 1000),(302, 11, '2024-01-20', 'IPD', 5000),(303, 15, '2024-02-05', 'OPD', 500),(304, 20, '2024-03-10', 'OPD', 2000),(305, 1, '2024-04-15', 'IPD', 8000);
select * from bills;
-- List patients from Mumbai, ordered by patient_name.
select * from patients where city='Mumbai' order by patient_name;
-- Show appointments after '2025-01-01', newest first
select * from appointments where appointment_date > '2025-01-01' order by appointment_date desc;
-- Get distinct blood groups among patients
select distinct blood_group from patients;
-- Find doctors with specialization IN ('Cardiology','Orthopedics')
select doctor_name,specialization from doctors where specialization in('Cardiology','Orthopedics');
-- Rooms with daily_rate BETWEEN 2000 AND 8000
select room_id,daily_rate from rooms having daily_rate between 2000 and 8000;
-- Medications whose name starts with “Aspirin”
select med_id,med_name from medications where med_name like 'Aspirin%';
-- Patients whose patient_name contains a space
select patient_id,patient_name from patients where patient_name like '% %';
-- Show top 3 most expensive lab tests by base_price
select test_name,base_price from lab_tests order by base_price desc limit 3;
-- Appointments with status IN ('Completed','Cancelled') on or after 2025-07-01
select appointment_id,status,appointment_date from appointments where status in('Cancelled','Completed') and appointment_date > '2025-07-01';
-- Admissions with NULL discharge_date (currently admitted), ordered by admit_date
select admission_id,admit_date from admissions where discharge_date is null order by admit_date;
-- count patients per state show only states>=50 patients
SELECT state, COUNT(patient_id) AS patient_count FROM patients GROUP BY state HAVING COUNT(patient_id) >= 50;
-- for each room_type,show avg/min/max daily_rate
select room_type,avg(daily_rate) as avg_daily_rate from rooms group by room_type;
select room_type,min(daily_rate) as min_rate from rooms group by room_type;
select room_type,max(daily_rate) as max_rate from rooms group by room_type;

-- for each status in appointment, show count sorted by count desc
select status,count(appointment_id) as count_appointments from appointments group by status order by count(appointment_id) desc;
-- medications:avearge unit_price per category only categories with avg>=10
select med_id,category,avg(unit_price) as avg_unit_price from medications group by med_id,category having avg(unit_price)>=10; 
-- lab tests: total number of tests per category
select test_id,category,count(test_name) as total_tests from lab_tests group by test_id,category;
-- bills: monthly total_amountof 2025(group by month)
select extract(month from bill_date)as month,sum(total_amount) as total_amount from bills where extract(year from bill_date)=2025 group by extract(month from bill_date) order by month asc;
-- Payments: success rate by method (success/total)
 
insert into payments values(111,301,'2024-01-15',1400,'Cash','Success');
insert into payments values(112,302,'2024-01-21',4000,'UPI','Success');
insert into payments values(113,303,'2024-02-05',10000,'UPI','Failed');
insert into payments values(114,304,'2024-03-10',5000,'NetBanking','Refunded');
insert into payments values(115,305,'2024-04-17',20000,'Card','Success');
select * from payments;
select payment_id,payment_date,amount,method,status from payments where status = 'Success';
-- Admissions: average length of stay in days for discharged cases
select avg(discharge_date - admit_date) from admissions;
-- Patients: count per blood_group, show groups with at least 20 patients.
select blood_group,count(*) as total_blood_group from patients group by blood_group;
-- List departments whose number of doctors ≥ 5.
select d.dept_name,count(doc.doctor_id) from departments d join doctors doc on d.dept_id = doc.dept_id group by d.dept_name;
-- Show days where > 100 appointments were scheduled
select appointment_date,count(*) as appointment_count from appointments group by appointment_date having count(*)>0;
-- Find cities whose patients generated ≥ ■5,00,000 in 2025 bills
-- select d.city,sum(b.total_amount) as total_amount from departments d join patients p on d.dept_id = p.dept_id join bills b on d.patient_id = b.dept_id where b.  
-- List medications that are inactive or cost > 5
select med_name from medications where unit_price > 5;
-- From Rooms, show Available rooms where room_type is not 'ICU', ordered by cheapest first
select room_id,room_type,daily_rate from rooms where room_type != 'ICU' order by daily_rate asc;
-- List appointment_id, appointment_date, patient_name, doctor_name, dept_name
select a.appointment_id,a.appointment_date,p.patient_name,doc.doctor_name,d.dept_name from appointments a join patients p on a.patient_id = p.patient_id
join doctors doc on a.doctor_id = doc.doctor_id join departments d on a.dept_id = d.dept_id;
alter table appointments add column dept_id int;
alter table appointments add constraint fk foreign key (dept_id) references departments(dept_id);
-- For each admission, show patient_name, room_type, admit_date, admitting_doctor_name.
select a.admission_id,p.patient_name,r.room_type,a.admit_date,d.doctor_name from admissions a join patients p on a.admission_id=p.admission_id
join rooms r on a.admission_id=r.admission_id join doctors d on a.admission_id=d.admission_id;
alter table doctors add column admission_id int;
alter table doctors add constraint f_k foreign key(admission_id) references admissions(admission_id);
alter table rooms add column admission_id int;
alter table rooms add constraint f_key foreign key(admission_id) references admissions(admission_id);
alter table patients add column admission_id int;
alter table patients add constraint p_fk foreign key(admission_id) references admissions(admission_id);
-- List prescribed meds: appointment_id, med_name, dosage, frequency, days, unit_price.
alter table medications add column appointment_id int;
alter table medications add constraint m_fk foreign key (appointment_id)references appointments(appointment_id);
select a.appointment_id,m.med_name,p.dosage,p.frequency,p.days,m.unit_price from priscriptions p  join appointments a on p.appointment_id=a.appointment_id
join medications m on p.appointment_id=m.appointment_id;
-- Show lab test results with patient_name, doctor_name, test_name, result_value, status.
select p.patient_name,d.doctor_name,l.test_name,lr.result_value,lr.status from lab_results lr join patients p on lr.patient_id = p.patient_id
join doctors d on lr.doctor_id = d.doctor_id join lab_tests l on lr.test_id=l.test_id;


