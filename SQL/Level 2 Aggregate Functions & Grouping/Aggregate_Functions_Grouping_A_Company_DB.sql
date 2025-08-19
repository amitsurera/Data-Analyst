CREATE DATABASE Aggregate_Functions_Grouping_A_Company_DB;

USE Aggregate_Functions_Grouping_A_Company_DB;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Department VARCHAR(50),
    JobTitle VARCHAR(50),
    Salary DECIMAL(10, 2),
    Bonus DECIMAL(10, 2),
    JoinDate DATE,
    ExperienceYears INT,
    WorkingHoursPerWeek INT,
    EducationLevel VARCHAR(50),
    Country VARCHAR(50),
    ManagerID INT
);


INSERT INTO Employees VALUES
(1, 'Amit', 'Sharma', 30, 'Male', 'IT', 'Developer', 60000, 5000, '2019-04-15', 5, 40, 'B.Tech', 'India', 101),
(2, 'Priya', 'Verma', 28, 'Female', 'HR', 'HR Executive', 45000, 2000, '2020-03-12', 3, 38, 'MBA', 'India', 102),
(3, 'John', 'Doe', NULL, 'Male', 'Finance', 'Analyst', 55000, NULL, '2018-01-20', 6, 42, 'M.Com', 'USA', 103),
(4, 'Sara', 'Khan', 35, 'Female', 'Sales', 'Sales Lead', 70000, 8000, '2017-07-10', 8, NULL, 'MBA', 'India', 104),
(5, 'David', 'Lee', 40, 'Male', 'IT', 'Manager', 90000, 10000, '2015-05-01', 10, 45, 'M.Tech', 'Canada', NULL),
(6, 'Anjali', 'Patel', 26, 'Female', 'Marketing', 'Executive', 40000, 1500, '2021-09-01', 2, 36, 'BBA', 'India', 102),
(7, 'Mike', 'Smith', 38, 'Male', 'Finance', 'Manager', 85000, 7000, '2016-11-22', 9, 48, 'MBA', 'USA', NULL),
(8, 'Ravi', 'Singh', 29, 'Male', 'Sales', 'Executive', 48000, 2500, '2022-01-18', 3, 40, 'B.Com', 'India', 104),
(9, 'Sneha', 'Rao', 32, 'Female', 'HR', 'Manager', 75000, NULL, '2014-06-30', 11, 39, 'MBA', 'India', NULL),
(10, 'Tom', 'Brown', 34, 'Male', 'IT', 'Developer', 62000, 4500, '2019-10-15', 5, NULL, 'B.Tech', 'UK', 101),
(11, 'Neha', 'Mehta', 27, 'Female', 'Finance', 'Analyst', 54000, 3000, '2020-05-23', 4, 40, 'CA', 'India', 103),
(12, 'Jason', 'Taylor', 31, 'Male', 'Sales', 'Executive', 50000, 4000, '2018-08-14', 6, 44, 'BBA', 'USA', 104),
(13, 'Alok', 'Yadav', 33, 'Male', 'IT', 'Developer', 58000, 4200, '2017-03-27', 7, 41, 'B.Tech', 'India', 101),
(14, 'Pooja', 'Joshi', NULL, 'Female', 'HR', 'Executive', 46000, 1800, '2021-01-19', 2, 37, 'MBA', 'India', 102),
(15, 'George', 'Hill', 36, 'Male', 'Marketing', 'Manager', 82000, 6000, '2016-02-11', 9, 45, 'MBA', 'UK', NULL),
(16, 'Kavita', 'Kumar', 30, 'Female', 'Finance', 'Clerk', 38000, 1000, '2022-07-01', 1, 35, 'B.Com', 'India', 103),
(17, 'Alex', 'Martin', 39, 'Male', 'Sales', 'Lead', 72000, 8500, '2015-10-05', 10, 46, 'MBA', 'Canada', 104),
(18, 'Maya', 'Sen', 29, 'Female', 'IT', 'Tester', 56000, 3200, '2019-08-08', 4, 39, 'B.Sc', 'India', 101),
(19, 'Chris', 'Evans', 37, 'Male', 'Marketing', 'Executive', 46000, 2000, '2018-04-16', 6, 43, 'MBA', 'USA', 105),
(20, 'Tanvi', 'Nair', 28, 'Female', 'HR', 'Clerk', 42000, NULL, '2020-11-25', 3, 38, 'BBA', 'India', 102),
(21, 'Rahul', 'Kapoor', 31, 'Male', 'Finance', 'Analyst', 57000, 3300, '2019-06-18', 5, 40, 'CA', 'India', 103),
(22, 'Lucy', 'Thomas', 34, 'Female', 'Sales', 'Executive', 51000, 3900, '2016-12-01', 7, 42, 'BBA', 'UK', 104),
(23, 'Vikas', 'Chopra', 35, 'Male', 'IT', 'Developer', 63000, 4600, '2017-09-09', 8, 44, 'B.Tech', 'India', 101),
(24, 'Nisha', 'Pandey', 26, 'Female', 'HR', 'Executive', 47000, 1900, '2021-04-10', 2, 36, 'MBA', 'India', 102),
(25, 'Peter', 'Parker', 38, 'Male', 'Marketing', 'Manager', 86000, 7000, '2015-03-15', 10, 47, 'MBA', 'USA', NULL),
(26, 'Meena', 'Jain', 32, 'Female', 'Finance', 'Manager', 79000, NULL, '2016-07-23', 9, 43, 'CA', 'India', NULL),
(27, 'Steve', 'Rogers', 40, 'Male', 'Sales', 'Lead', 75000, 8200, '2014-05-06', 11, NULL, 'MBA', 'USA', 104),
(28, 'Ankita', 'Das', 29, 'Female', 'IT', 'Tester', 55000, 3100, '2020-02-17', 3, 39, 'B.Sc', 'India', 101),
(29, 'Raj', 'Malhotra', 33, 'Male', 'Marketing', 'Executive', 47000, 2100, '2019-12-10', 4, 40, 'MBA', 'India', 105),
(30, 'Emily', 'White', 27, 'Female', 'HR', 'Clerk', 44000, 1600, '2022-06-11', 1, 35, 'BBA', 'UK', 102),
(31, 'Harsh', 'Trivedi', 34, 'Male', 'Finance', 'Clerk', 39000, 1100, '2020-01-01', 4, 39, 'B.Com', 'India', 103),
(32, 'Aisha', 'Ali', 30, 'Female', 'Marketing', 'Executive', 47000, NULL, '2019-03-15', 5, 38, 'MBA', 'UAE', 105),
(33, 'Manoj', 'Bansal', 37, 'Male', 'Sales', 'Executive', 52000, 4300, '2017-07-21', 8, 44, 'BBA', 'India', 104),
(34, 'Kiran', 'Kaur', NULL, 'Female', 'HR', 'Manager', 76000, 6000, '2016-10-10', 9, 40, 'MBA', 'India', NULL),
(35, 'James', 'King', 42, 'Male', 'IT', 'Architect', 95000, 12000, '2013-12-01', 12, 46, 'M.Tech', 'USA', NULL),
(36, 'Deepa', 'Rani', 33, 'Female', 'Finance', 'Analyst', 58000, 3000, '2018-09-11', 6, NULL, 'CA', 'India', 103),
(37, 'Ramesh', 'Nair', 29, 'Male', 'IT', 'Tester', 54000, 2800, '2021-05-19', 3, 37, 'B.Sc', 'India', 101),
(38, 'Sunita', 'Pillai', 36, 'Female', 'HR', 'Executive', 45000, NULL, '2015-04-05', 10, 39, 'MBA', 'India', 102),
(39, 'Victor', 'Chen', 40, 'Male', 'Marketing', 'Manager', 87000, 7300, '2014-08-17', 11, 48, 'MBA', 'Singapore', NULL),
(40, 'Neeraj', 'Garg', 31, 'Male', 'Finance', 'Manager', 81000, 6700, '2016-01-28', 9, 42, 'CA', 'India', NULL),
(41, 'Fatima', 'Sheikh', 28, 'Female', 'Sales', 'Executive', 50000, 3100, '2022-03-03', 2, 41, 'BBA', 'India', 104),
(42, 'Suresh', 'Menon', 39, 'Male', 'IT', 'Developer', 62000, 4100, '2015-05-10', 10, 43, 'B.Tech', 'India', 101),
(43, 'Anita', 'Shah', 35, 'Female', 'Marketing', 'Executive', 49000, 2600, '2017-06-06', 8, 40, 'MBA', 'India', 105),
(44, 'Daniel', 'Costa', 30, 'Male', 'Sales', 'Lead', 74000, 8000, '2019-11-11', 5, NULL, 'MBA', 'Brazil', 104),
(45, 'Reena', 'Kapadia', 27, 'Female', 'Finance', 'Clerk', 40000, 1200, '2021-07-21', 2, 36, 'B.Com', 'India', 103),
(46, 'Ali', 'Zafar', NULL, 'Male', 'HR', 'Executive', 47000, 1900, '2020-09-30', 3, 37, 'MBA', 'Pakistan', 102),
(47, 'Nikhil', 'Joshi', 34, 'Male', 'IT', 'Developer', 60000, 4300, '2018-05-17', 6, 40, 'B.Tech', 'India', 101),
(48, 'Shruti', 'Desai', 30, 'Female', 'Marketing', 'Executive', 48000, 2500, '2020-02-10', 4, 39, 'MBA', 'India', 105),
(49, 'Tommy', 'Nguyen', 33, 'Male', 'Finance', 'Analyst', 56000, 3500, '2017-04-22', 7, 41, 'CA', 'Vietnam', 103),
(50, 'Kritika', 'Malik', 29, 'Female', 'HR', 'Clerk', 43000, NULL, '2022-01-01', 1, 35, 'BBA', 'India', 102),
(51, 'Sanjay', 'Verma', 38, 'Male', 'Sales', 'Lead', 77000, 8500, '2016-03-15', 9, 45, 'MBA', 'India', 104),
(52, 'Aarav', 'Shah', 26, 'Male', 'IT', 'Tester', 53000, 2700, '2022-05-05', 2, 37, 'B.Sc', 'India', 101),
(53, 'Ritu', 'Yadav', 32, 'Female', 'Marketing', 'Executive', 50000, 2900, '2018-08-25', 5, 40, 'MBA', 'India', 105),
(54, 'Mohit', 'Goyal', 31, 'Male', 'Finance', 'Clerk', 42000, 1300, '2020-04-12', 3, NULL, 'B.Com', 'India', 103),
(55, 'Linda', 'Brown', 36, 'Female', 'Sales', 'Executive', 51000, 3000, '2016-06-08', 8, 43, 'BBA', 'USA', 104),
(56, 'Arjun', 'Seth', 30, 'Male', 'IT', 'Developer', 59000, 3900, '2019-07-14', 5, 41, 'B.Tech', 'India', 101),
(57, 'Naina', 'Bose', 28, 'Female', 'HR', 'Executive', 45000, 1700, '2021-11-01', 2, 36, 'MBA', 'India', 102),
(58, 'Kevin', 'Patel', 33, 'Male', 'Marketing', 'Manager', 83000, 6900, '2015-09-09', 10, 44, 'MBA', 'Canada', NULL),
(59, 'Sakshi', 'Chawla', 30, 'Female', 'Finance', 'Analyst', 55000, 3200, '2019-01-18', 4, 39, 'CA', 'India', 103),
(60, 'Aditya', 'Bhatia', 29, 'Male', 'IT', 'Tester', 54000, 3000, '2020-06-20', 3, 38, 'B.Sc', 'India', 101),
(61, 'Mehul', 'Saxena', 35, 'Male', 'Finance', 'Analyst', 57000, 3300, '2018-03-10', 6, 40, 'CA', 'India', 103),
(62, 'Isha', 'Kale', 30, 'Female', 'Marketing', 'Executive', 49000, 2700, '2019-08-22', 5, 38, 'MBA', 'India', 105),
(63, 'Zaid', 'Ahmed', 28, 'Male', 'IT', 'Tester', 53000, 2900, '2021-10-05', 2, 36, 'B.Sc', 'India', 101),
(64, 'Monica', 'Gill', 29, 'Female', 'HR', 'Executive', 46000, 1600, '2020-02-28', 3, 37, 'MBA', 'India', 102),
(65, 'Kabir', 'Sheikh', 34, 'Male', 'Sales', 'Lead', 73000, 8100, '2017-05-12', 7, 44, 'MBA', 'India', 104),
(66, 'Divya', 'Bhatnagar', 32, 'Female', 'Finance', 'Clerk', 41000, 1400, '2019-06-30', 4, 39, 'B.Com', 'India', 103),
(67, 'Jatin', 'Grover', 36, 'Male', 'IT', 'Developer', 61000, 4000, '2016-10-10', 8, 42, 'B.Tech', 'India', 101),
(68, 'Preeti', 'Soni', NULL, 'Female', 'HR', 'Clerk', 43000, NULL, '2021-12-01', 2, 35, 'BBA', 'India', 102),
(69, 'Arman', 'Khan', 33, 'Male', 'Marketing', 'Executive', 47000, 2600, '2018-07-07', 5, NULL, 'MBA', 'India', 105),
(70, 'Kriti', 'Mishra', 27, 'Female', 'Sales', 'Executive', 50000, 2800, '2020-09-18', 3, 39, 'BBA', 'India', 104),
(71, 'Yash', 'Deshmukh', 31, 'Male', 'IT', 'Tester', 55000, 3100, '2019-11-25', 4, 40, 'B.Sc', 'India', 101),
(72, 'Tanya', 'Kapoor', 30, 'Female', 'Finance', 'Analyst', 56000, 3000, '2018-04-20', 5, 38, 'CA', 'India', 103),
(73, 'Naveen', 'Reddy', 39, 'Male', 'Marketing', 'Manager', 85000, 7500, '2015-08-08', 10, 45, 'MBA', 'India', NULL),
(74, 'Simran', 'Arora', 29, 'Female', 'HR', 'Executive', 44000, 1700, '2020-11-11', 3, 37, 'MBA', 'India', 102),
(75, 'Pranav', 'Mehta', 33, 'Male', 'IT', 'Developer', 62000, 4100, '2017-01-03', 6, 41, 'B.Tech', 'India', 101),
(76, 'Namrata', 'Verma', 31, 'Female', 'Finance', 'Clerk', 42000, 1500, '2021-06-16', 2, 36, 'B.Com', 'India', 103),
(77, 'Vikram', 'Joshi', 37, 'Male', 'Sales', 'Lead', 76000, 8200, '2014-04-04', 11, 46, 'MBA', 'India', 104),
(78, 'Ayesha', 'Syed', 26, 'Female', 'Marketing', 'Executive', 48000, 2300, '2022-02-14', 1, 34, 'MBA', 'India', 105),
(79, 'Ankur', 'Rawat', 34, 'Male', 'IT', 'Developer', 60000, 3900, '2016-12-09', 9, 43, 'B.Tech', 'India', 101),
(80, 'Roshni', 'Rao', 28, 'Female', 'HR', 'Executive', 46000, 1800, '2019-05-23', 4, 37, 'MBA', 'India', 102),
(81, 'Tarun', 'Gill', 32, 'Male', 'Finance', 'Analyst', 58000, 3100, '2017-03-18', 7, 41, 'CA', 'India', 103),
(82, 'Swati', 'Singh', 30, 'Female', 'Sales', 'Executive', 49000, 2700, '2021-10-01', 2, 38, 'BBA', 'India', 104),
(83, 'Nikhil', 'Bansal', NULL, 'Male', 'IT', 'Tester', 53000, 2500, '2020-07-07', 3, 39, 'B.Sc', 'India', 101),
(84, 'Payal', 'Chauhan', 31, 'Female', 'Marketing', 'Executive', 47000, 2400, '2019-02-02', 5, 36, 'MBA', 'India', 105),
(85, 'Zara', 'Shaikh', 29, 'Female', 'HR', 'Clerk', 42000, NULL, '2022-03-19', 1, 35, 'BBA', 'India', 102),
(86, 'Amit', 'Desai', 40, 'Male', 'Finance', 'Manager', 80000, 6800, '2014-10-17', 11, 47, 'CA', 'India', NULL),
(87, 'Tanisha', 'Jain', 30, 'Female', 'IT', 'Developer', 61000, 3900, '2018-06-12', 6, 42, 'B.Tech', 'India', 101),
(88, 'Kunal', 'Kapoor', 36, 'Male', 'Sales', 'Lead', 75000, 8000, '2016-01-09', 9, 44, 'MBA', 'India', 104),
(89, 'Neelam', 'Reddy', 33, 'Female', 'Marketing', 'Executive', 49000, 2800, '2017-09-30', 7, 41, 'MBA', 'India', 105),
(90, 'Ashok', 'Varma', 35, 'Male', 'Finance', 'Clerk', 43000, 1200, '2020-01-20', 3, 38, 'B.Com', 'India', 103);



