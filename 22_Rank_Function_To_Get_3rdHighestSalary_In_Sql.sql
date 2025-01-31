-- 11.7 Get the 3rd highest Salary from the table
-- Get 3rd highest Rank Salary
   Select Row_number() over() as Sno, employee_id,first_name,last_name,gender,Salary,sal_rank
   from 
   (	
		Select ed.employee_id, ed.first_name, ed.last_name,
			gender,salary,
		dense_Rank() OVER(ORDER BY salary desc) sal_rank 
		FROM employee_demographics ed
		JOIN employee_salary es
		ON ed.employee_id = es.employee_id
	) as Tbl_Result
    where Tbl_Result.sal_rank in (2,3)
