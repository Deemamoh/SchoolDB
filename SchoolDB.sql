use School;

-- create student table 
create table Students(
student_id int primary key,
student_name varchar(200) not null,
birth_date date not null,
student_gender varchar(10) not null,
joining_date date,
student_email varchar(100) unique not null,
grade_level char(20) not null,
track  varchar(50),
student_gpa int
);

-- create teacher table
create table Teachers(
teacher_id int primary key,
teacher_name varchar(200),
birth_date date not null,
gender_gender varchar(10) not null,
teacher_email varchar(100) unique not null,
office_number varchar(10)
);
-- create subject table 
create table Subjects (
serial_no int primary key,
subject_name varchar(100) not null
);

-- insert students information
insert into Students (student_id, student_name, birth_date, student_gender, joining_date, student_email, grade_level, track, student_gpa)
values (18, 'Maha Nasser', '2008-06-30', 'Female', '2022-09-01', 'maha18@example.com', '11', 'Arts', 90),
(19, 'Tariq Ali', '2007-07-20', 'Male', '2022-09-01', 'tariq19@example.com', '12', 'Science', 89),
(20, 'Noor Zaid', '2008-11-05', 'Female', '2022-09-01', 'noor20@example.com', '11', 'Commerce', 91),
(21, 'Faisal Omar', '2007-03-25', 'Male', '2022-09-01', 'faisal21@example.com', '12', 'Science', 93),
(22, 'Laila Hassan', '2008-08-12', 'Female', '2022-09-01', 'laila22@example.com', '11', 'Arts', 88),
(23, 'Adel Karim', '2007-01-30', 'Male', '2022-09-01', 'adel23@example.com', '12', 'Science', 90),
(24, 'Hana Saleh', '2008-09-25', 'Female', '2022-09-01', 'hana24@example.com', '11', 'Commerce', 92),
(25, 'Ibrahim Nasser', '2007-12-10', 'Male', '2022-09-01', 'ibrahim25@example.com', '12', 'Science', 91),
(26, 'Sara Omar', '2008-05-05', 'Female', '2022-09-01', 'sara26@example.com', '11', 'Arts', 89),
(27, 'Yahya Ali', '2007-06-18', 'Male', '2022-09-01', 'yahya27@example.com', '12', 'Science', 88),
(28, 'Mona Zaid', '2008-07-30', 'Female', '2022-09-01', 'mona28@example.com', '11', 'Commerce', 90),
(29, 'Fadi Khalid', '2007-04-22', 'Male', '2022-09-01', 'fadi29@example.com', '12', 'Science', 92),
(30, 'Reem Ali', '2008-03-15', 'Female', '2022-09-01', 'reem30@example.com', '11', 'Arts', 91);
;

-- insert teachers information
insert Teachers(teacher_id, teacher_name, birth_date, gender_gender, teacher_email, office_number)
values (21, 'Ahmed Alqarni', '1968-03-15', 'Male', 'ahmed2@gmail.com', 'Stair 2-02'),
(33, 'Sara Alzahrani', '1975-05-22', 'Female', 'sara3@gmail.com', 'Stair 2-03'),
(41, 'Omar Alghamdi', '1972-11-10', 'Male', 'omar4@gmail.com', 'Stair 2-04'),
(15, 'Lina Saleh', '1978-07-12', 'Female', 'lina5@gmail.com', 'Stair 2-05'),
(96, 'Ali Hassan', '1969-02-20', 'Male', 'ali6@gmail.com', 'Stair 2-06'),
(70, 'Mona Khalid', '1973-09-15', 'Female', 'mona7@gmail.com', 'Stair 2-07'),
(88, 'Yousef Fahad', '1971-12-05', 'Male', 'yousef8@gmail.com', 'Stair 2-08'),
(91, 'Noura Ahmed', '1976-03-22', 'Female', 'noura9@gmail.com', 'Stair 2-09'),
(10, 'Fahad Omar', '1970-06-30', 'Male', 'fahad10@gmail.com', 'Stair 2-10'),
(101, 'Huda Saleh', '1974-01-10', 'Female', 'huda11@gmail.com', 'Stair 2-11');

-- insert subject information
insert Subjects (serial_no, subject_name)
values(6, 'chemistry'),
(3, 'math'),
(7, 'art'),
(8, 'english'),
(5,' arabic'),
(9,'physics');

-- present all tables in school db
show tables;

-- present info of each table
select * from Students;
select * from Teachers;
select * from Subjects;

-- show Students table ordered by student name ascending:
select * from Students
 order by student_name asc;
 
 -- show only form sud name as column (name)
 select student_name as "Name"
 from Students;
 
 -- change info by primary key 
 update Students
 set student_gender = 'Female' 
 where student_id in(1,2);
 
 -- change student mail
 update Students
 set student_email = 'lanalanoo5@gmail.com'
 where student_id = 2;
 
-- change office no for fawzia 
update Teachers 
set office_number = '30'
where teacher_id = 16;
 
 -- cahnge table name 
 alter table Students rename to stuInfo;
 select * from stuInfo;
 
 
 
 
 
 
 
 
 
 