USE Aggregate_Functions_Grouping_A_Company_DB;

select * from Employees;


-- ✅ 1. COUNT(), SUM(), AVG(), MIN(), MAX() – (10 Questions)
-- 1. Count the total number of employees in the Employees table.
select COUNT(*) total_employees from Employees;

-- 2. Find the total salary paid to all employees.
select  sum(e.Salary) total_salary_employees from Employees e;

-- 3. Calculate the average age of all employees.
select avg(e.age) average_age_all_employees from Employees e;

-- 4. Get the highest bonus received by any employee.
select max(e.Bonus) highest_bonus  from Employees e;

-- 5. Get the lowest salary among all employees.
select min(e.salary) lowest_salry from Employees e;

-- 6. Count how many employees are in the "IT" department.
select count(*) IT_employees from Employees e
where e.Department = 'IT';

-- 7. Calculate the sum of salaries for employees in the "Sales" department.
select sum(e.Salary) Sales_salary from Employees e
where e.Department = 'Sales';

-- 8. Find the average number of WorkingHoursPerWeek.
select avg(e.WorkingHoursPerWeek) avg_workingHoursPerweek from Employees e;

-- 9. Count how many employees have NULL in the Bonus column.
select count(*) total_null_Value_bouns from Employees e
where e.Bonus is null;

