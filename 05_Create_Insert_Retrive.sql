-- 1.5  Create employee_salary Table without Auto Increment
CREATE TABLE Employee_Salary (
  Employee_Id INT NOT NULL,
  First_Name VARCHAR(50) NOT NULL,
  Last_Name VARCHAR(50) NOT NULL,
  Occupation VARCHAR(50),
  Salary INT,
  Dept_Id INT
);
-- 1.6 Insert Statment
Insert into Employee_Salary(Employee_Id,First_Name,Last_Name,Occupation,Salary,Dept_Id)
values
(5001,'Ramprasad','S','HR MANAGER',37000,1),
(5002,'Manikantan','N','Delivery Manager',85000,1),
(5003,'Sunitha','M','Operations Lead',57000,2),
(5012,'Jyoti','Abhang','Project Lead',48000,8),
(5010,'Jai', 'Oberoi','Accountant',28000,6)

select * from Employee_Salary;