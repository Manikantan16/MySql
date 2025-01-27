 -- 7.4  Self Join
SELECT *
FROM employee_salary ES1
JOIN employee_salary ES2
	ON ES1.employee_id = ES2.employee_id;
 
 -- 7.5 Self Join
SELECT *
FROM employee_salary ES1
JOIN employee_salary ES2
	ON ES1.employee_id + 1  = ES2.employee_id
    