-- 10. Find the maximum years of experience among all employees.
select max(e.ExperienceYears) maxmium_years_experience from Employees e;


-- ✅ 2. GROUP BY – (10 Questions)
-- 1. Count the number of employees in each Department.
select e.Department, count(*) total_employees_department  from Employees e
group by e.Department;

-- 2. Calculate the average salary for each Department.
select e.Department, AVG(e.Salary) avg_salary from Employees e
group by e.Department;

-- 3. Show the total bonus paid in each Department.
select e.Department , sum(e.Bonus) total_bonus from Employees e
group by e.Department;

-- 4. Count how many employees there are for each JobTitle.
select e.JobTitle, count(*) total_JobTitle from Employees e
group by e.JobTitle;

-- 5. Display the minimum salary for each Country.
select e.Country , min(e.Salary) min_salary  from Employees e
group by e.Country;

-- 6. Find the total number of employees grouped by EducationLevel.
select e.EducationLevel, count(*) total_EducationLevel from Employees e
group by e.EducationLevel;

-- 7. Get the average age of employees in each Department.
select e.Department,avg(e.Age) avg_employees from Employees e
group by e.Department;

-- 8. Count male and female employees in each Department.
select e.Department,e.Gender, count(e.Gender) total_employees  from Employees e
group by e.Gender, e.Department;

