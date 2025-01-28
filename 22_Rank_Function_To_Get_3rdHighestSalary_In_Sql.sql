-- 11.7 Get the 3rd highest Salary from the table
-- Get 3rd highest Rank Salary
   Select Row_number() over() as Sno, employee_id,first_name,last_name,gender,Salary,Rank_1
   from 
   (	
		Select ed.employee_id, ed.first_name, ed.last_name,
			gender,salary,
		Rank() OVER(ORDER BY salary desc) rank_1 
		FROM employee_demographics ed
		JOIN employee_salary es
		ON ed.employee_id = es.employee_id
	) as Tbl_Result
    where Tbl_Result.Rank_1 = 3