CREATE DATABASE Basic_A_Company_DB;

USE Basic_A_Company_DB;


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    department VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    hire_date DATE,
    dob DATE,
    gender CHAR(1),
    address VARCHAR(255),
    manager_id INT,
    status VARCHAR(20)
);


INSERT INTO employees VALUES
(1, 'Amit', 'Surera', 'amit.s@example.com', '9876543210', 'IT', 'Developer', 60000, 5000, '2020-01-15', '1995-04-10', 'M', 'Delhi', NULL, 'Active'),
(2, 'Ravi', 'Patel', 'ravi.p@example.com', '9876543211', 'HR', 'HR Manager', 75000, 8000, '2018-03-22', '1988-12-25', 'M', 'Mumbai', 1, 'Active'),
(3, 'Sneha', 'Mehta', NULL, '9876543212', 'Finance', 'Analyst', 55000, NULL, '2019-07-01', '1992-06-18', 'F', 'Bangalore', 2, 'Active'),
(4, 'Nikita', 'Singh', 'nikita.s@example.com', '9876543213', 'Sales', 'Sales Rep', 50000, 3000, '2021-11-10', '1997-09-05', 'F', 'Chennai', 2, 'Active'),
(5, 'Arun', 'Verma', 'arun.v@example.com', NULL, 'IT', 'Tester', 45000, 2000, '2020-02-25', '1994-02-15', 'M', 'Pune', 1, 'Active'),
(6, 'Kiran', 'Desai', 'kiran.d@example.com', '9876543215', 'Marketing', 'Executive', 52000, 2500, '2022-04-18', '1996-03-12', 'F', NULL, 3, 'Active'),
(7, 'Vikas', 'Sharma', NULL, '9876543216', 'Finance', 'Manager', 80000, 10000, '2017-05-20', '1985-08-30', 'M', 'Kolkata', NULL, 'Active'),
(8, 'Sonal', 'Kapoor', 'sonal.k@example.com', '9876543217', 'Sales', 'Lead', 70000, 7000, '2019-08-14', '1990-01-01', 'F', 'Ahmedabad', 4, 'Active'),
(9, 'Pankaj', 'Jain', 'pankaj.j@example.com', '9876543218', 'IT', 'Developer', 62000, NULL, '2020-10-10', '1993-11-20', 'M', 'Delhi', 1, 'Active'),
(10, 'Ruchi', 'Gupta', 'ruchi.g@example.com', NULL, 'HR', 'Recruiter', 48000, 2000, '2021-01-01', '1998-05-15', 'F', 'Mumbai', 2, 'Active'),
(11, 'Yash', 'Thakur', 'yash.t@example.com', '9876543220', 'Finance', 'Analyst', 57000, 2500, '2019-06-25', '1991-07-22', 'M', NULL, 3, 'Active'),
(12, 'Neha', 'Joshi', 'neha.j@example.com', '9876543221', 'Marketing', 'Executive', 53000, 2200, '2020-09-09', '1994-04-10', 'F', 'Chandigarh', 6, 'Active'),
(13, 'Rohan', 'Kapadia', NULL, '9876543222', 'IT', 'Tester', 46000, 1800, '2022-02-15', '1996-10-01', 'M', 'Hyderabad', 1, 'Active'),
(14, 'Swati', 'Reddy', 'swati.r@example.com', '9876543223', 'Sales', 'Sales Rep', 49000, 2100, '2021-03-03', '1997-02-28', 'F', 'Chennai', 4, 'Active'),
(15, 'Tarun', 'Gill', 'tarun.g@example.com', '9876543224', 'IT', 'Developer', 61000, 4000, '2020-05-05', '1995-09-15', 'M', NULL, 1, 'Active'),
(16, 'Divya', 'Agarwal', 'divya.a@example.com', NULL, 'HR', 'Coordinator', 47000, 2000, '2021-06-12', '1996-01-30', 'F', 'Delhi', 2, 'Active'),
(17, 'Raj', 'Malhotra', 'raj.m@example.com', '9876543226', 'Finance', 'Clerk', 43000, NULL, '2023-01-10', '1999-03-18', 'M', 'Bhopal', 3, 'Active'),
(18, 'Nisha', 'Shah', NULL, '9876543227', 'Marketing', 'Executive', 50000, 2500, '2022-07-01', '1998-08-22', 'F', 'Surat', 6, 'Active'),
(19, 'Manoj', 'Kumar', 'manoj.k@example.com', '9876543228', 'Sales', 'Lead', 68000, 6500, '2020-03-03', '1992-12-10', 'M', 'Jaipur', 4, 'Active'),
(20, 'Tina', 'Bansal', 'tina.b@example.com', NULL, 'IT', 'Developer', 60000, NULL, '2021-09-09', '1994-05-20', 'F', 'Delhi', 1, 'Active'),
(21, 'Deepak', 'Sharma', 'deepak.s@example.com', '9876543230', 'HR', 'HR Manager', 75000, 7000, '2019-04-25', '1989-06-15', 'M', 'Mumbai', 2, 'Active'),
(22, 'Ankita', 'Verma', NULL, '9876543231', 'Finance', 'Analyst', 58000, 2600, '2020-10-20', '1995-12-01', 'F', 'Pune', 3, 'Active'),
(23, 'Mohit', 'Goyal', 'mohit.g@example.com', '9876543232', 'IT', 'Tester', 47000, 1900, '2022-01-11', '1996-07-07', 'M', 'Noida', 1, 'Active'),
(24, 'Shreya', 'Deshmukh', 'shreya.d@example.com', NULL, 'Sales', 'Sales Rep', 49000, 2200, '2021-07-15', '1997-04-12', 'F', 'Nagpur', 4, 'Active'),
(25, 'Alok', 'Tripathi', 'alok.t@example.com', '9876543234', 'IT', 'Developer', 62000, 3500, '2020-08-08', '1993-10-20', 'M', 'Lucknow', 1, 'Active'),
(26, 'Bhavna', 'Jain', NULL, '9876543235', 'Marketing', 'Executive', 54000, 2300, '2022-06-06', '1996-09-25', 'F', NULL, 6, 'Active'),
(27, 'Gaurav', 'Khanna', 'gaurav.k@example.com', '9876543236', 'Finance', 'Manager', 82000, 9000, '2018-12-01', '1987-02-18', 'M', 'Delhi', NULL, 'Active'),
(28, 'Meena', 'Iyer', 'meena.i@example.com', '9876543237', 'Sales', 'Lead', 69000, 6700, '2020-11-11', '1991-11-11', 'F', 'Chennai', 4, 'Active'),
(29, 'Ajay', 'Rana', 'ajay.r@example.com', NULL, 'IT', 'Developer', 60000, 3300, '2021-04-04', '1994-07-07', 'M', 'Delhi', 1, 'Active'),
(30, 'Kajal', 'Shinde', 'kajal.s@example.com', '9876543239', 'HR', 'Recruiter', 49000, NULL, '2022-09-09', '1998-02-20', 'F', 'Mumbai', 2, 'Active'),
(31, 'Karan', 'Mehra', 'karan.m@example.com', '9876543240', 'IT', 'Tester', 46000, 2000, '2023-02-01', '1996-03-25', 'M', 'Delhi', 1, 'Active'),
(32, 'Reena', 'Saxena', 'reena.s@example.com', NULL, 'Finance', 'Analyst', 57000, NULL, '2021-08-18', '1993-09-19', 'F', 'Mumbai', 3, 'Active'),
(33, 'Siddharth', 'Roy', NULL, '9876543242', 'HR', 'Coordinator', 48000, 2200, '2020-05-15', '1994-01-10', 'M', NULL, 2, 'Active'),
(34, 'Isha', 'Rana', 'isha.r@example.com', '9876543243', 'Marketing', 'Executive', 51000, 2100, '2022-04-10', '1995-10-12', 'F', 'Jaipur', 6, 'Active'),
(35, 'Dev', 'Joshi', 'dev.j@example.com', '9876543244', 'IT', 'Developer', 61000, 4000, '2021-06-06', '1992-12-01', 'M', 'Delhi', 1, 'Active'),
(36, 'Anjali', 'Mishra', NULL, '9876543245', 'Sales', 'Sales Rep', 50000, NULL, '2023-01-20', '1997-07-07', 'F', 'Lucknow', 4, 'Active'),
(37, 'Harsh', 'Kapoor', 'harsh.k@example.com', '9876543246', 'HR', 'HR Manager', 78000, 8500, '2019-03-01', '1989-05-05', 'M', 'Bhopal', NULL, 'Active'),
(38, 'Priya', 'Bhatia', 'priya.b@example.com', NULL, 'Finance', 'Clerk', 45000, 1500, '2020-12-10', '1998-08-20', 'F', 'Chandigarh', 3, 'Active'),
(39, 'Nitin', 'Rawat', 'nitin.r@example.com', '9876543248', 'IT', 'Tester', 47000, NULL, '2021-10-30', '1996-11-22', 'M', 'Delhi', 1, 'Active'),
(40, 'Riya', 'Ahuja', 'riya.a@example.com', '9876543249', 'Marketing', 'Executive', 52000, 2300, '2022-05-05', '1995-06-10', 'F', NULL, 6, 'Active'),
(41, 'Sameer', 'Gill', NULL, '9876543250', 'IT', 'Developer', 63000, 4500, '2020-09-09', '1993-03-03', 'M', 'Kolkata', 1, 'Active'),
(42, 'Shweta', 'Nair', 'shweta.n@example.com', '9876543251', 'HR', 'Recruiter', 49000, 1900, '2021-11-11', '1997-04-04', 'F', 'Mumbai', 2, 'Active'),
(43, 'Raghav', 'Singh', 'raghav.s@example.com', '9876543252', 'Finance', 'Analyst', 58000, 2700, '2019-06-06', '1994-07-15', 'M', 'Hyderabad', 3, 'Active'),
(44, 'Pooja', 'Thakur', 'pooja.t@example.com', '9876543253', 'Marketing', 'Executive', 53000, NULL, '2022-07-07', '1996-08-08', 'F', 'Delhi', 6, 'Active'),
(45, 'Ashish', 'Yadav', NULL, '9876543254', 'Sales', 'Sales Rep', 49000, 2100, '2021-01-15', '1995-09-09', 'M', 'Chennai', 4, 'Active'),
(46, 'Snehal', 'Desai', 'snehal.d@example.com', '9876543255', 'IT', 'Tester', 47000, 1800, '2023-03-03', '1998-12-12', 'F', 'Surat', 1, 'Active'),
(47, 'Abhishek', 'Bose', 'abhishek.b@example.com', NULL, 'Finance', 'Manager', 82000, 8800, '2018-02-02', '1986-10-10', 'M', 'Kolkata', NULL, 'Active'),
(48, 'Shruti', 'Patil', NULL, '9876543257', 'HR', 'Coordinator', 48000, 2000, '2020-05-20', '1994-11-11', 'F', 'Pune', 2, 'Active'),
(49, 'Kunal', 'Verma', 'kunal.v@example.com', '9876543258', 'IT', 'Developer', 64000, 4200, '2020-12-12', '1993-05-05', 'M', 'Delhi', 1, 'Active'),
(50, 'Pallavi', 'Kohli', 'pallavi.k@example.com', '9876543259', 'Sales', 'Lead', 70000, NULL, '2019-01-01', '1991-01-01', 'F', 'Noida', 4, 'Active'),
(51, 'Aakash', 'Chopra', 'aakash.c@example.com', NULL, 'Finance', 'Analyst', 59000, 2600, '2021-07-07', '1993-02-02', 'M', 'Delhi', 3, 'Active'),
(52, 'Jaya', 'Rathi', 'jaya.r@example.com', '9876543261', 'Marketing', 'Executive', 52000, 2200, '2022-08-08', '1997-03-03', 'F', 'Mumbai', 6, 'Active'),
(53, 'Ankur', 'Shah', NULL, '9876543262', 'IT', 'Tester', 46000, 1700, '2021-09-09', '1995-10-10', 'M', 'Ahmedabad', 1, 'Active'),
(54, 'Deepika', 'Malik', 'deepika.m@example.com', '9876543263', 'HR', 'Recruiter', 50000, NULL, '2020-04-04', '1996-04-04', 'F', 'Delhi', 2, 'Active'),
(55, 'Mayank', 'Gupta', 'mayank.g@example.com', '9876543264', 'Finance', 'Clerk', 45000, 1500, '2023-05-05', '1998-06-06', 'M', 'Pune', 3, 'Active'),
(56, 'Lavanya', 'Kapoor', NULL, '9876543265', 'Marketing', 'Executive', 54000, 2400, '2022-06-06', '1995-05-05', 'F', 'Delhi', 6, 'Active'),
(57, 'Varun', 'Rao', 'varun.r@example.com', '9876543266', 'Sales', 'Lead', 71000, 6900, '2020-07-07', '1992-07-07', 'M', 'Bangalore', 4, 'Active'),
(58, 'Aarti', 'Mundra', 'aarti.m@example.com', '9876543267', 'HR', 'HR Manager', 77000, NULL, '2019-08-08', '1988-08-08', 'F', 'Kolkata', 2, 'Active'),
(59, 'Zaid', 'Ali', 'zaid.a@example.com', NULL, 'IT', 'Developer', 65000, 4100, '2021-11-11', '1994-09-09', 'M', 'Delhi', 1, 'Active'),
(60, 'Priti', 'Narayan', NULL, '9876543269', 'Finance', 'Analyst', 60000, 3000, '2020-10-10', '1992-10-10', 'F', 'Chennai', 3, 'Active'),
(61, 'Meena', 'Chatterjee', 'meena.c@example.com', '9876543270', 'HR', 'Coordinator', 47000, 1800, '2020-03-01', '1995-03-21', 'F', 'Kolkata', 2, 'Active'),
(62, 'Rakesh', 'Yadav', NULL, '9876543271', 'IT', 'Developer', 62000, 4100, '2021-07-01', '1993-05-18', 'M', 'Delhi', 1, 'Active'),
(63, 'Tina', 'Das', 'tina.d@example.com', NULL, 'Finance', 'Analyst', 58000, 2600, '2019-09-09', '1991-12-12', 'F', NULL, 3, 'Active'),
(64, 'Manish', 'Kapoor', 'manish.k@example.com', '9876543273', 'Sales', 'Sales Rep', 50000, NULL, '2022-01-11', '1996-02-15', 'M', 'Mumbai', 4, 'Active'),
(65, 'Ritu', 'Seth', 'ritu.s@example.com', '9876543274', 'HR', 'Recruiter', 49000, 2000, '2021-10-10', '1997-03-03', 'F', 'Pune', 2, 'Active'),
(66, 'Shivam', 'Mishra', NULL, '9876543275', 'IT', 'Tester', 46000, 1900, '2020-05-05', '1994-04-04', 'M', 'Lucknow', 1, 'Active'),
(67, 'Neha', 'Kumar', 'neha.k@example.com', '9876543276', 'Finance', 'Clerk', 44000, 1600, '2023-04-04', '1996-06-06', 'F', 'Chennai', 3, 'Active'),
(68, 'Amit', 'Rana', 'amit.r@example.com', NULL, 'Marketing', 'Executive', 53000, 2200, '2021-09-01', '1995-01-01', 'M', 'Delhi', 6, 'Active'),
(69, 'Divya', 'Sen', NULL, '9876543278', 'IT', 'Developer', 63000, 4200, '2020-08-08', '1993-09-09', 'F', 'Kolkata', 1, 'Active'),
(70, 'Rohan', 'Jain', 'rohan.j@example.com', '9876543279', 'HR', 'Manager', 79000, 8500, '2018-02-02', '1988-08-08', 'M', NULL, NULL, 'Active'),
(71, 'Nidhi', 'Mehta', 'nidhi.m@example.com', '9876543280', 'Sales', 'Lead', 70000, 6500, '2019-12-01', '1991-11-11', 'F', 'Jaipur', 4, 'Active'),
(72, 'Arun', 'Joshi', 'arun.j@example.com', '9876543281', 'Finance', 'Manager', 81000, 8700, '2017-03-03', '1987-03-03', 'M', 'Delhi', NULL, 'Active'),
(73, 'Pooja', 'Arora', NULL, '9876543282', 'Marketing', 'Executive', 52000, NULL, '2022-10-10', '1995-10-10', 'F', 'Mumbai', 6, 'Active'),
(74, 'Sagar', 'Malhotra', 'sagar.m@example.com', '9876543283', 'IT', 'Developer', 65000, 4300, '2021-05-05', '1992-07-07', 'M', 'Bhopal', 1, 'Active'),
(75, 'Simran', 'Sharma', 'simran.s@example.com', NULL, 'HR', 'Coordinator', 48000, 2000, '2020-07-07', '1996-06-06', 'F', 'Kolkata', 2, 'Active'),
(76, 'Yash', 'Verma', 'yash.v@example.com', '9876543285', 'Finance', 'Analyst', 57000, 2500, '2019-05-05', '1994-05-05', 'M', 'Delhi', 3, 'Active'),
(77, 'Nikita', 'Goswami', NULL, '9876543286', 'Sales', 'Sales Rep', 49000, 2000, '2022-02-02', '1997-09-09', 'F', 'Hyderabad', 4, 'Active'),
(78, 'Rahul', 'Kashyap', 'rahul.k@example.com', '9876543287', 'IT', 'Tester', 47000, 1900, '2023-06-06', '1995-12-12', 'M', 'Delhi', 1, 'Active'),
(79, 'Tanvi', 'Dey', 'tanvi.d@example.com', '9876543288', 'Marketing', 'Executive', 54000, 2300, '2021-04-04', '1996-01-01', 'F', 'Pune', 6, 'Active'),
(80, 'Mohit', 'Srivastava', NULL, '9876543289', 'HR', 'Recruiter', 50000, NULL, '2020-06-06', '1994-04-04', 'M', 'Lucknow', 2, 'Active'),
(81, 'Komal', 'Bansal', 'komal.b@example.com', '9876543290', 'IT', 'Developer', 64000, 4100, '2021-08-08', '1993-11-11', 'F', 'Delhi', 1, 'Active'),
(82, 'Aditya', 'Rao', 'aditya.r@example.com', NULL, 'Finance', 'Clerk', 45000, 1600, '2023-07-07', '1996-06-06', 'M', 'Mumbai', 3, 'Active'),
(83, 'Sneha', 'Ghosh', 'sneha.g@example.com', '9876543292', 'Marketing', 'Executive', 52000, 2200, '2022-05-05', '1995-05-05', 'F', NULL, 6, 'Active'),
(84, 'Ravindra', 'Patel', NULL, '9876543293', 'IT', 'Tester', 46000, 1700, '2020-04-04', '1994-02-02', 'M', 'Ahmedabad', 1, 'Active'),
(85, 'Aastha', 'Nagpal', 'aastha.n@example.com', '9876543294', 'Sales', 'Lead', 69000, 6800, '2019-03-03', '1992-12-12', 'F', 'Delhi', 4, 'Active'),
(86, 'Tarun', 'Aggarwal', 'tarun.a@example.com', '9876543295', 'HR', 'Manager', 78000, 8500, '2018-01-01', '1989-09-09', 'M', 'Jaipur', NULL, 'Active'),
(87, 'Bhavna', 'Pandey', NULL, '9876543296', 'Finance', 'Analyst', 59000, NULL, '2020-11-11', '1993-08-08', 'F', 'Lucknow', 3, 'Active'),
(88, 'Harshit', 'Reddy', 'harshit.r@example.com', NULL, 'IT', 'Developer', 66000, 4400, '2021-03-03', '1992-02-02', 'M', 'Hyderabad', 1, 'Active'),
(89, 'Payal', 'Tripathi', 'payal.t@example.com', '9876543298', 'Marketing', 'Executive', 53000, 2100, '2022-12-12', '1996-11-11', 'F', 'Delhi', 6, 'Active'),
(90, 'Sandeep', 'Bhatt', NULL, '9876543299', 'Sales', 'Sales Rep', 50000, 2000, '2023-01-01', '1994-10-10', 'M', 'Mumbai', 4, 'Active');