-- 9. Show the average experience of employees grouped by JobTitle.
select e.JobTitle,avg(e.ExperienceYears) avg_experience from Employees e
group by e.JobTitle;

-- 10. Count how many employees report to each ManagerID.
select e.ManagerID, count(*) total_employees from Employees e
group by e.ManagerID;

-- ✅ 3. HAVING Clause – (10 Questions)
-- 1. Show departments that have more than 5 employees.
select e.Department, count(*)  from Employees e
group by e.Department
having count(*) > 5;

-- 2. Display departments where the average salary is more than ₹60,000.
select e.Department , avg(e.Salary) avg_salary from Employees e
group by e.Department
having avg(e.Salary) > 60000;

-- 3. Find job titles that have more than 3 employees.
select e.JobTitle, count(*) total_employees from Employees e
group by e.JobTitle
having count(*) > 3;

-- 4. List countries where the total bonus paid is greater than ₹15,000.
select e.Country , sum(e.Bonus) total_bonus from Employees e
group by e.Country
having sum(e.Bonus) > 15000;

-- 5. Show manager IDs who have more than 4 employees reporting to them.
select e.ManagerID, count(*) total_employees from Employees e
group by e.ManagerID
having count(*) > 4;

-- 6. Display departments with total salary less than ₹300,000.
select e.Department, sum(e.Salary) total_salary from Employees e
group by e.Department
having sum(e.Salary) > 300000;


-- 7. Show job titles where the maximum experience is greater than 8 years.
select e.JobTitle, max(e.ExperienceYears) total_experience from Employees e
group by e.JobTitle
having max(e.ExperienceYears) > 8;

-- 8. List education levels with more than 10 employees.
select e.EducationLevel , count(*) total_employees from Employees e
group by e.EducationLevel
having count(*) > 10;

-- 9. Find departments where the average bonus is less than ₹3,000.
select e.Department , avg(e.Bonus) avg_bonus from Employees e
group by e.Department
having avg(e.Bonus) > 3000;

-- 10. Display countries where the average working hours are greater than 40.
select e.Country, avg(e.WorkingHoursPerWeek) avg_hours from Employees e
group by e.Country
having avg(e.WorkingHoursPerWeek) > 40;
