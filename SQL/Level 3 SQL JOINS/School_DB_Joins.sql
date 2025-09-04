-- 1️⃣ Create Database
CREATE DATABASE School_DB_Joins;

USE School_DB_Joins;


-- 2️⃣ Create Two Tables

-- Table 1: Students (9 columns)
CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Gender NVARCHAR(10),
    DOB DATE,
    Email NVARCHAR(100),
    Phone NVARCHAR(20),
    Address NVARCHAR(255),
    CourseID INT
);


-- Table 2: Courses (6 columns)
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY IDENTITY(1,1),
    CourseName NVARCHAR(100),
    DurationMonths INT,
    StartDate DATE,
    EndDate DATE,
    Fees DECIMAL(10,2)
);


-- Insert into Courses (5 sample rows, some NULLs)
INSERT INTO Courses (CourseName, DurationMonths, StartDate, EndDate, Fees)
VALUES
('Mathematics', 6, '2025-01-15', '2025-07-15', 15000),
('Physics', 4, '2025-02-01', '2025-06-01', 12000),
('Chemistry', NULL, '2025-03-01', NULL, 14000),
('Computer Science', 12, '2025-01-01', '2026-01-01', NULL),
('Biology', 5, NULL, NULL, 13000);


-- Insert into Students (120 rows, with NULLs)