-- update example.com to gamil.com
UPDATE employees
SET email = REPLACE(email, 'example.com', 'gmail.com')
WHERE email LIKE '%example.com';

SELECT emp_id, email
FROM employees
WHERE email LIKE '%gmail.com';

USE Basic_A_Company_DB;


-- 1. 🟢 SELECT Statement
-- Q1: Select all columns for all employees
select * from employees;

-- Q2: Select first name and last name of employees
select e.first_name, e.last_name from employees e;

-- Q3: Select salary and bonus for all employees
select e.salary, e.bonus  from employees e;

-- Q4: Select department and designation of all employees
select e.department , e.designation from employees e;

-- Q5: Select email and phone number of all employees
select e.email, e.phone from employees e;


-- 2. 🟢 SELECT DISTINCT
-- Q1: List all distinct departments
select distinct e.department from employees e;

-- Q2: List all distinct designations
select distinct e.designation from employees e;

-- Q3: List all unique manager IDs
select distinct e.manager_id from employees e;

-- Q4: Get distinct cities from address column
select distinct e.address from employees e;

-- Q5: List all distinct status values
select distinct e.status  from employees e;


-- 3. 🟢 WHERE Clause
-- Q1: Find all employees in the IT department
select * from employees e
where e.department = 'IT';

-- Q2: Get employees with salary > 60000
select * from employees e
where e.salary > 60000;

