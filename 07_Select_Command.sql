-- 2.0
Select * from employee_demographics;

-- 2.1
Select First_Name,Last_Name from employee_demographics;

-- 1.12
Select First_Name,Last_Name,Age,Gender,Birth_Date 
from employee_demographics;

-- 2.2 You'll also often see SQL queries formatted like this.
SELECT last_name, 
first_name, 
gender, 
age
FROM employee_demographics;

-- 2.3  Adding 100 Rs to Salary as a Festival Bonus
SELECT First_Name, 
Last_Name,
Salary,
salary + 100 as Net_Salary
FROM employee_salary;