/* Limit (6.0 - 6.4)*/
-- Limit means how many rows you want to limit or show

-- 6.0 below query sorts based on First_name and shows 4 rows
Select * from Employee_Demographics
order by First_Name
limit 4;

-- 6.1 Sorts based on Name, starts from 3 index and shows 2 records
SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3,2;


-- 6.2 Sorts based on Name, starts from 5 index and shows 3 records
SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 4,3;