-- Q3: Find employees who joined after 2020-01-01
select * from employees e
where e.hire_date > '2020-01-01';

-- Q4: Get all male employees
select * from employees e
where e.gender = 'M';

-- Q5: Find employees whose bonus is more than 3000
select * from employees e 
where e.bonus > 3000;


-- 4. 🟢 ORDER BY
-- Q1: List employees ordered by salary (low to high)
select * from  employees e
order by e.salary;

-- Q2: List employees ordered by join_date descending
select * from employees e
order by e.hire_date desc;

-- Q3: Order employees by department and then by salary
select * from employees e
order by e.department , e.salary;

-- Q4: Sort employees by last_name alphabetically
select e.last_name  from employees e
order by e.last_name;

-- Q5: List employees by bonus in descending order
select * from employees e
order by e.bonus desc;


-- 5. 🟢 LIMIT / TOP (SQL Server uses TOP)
-- Q1: Get top 5 highest paid employees
select top 5 * from employees
order by salary desc;

-- Q2: Get top 10 youngest employees by DOB
select top 10 * from employees e
order by e.dob desc;

-- Q3: Get top 3 employees with highest bonuses
select top 3 * from employees e 
order by e.bonus desc;

-- Q4: Get top 7 most recent joiners
select top 7 * from employees e
order by e.hire_date desc;

