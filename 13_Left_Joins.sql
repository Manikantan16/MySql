-- 7.2 LEFT join using Aliasing 
SELECT ED.Employee_Id,ED.First_Name,ED.Last_Name,ED.Age,ES.Salary,ES.Occupation
FROM employee_demographics ED
LEFT JOIN employee_salary ES
	ON ED.employee_id = ES.employee_id;
    
-- 7.3 Right Join 
SELECT ED.Employee_Id,ED.First_Name,ED.Last_Name,ED.Age,ES.Salary,ES.Occupation
FROM employee_salary ES
RIGHT JOIN employee_demographics ED
	ON ES.employee_id = ED.employee_id;