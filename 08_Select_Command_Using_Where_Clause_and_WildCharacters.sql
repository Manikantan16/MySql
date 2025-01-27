-- 3.6 Get the records from employee_demographic where first name starts with S
SELECT *
FROM employee_demographics
WHERE first_name LIKE 's%';

-- 3.7 Get the records from employee_demographic where first name starts with M and name is a 3 letter
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'm__';

-- 3.8 Get the records from employee_demographic where first name starts with M and >= 3 characters in length
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'j___%';