-- Q5: Get top 2 HR department employees with highest salary
select top 2 * from employees e 
where e.department = 'HR'
order by e.salary desc;


-- 6. 🟡 AND, OR, NOT
-- Q1: Find employees in IT department and salary > 60000
select * from employees e
where e.department = 'IT' and e.salary > 60000;

-- Q2: Find employees in HR or Sales department
select * from employees e
where e.department = 'HR' or e.department = 'Sales';

-- Q3: Find employees not in Marketing department
select * from employees e
where not  e.department  = 'Marketing';

-- Q4: Find male employees in IT with bonus > 2000
select * from employees e
where e.gender = 'M' and e.department = 'IT' and  e.bonus > 2000;

-- Q5: Find employees in Finance or with bonus > 3000
select * from employees e
where e.department = 'Finance' or e.bonus > 3000;


-- 7. 🟡 IS NULL / IS NOT NULL
-- Q1: Find employees whose email is NULL
select * from employees e
where e.email is null ;

-- Q2: Get employees with non-null bonus
select * from employees e
where e.bonus is not null;

-- Q3: Find employees whose address is NULL
select * from employees e
where e.address is null;

-- Q4: List employees with manager_id NULL
select * from employees e
where e.manager_id is null;

-- Q5: Get employees whose phone number is not null
select * from employees e
where e.phone is not null;