INSERT INTO Students (FirstName, LastName, Gender, DOB, Email, Phone, Address, CourseID)
VALUES
('Amit', 'Sharma', 'Male', '2002-05-12', 'amit.sharma@email.com', '9876543210', 'Delhi', 1),
('Priya', 'Verma', 'Female', '2001-11-23', NULL, '9876543211', 'Mumbai', 2),
('Rahul', 'Kumar', 'Male', '2003-02-05', 'rahul.kumar@email.com', NULL, 'Bengaluru', 3),
('Sneha', 'Patel', NULL, '2002-07-17', 'sneha.patel@email.com', '9876543213', NULL, 4),
('Ankit', 'Singh', 'Male', '2000-12-09', NULL, NULL, 'Kolkata', 5),
('Meera', 'Nair', 'Female', '2001-04-25', 'meera.nair@email.com', '9876543215', 'Chennai', 1),
('Vikram', 'Joshi', 'Male', '2003-01-10', NULL, '9876543216', 'Pune', 2),
('Riya', 'Das', 'Female', '2002-08-14', 'riya.das@email.com', NULL, NULL, 3),
('Suresh', 'Yadav', 'Male', '2001-09-19', 'suresh.yadav@email.com', '9876543218', 'Hyderabad', 4),
('Tanya', 'Mehta', NULL, '2002-10-28', NULL, NULL, 'Ahmedabad', 5),
('Manoj', 'Chopra', 'Male', '2000-05-15', 'manoj.chopra@email.com', '9876543220', NULL, 1),
('Neha', 'Kapoor', 'Female', '2003-03-03', NULL, '9876543221', 'Delhi', 2),
('Ajay', 'Bansal', 'Male', '2002-06-11', 'ajay.bansal@email.com', NULL, 'Noida', 3),
('Kavita', 'Reddy', 'Female', '2001-12-21', NULL, '9876543223', 'Bengaluru', 4),
('Pawan', 'Mishra', 'Male', '2002-02-18', 'pawan.mishra@email.com', '9876543224', NULL, 5),
('Divya', 'Gupta', NULL, '2001-08-30', 'divya.gupta@email.com', NULL, 'Jaipur', 1),
('Arjun', 'Raj', 'Male', '2003-04-07', NULL, '9876543226', 'Kolkata', 2),
('Isha', 'Menon', 'Female', '2002-11-19', NULL, NULL, 'Chennai', 3),
('Kiran', 'Pillai', 'Male', '2001-05-13', 'kiran.pillai@email.com', '9876543228', 'Pune', 4),
('Leena', 'Saxena', 'Female', '2000-09-23', 'leena.saxena@email.com', NULL, 'Hyderabad', 5),
('Rohit', 'Chauhan', 'Male', '2002-12-01', NULL, '9876543230', 'Delhi', 1),
('Pooja', 'Shukla', 'Female', '2001-07-07', NULL, '9876543231', NULL, 2),
('Nitin', 'Malhotra', 'Male', '2000-03-15', 'nitin.malhotra@email.com', '9876543232', 'Mumbai', 3),
('Shreya', 'Bhatt', NULL, '2002-05-21', 'shreya.bhatt@email.com', '9876543233', 'Bengaluru', 4),
('Gaurav', 'Ahuja', 'Male', '2001-01-30', NULL, '9876543234', NULL, 5),
('Anjali', 'Desai', 'Female', '2002-09-11', NULL, NULL, 'Ahmedabad', 1),
('Harsh', 'Bajaj', 'Male', '2000-10-19', 'harsh.bajaj@email.com', NULL, 'Noida', 2),
('Smita', 'Kaur', 'Female', '2001-02-08', NULL, '9876543237', 'Jaipur', 3),
('Deepak', 'Sinha', 'Male', '2003-06-14', 'deepak.sinha@email.com', NULL, 'Kolkata', 4),
('Sanjay', 'Verghese', 'Male', '2001-06-10', 'sanjay.verghese@email.com', NULL, 'Delhi', 2),
('Anusha', 'Chatterjee', 'Female', '2000-12-15', NULL, '9876543250', 'Kolkata', 3),
('Ramesh', 'Iyer', 'Male', '2002-02-25', 'ramesh.iyer@email.com', '9876543251', 'Mumbai', 4),
('Bhavna', 'Rathore', NULL, '2001-09-30', NULL, '9876543252', 'Jaipur', 5),
('Chirag', 'Modi', 'Male', '2003-03-13', 'chirag.modi@email.com', NULL, NULL, 1),
('Tina', 'Fernandes', 'Female', '2002-11-05', NULL, NULL, 'Bengaluru', 2),
('Abhishek', 'Saxena', 'Male', '2000-08-22', 'abhishek.saxena@email.com', '9876543255', 'Chennai', 3),
('Nisha', 'Chopra', 'Female', '2001-01-19', NULL, '9876543256', 'Hyderabad', 4),
('Kunal', 'Pawar', 'Male', '2002-05-17', NULL, NULL, 'Delhi', 5),
('Ritika', 'Jain', 'Female', '2003-07-21', 'ritika.jain@email.com', '9876543258', NULL, 1),
('Girish', 'Kapadia', 'Male', '2001-03-09', NULL, '9876543259', 'Mumbai', 2),
('Preeti', 'Srinivasan', 'Female', '2000-09-27', NULL, NULL, 'Kolkata', 3),
('Varun', 'Menon', 'Male', '2001-10-11', 'varun.menon@email.com', '9876543261', NULL, 4),
('Radhika', 'Basu', 'Female', '2002-01-15', NULL, NULL, 'Ahmedabad', 5),
('Ashok', 'Krishnan', 'Male', '2000-04-06', 'ashok.krishnan@email.com', '9876543263', 'Delhi', 1),
('Monica', 'Shetty', 'Female', '2001-08-12', NULL, '9876543264', 'Pune', 2),
('Deepesh', 'Choudhary', 'Male', '2003-02-14', NULL, NULL, 'Bengaluru', 3),
('Shalini', 'Kohli', 'Female', '2002-12-04', 'shalini.kohli@email.com', '9876543266', 'Jaipur', 4),
('Vivek', 'Aggarwal', 'Male', '2001-05-28', NULL, '9876543267', 'Hyderabad', 5),
('Payal', 'Mehrotra', 'Female', '2000-11-07', NULL, NULL, NULL, 1),
('Rajeev', 'Dubey', 'Male', '2002-09-09', 'rajeev.dubey@email.com', '9876543269', 'Chennai', 2),
('Seema', 'Bhargava', 'Female', '2001-04-18', NULL, '9876543270', 'Mumbai', 3),
('Aman', 'Grover', NULL, '2000-06-22', NULL, NULL, 'Kolkata', 4),
('Latika', 'Deshmukh', 'Female', '2002-03-30', 'latika.deshmukh@email.com', '9876543272', NULL, 5),
('Mahesh', 'Patil', 'Male', '2001-07-14', NULL, '9876543273', 'Pune', 1),
('Kritika', 'Sethi', 'Female', '2003-01-20', NULL, NULL, 'Ahmedabad', 2),
('Sohail', 'Khan', 'Male', '2002-08-08', 'sohail.khan@email.com', '9876543275', 'Delhi', 3),
('Pallavi', 'Tiwari', 'Female', '2001-02-03', NULL, '9876543276', 'Hyderabad', 4),
('Dinesh', 'Yadav', 'Male', '2000-10-25', NULL, NULL, 'Mumbai', 5),
('Aarti', 'Kulkarni', 'Female', '2003-04-02', 'aarti.kulkarni@email.com', NULL, 'Bengaluru', 1),
('Hemant', 'Rawat', 'Male', '2001-03-05', NULL, '9876543278', 'Jaipur', 2),
('Anita', 'Puri', 'Female', '2002-12-19', 'anita.puri@email.com', NULL, 'Delhi', 3),
('Jatin', 'Chhabra', 'Male', '2000-11-29', NULL, NULL, 'Bengaluru', 4),
('Rupal', 'Shah', 'Female', '2003-05-07', 'rupal.shah@email.com', '9876543281', NULL, 5),
('Raghav', 'Bhardwaj', 'Male', '2001-09-15', NULL, '9876543282', 'Mumbai', 1),
('Komal', 'Ghosh', 'Female', '2000-08-06', NULL, NULL, 'Kolkata', 2),
('Siddharth', 'Chaturvedi', 'Male', '2002-07-11', 'siddharth.chaturvedi@email.com', '9876543284', 'Hyderabad', 3),
('Tanvi', 'Rajput', 'Female', '2001-02-16', NULL, '9876543285', NULL, 4),
('Parth', 'Nanda', NULL, '2003-09-03', 'parth.nanda@email.com', NULL, 'Delhi', 5),
('Ayesha', 'Khan', 'Female', '2002-01-28', NULL, '9876543287', 'Ahmedabad', 1),
('Mayank', 'Tandon', 'Male', '2000-04-12', NULL, NULL, 'Pune', 2),
('Sheetal', 'Verma', 'Female', '2001-11-14', 'sheetal.verma@email.com', '9876543289', 'Jaipur', 3),
('Harish', 'Singla', 'Male', '2003-10-21', NULL, '9876543290', NULL, 4),
('Chhavi', 'Batra', 'Female', '2002-06-30', NULL, NULL, 'Bengaluru', 5),
('Naveen', 'Suri', 'Male', '2001-01-09', 'naveen.suri@email.com', '9876543292', 'Mumbai', 1),
('Manisha', 'Dewan', 'Female', '2000-03-23', NULL, '9876543293', NULL, 2),
('Zafar', 'Ali', 'Male', '2002-09-08', NULL, NULL, 'Hyderabad', 3),
('Asmita', 'Joshi', 'Female', '2001-12-13', 'asmita.joshi@email.com', '9876543295', 'Delhi', 4),
('Gopal', 'Nair', 'Male', '2000-05-18', NULL, '9876543296', 'Kolkata', 5),
('Rekha', 'Bhatt', 'Female', '2002-08-02', NULL, NULL, 'Ahmedabad', 1),
('Mukul', 'Saxena', 'Male', '2003-02-26', 'mukul.saxena@email.com', NULL, 'Chennai', 2),
('Shweta', 'Tripathi', 'Female', '2001-06-05', NULL, '9876543299', 'Delhi', 3),
('Raj', 'Mehra', 'Male', '2000-09-20', NULL, NULL, 'Bengaluru', 4),
('Veena', 'Suri', 'Female', '2002-11-24', 'veena.suri@email.com', '9876543301', NULL, 5),
('Tarun', 'Kapoor', 'Male', '2001-04-03', NULL, '9876543302', 'Mumbai', 1),
('Aditi', 'Chandel', 'Female', '2000-12-16', NULL, NULL, 'Pune', 2),
('Yash', 'Bansal', NULL, '2002-03-28', 'yash.bansal@email.com', '9876543304', 'Jaipur', 3),
('Poonam', 'Malik', 'Female', '2001-10-06', NULL, NULL, 'Bengaluru', 4),
('Sameer', 'Gandhi', 'Male', '2003-01-13', NULL, '9876543306', 'Kolkata', 5),
('Megha', 'Kohli', 'Female', '2002-07-19', 'megha.kohli@email.com', NULL, 'Hyderabad', 1),
('Vikas', 'Mishra', 'Male', '2001-09-05', NULL, '9876543308', 'Delhi', 2),
('Rashmi', 'Chawla', 'Female', '2000-10-22', 'rashmi.chawla@email.com', NULL, 'Mumbai', 3),
('Saurabh', 'Thakur', 'Male', '2002-12-15', NULL, NULL, 'Kolkata', 4),
('Meenakshi', 'Dhar', 'Female', '2001-07-18', NULL, '9876543311', 'Jaipur', 5),
('Dev', 'Joshi', 'Male', '2003-04-09', 'dev.joshi@email.com', NULL, NULL, 1),
('Sonia', 'Mathew', 'Female', '2000-03-30', NULL, NULL, 'Bengaluru', 2),
('Harpreet', 'Singh', 'Male', '2001-11-02', 'harpreet.singh@email.com', '9876543314', 'Chennai', 3),
('Ankita', 'Bose', 'Female', '2002-05-26', NULL, '9876543315', 'Hyderabad', 4),
('Prakash', 'Shekhar', NULL, '2000-08-15', NULL, NULL, 'Delhi', 5),
('Farah', 'Khan', 'Female', '2001-02-12', 'farah.khan@email.com', NULL, 'Ahmedabad', 1),
('Rajesh', 'Goyal', 'Male', '2003-06-21', NULL, '9876543318', 'Pune', 2),
('Shilpa', 'Pillai', 'Female', '2000-09-10', NULL, NULL, 'Jaipur', 3),
('Nirmal', 'Pathak', 'Male', '2001-01-25', 'nirmal.pathak@email.com', '9876543320', NULL, 4),
('Deepika', 'Yadav', 'Female', '2002-03-14', NULL, NULL, 'Bengaluru', 5),
('Ashwin', 'Kulkarni', 'Male', '2000-12-08', NULL, '9876543322', 'Mumbai', 1),
('Neelam', 'Sharma', 'Female', '2001-05-02', NULL, NULL, 'Kolkata', 2),
('Pranav', 'Sethi', 'Male', '2003-10-04', 'pranav.sethi@email.com', '9876543324', 'Hyderabad', 3),
('Bhavna', 'Kapoor', 'Female', '2002-07-22', NULL, '9876543325', NULL, 4),
('Lokesh', 'Verma', 'Male', '2001-04-11', NULL, NULL, 'Delhi', 5),
('Chitra', 'Menon', 'Female', '2000-06-06', 'chitra.menon@email.com', '9876543327', 'Ahmedabad', 1),
('Suraj', 'Bedi', 'Male', '2002-08-27', NULL, '9876543328', 'Pune', 2),
('Kalyani', 'Nair', 'Female', '2001-12-31', NULL, NULL, 'Jaipur', 3),
('Imran', 'Shaikh', 'Male', '2000-09-17', 'imran.shaikh@email.com', NULL, 'Bengaluru', 4),
('Priti', 'Sinha', 'Female', '2003-01-08', NULL, '9876543331', 'Hyderabad', 5),
('Satish', 'Mishra', 'Male', '2002-05-29', NULL, NULL, NULL, 1),
('Renu', 'Jadhav', 'Female', '2001-03-04', 'renu.jadhav@email.com', '9876543333', 'Mumbai', 2),
('Abdul', 'Rahman', 'Male', '2000-11-16', NULL, NULL, 'Kolkata', 3),
('Sunita', 'Bansal', 'Female', '2002-09-25', NULL, '9876543335', 'Delhi', 4),
('Rohan', 'Pillai', 'Male', '2001-07-01', 'rohan.pillai@email.com', NULL, 'Bengaluru', 5),
('Geeta', 'Chopra', 'Female', '2003-02-19', NULL, '9876543337', 'Ahmedabad', 1);


