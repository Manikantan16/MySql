-- 8.0 Union using 2 tables with different columns
SELECT first_name, last_name
FROM employee_demographics
UNION
SELECT occupation, salary
FROM employee_salary;