-- 8. 🟡 IN / NOT IN
-- Q1: Get employees in IT, HR, or Finance
select * from employees e
where e.department in ('IT', 'HT', 'Finance');

-- Q2: Find employees whose designation is in a list
select * from employees e
where e.designation in ('Developer', 'Tester','Analyst','Manager');

-- Q3: Get employees not in Delhi or Mumbai
select * from employees e
where e.address not in ('Delhi' , 'Mumbai');

-- Q4: Find employees managed by manager IDs 1, 2, 3
select * from employees e
where e.manager_id in (1,2,3);

-- Q5: Get employees whose gender is not M or F (edge case)
select * from employees e
where e.gender not in ('M', 'F');


-- 9. 🟡 BETWEEN / NOT BETWEEN
-- Q1: Find employees with salary between 50000 and 70000
select * from employees e
where e.salary between 50000 and 70000;

-- Q2: Get employees with bonus not between 2000 and 4000
select * from employees e
where e.bonus not between 2000 and 4000;

-- Q3: Find employees born between 1990-01-01 and 1995-12-31
select * from employees e
where e.dob between '1990-01-01' and '1995-12-31';

-- Q4: Get employees who joined between 2020 and 2022
select * from employees e
where e.hire_date between '2020-01-01' and '2022-12-31';