USE School_DB_Joins;
select * from Students;
select * from Courses;


-- 1️ INNER JOIN (5 Questions)
-- 1. Display Student FirstName, LastName, CourseName for all students with a matching course.
select s.FirstName, s.LastName , c.CourseName  from Students s
inner join Courses c
on s.CourseID = c.CourseID;

-- 2. Show StudentID, Full Name, CourseName, and Fees for all students whose course fee is greater than 13000.
select s.StudentID, s.FirstName + ' ' + s.LastName as full_name , c.CourseName , c.Fees from Students s
inner join Courses c
on s.CourseID = c.CourseID
where c.Fees > 13000;

-- 3. List all students born after 2002 along with their CourseName.
select s.* , c.CourseName from Students s
inner join Courses c
on s.CourseID = c.CourseID
where s.DOB > '2002-01-01';

-- 4. Find the count of students enrolled in each course.
select c.CourseName, count(*) total_students from Students s
inner join Courses c
on s.CourseID = c.CourseID
group by c.CourseName;

-- 5. Display all students whose CourseName contains 'Computer Science'.
select s.*, c.CourseName from Students s
inner join Courses c
on s.CourseID = c.CourseID
where c.CourseName like '%Science%';


-- 2️ LEFT JOIN (5 Questions)
-- 1. List all students and their CourseName (show NULL if no course assigned).
select s.* , c.CourseName from  Students s
left join Courses c
on s.CourseID = c.CourseID;

