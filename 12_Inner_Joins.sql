/* Join (7.0 - 7.5)
Select  * from Employee_Demographics limit 2;
select * from employee_salary limit 2
*/

-- 7.0 Inner join without Aliasing
SELECT *
FROM employee_demographics
JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;
 
-- 7.1 Inner join using Aliasing 
SELECT ED.Employee_Id,ED.First_Name,ED.Age,ES.Salary,ES.Occupation
FROM employee_demographics ED
INNER JOIN employee_salary ES
	ON ED.employee_id = ES.employee_id;