-- Q5: Find employees with emp_id between 20 and 40
select * from employees e
where e.emp_id between 20 and 40;


-- 10. 🟡 LIKE / NOT LIKE, Wildcards (% and _)
-- Q1: Find emails ending with '@gmail.com'
select * from employees e
where e.email like '%@gmail.com';

-- Q2: Get employees whose first name starts with 'A'
select * from employees e
where e.first_name like 'A%';

-- Q3: Get employees whose last name ends with 'a'
select * from employees e
where e.last_name like '%a';

-- Q4: Find emails that contain 'kumar'
select * from employees e
where e.email like '%kumar%';

-- Q5: Get employees whose designation starts with 'De' and is exactly 9 characters
select * from employees e
where e.designation like 'De_______';


-- 11. 🟡 Aliases (AS keyword)
-- Q1: Show first_name as 'First' and last_name as 'Last'
select e.first_name as First , e.last_name as Last from employees e;

-- Q2: Show salary as 'Base Salary' and bonus as 'Extra Bonus'
select e.salary as 'Base Salary' , e.bonus as 'Extra Bonus' from employees e;

-- Q3: Show full name and email
select e.first_name + ' ' + e.last_name  as 'Full Name', e.email as Email from employees e;

-- Q4: Get employee ID as 'ID' and department as 'Dept'
select e.emp_id as ID , e.department as Dept  from employees e;

-- Q5: Show gender and status with aliases 'Gender' and 'Current Status'
select e.gender Gender , e.status 'Current Status'  from employees e;
