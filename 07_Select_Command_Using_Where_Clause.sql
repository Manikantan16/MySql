-- 3.0 Get the records from Empsalary where Sal < 50000
SELECT *
FROM employee_salary
WHERE salary < 50000;

-- 3.1 Get the records from Empsalary where Sal> 50000
SELECT *
FROM employee_salary
WHERE salary > 50000;

-- 3.2 Get the records from Empsalary where Sal< 50000
SELECT *
FROM employee_salary
WHERE salary <= 50000;

-- 3.3 Get the female records from employee_demographics 
SELECT *
FROM employee_demographics
WHERE gender = 'F';

-- 3.4 Get the records from employee_demographics  whose gender is not female
SELECT *
FROM employee_demographics
WHERE gender != 'F';

-- 3.5 Get the records from employee_demographics  where DOB is > 01-Jan-1985
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';