-- 2. Show students who do not have any course assigned.
select s.FirstName ,s.LastName  from Students s
left join Courses c
on s.CourseID = c.CourseID
where c.CourseID is null;

-- 3. Display all students and their course fees (NULL if no course assigned).
select s.FirstName, s.LastName ,c.Fees from Students s
left join Courses c
on s.CourseID = c.CourseID;

-- 4. List all students with their course duration (NULL if not enrolled in a course).
select s.FirstName, s.LastName, c.DurationMonths from Students s
left join Courses c
on s.CourseID = c.CourseID;

-- 5. Find the total students for each course including those with no students.
select c.CourseName , count(s.StudentID) total_students from Students s
left join Courses c
on s.CourseID = c.CourseID
group by c.CourseName;

-- 3️ RIGHT JOIN (5 Questions)
-- 1. List all courses and the students enrolled in them.
select c.CourseName , s.FirstName, s.LastName from Students s
right join Courses c
on s.CourseID = c.CourseID;

-- 2. Show courses with no students.
select c.CourseName  from Students s
right join Courses c
on s.CourseID = c.CourseID
where s.StudentID is null;


-- 3. Display course name and average age of enrolled students.
select c.CourseName, avg(DateDiff(Year, s.DOB, GETDATE())) avg_age from Students s
right join Courses c
on s.CourseID = c.CourseID
group by c.CourseName;


-- 4. Show all course names and their fees even if no student is enrolled.
select c.CourseName, c.Fees ,s.FirstName ,s.LastName from Students s
right join Courses c
on s.CourseID = c.CourseID;

-- 5. List courses that start after '2025-02-01' and the students in them.
SELECT c.CourseName, s.FirstName, s.LastName
FROM Students s
RIGHT JOIN Courses c 
ON s.CourseID = c.CourseID
WHERE c.StartDate > '2025-02-01';

-- 4️ FULL OUTER JOIN (5 Questions)
-- 1. Show all students and all courses (match if possible, else show NULL).
select s.FirstName, s.LastName ,c.CourseName from Students s
full outer join Courses c
on s.CourseID = c.CourseID;

-- 2. Find students without a course and courses without students.
select s.FirstName , s.LastName ,c.CourseName  from Students s
full join Courses c
on s.CourseID = c.CourseID
where s.CourseID is null or c.CourseID is null;

-- 3. Show all students and their course fees (NULL if no match).
SELECT s.FirstName, s.LastName, c.Fees
FROM Students s
FULL OUTER JOIN Courses c 
ON s.CourseID = c.CourseID;

-- 4. Display all course names and student DOBs (NULL where missing).
select c.CourseName, s.DOB  from Students s
full outer join Courses c
on s.CourseID = c.CourseID;

-- 5. List every possible student–course match including unmatched records.
select s.StudentID , s.FirstName ,s.LastName ,c.CourseName from Students s
full outer join Courses c
on s.CourseID = c.CourseID;


-- 5️ CROSS JOIN (5 Questions)
-- 1. Show every combination of student and course.
select s.FirstName , s.LastName , c.CourseName from Students s
cross join Courses c;

-- 2. List all possible pairs of StudentID and CourseID.
select s.StudentID , c.CourseID  from Students s
cross join Courses c;

-- 3. Show all combinations where course fee > 13000.
select s.FirstName , s.LastName , c.Fees  from Students s
cross join Courses c
where c.Fees > 13000;

-- 4. Display all student names with all course durations.
select s.FirstName , s.LastName ,c.DurationMonths from Students s
cross join Courses c

-- 5. Find total combinations possible between students and courses.
select count(*) totalcombinations  from Students s
cross join Courses c;


-- 6️ SELF JOIN (5 Questions)
-- 1. Find pairs of students living in the same city (Address not NULL).
SELECT a.FirstName AS Student1, b.FirstName AS Student2, a.Address
FROM Students a
JOIN Students b ON a.Address = b.Address
WHERE a.StudentID < b.StudentID AND a.Address IS NOT NULL;

-- 2. List pairs of students enrolled in the same course.
SELECT a.FirstName AS Student1, b.FirstName AS Student2, a.CourseID
FROM Students a
JOIN Students b ON a.CourseID = b.CourseID
WHERE a.StudentID < b.StudentID;

-- 3. Find students who share the same birth year.
SELECT a.FirstName, b.FirstName, YEAR(a.DOB) AS BirthYear
FROM Students a
JOIN Students b ON YEAR(a.DOB) = YEAR(b.DOB)
WHERE a.StudentID < b.StudentID;

-- 4. Show all students and their "course mates".
SELECT a.FirstName, b.FirstName AS CourseMate
FROM Students a
JOIN Students b ON a.CourseID = b.CourseID
WHERE a.StudentID <> b.StudentID;

-- 5. Find students with the same first name.
SELECT a.FirstName, a.LastName, b.LastName AS OtherLastName
FROM Students a
JOIN Students b ON a.FirstName = b.FirstName
WHERE a.StudentID < b.StudentID;
