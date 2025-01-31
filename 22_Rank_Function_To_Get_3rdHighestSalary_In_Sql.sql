use parks_and_recreation;

select * from employee_demographics;

select * from employee_salary;

insert into employee_salary values (5011,'Raghavendra','C','Manager','57000',1);

select row_number() over() as sno,Employee_Id,First_Name,Last_Name,Gender,Sal_Rank
from
(
select ED.Employee_Id,ED.First_Name,ED.Last_Name,ED.Gender,ES.Salary,dense_rank() over (order by salary desc) as Sal_Rank
 from employee_Demographics ED
inner join employee_salary ES
on ED.Employee_Id = ES.Employee_Id
) as tblresult
where tblresult.sal_rank in (2,3);





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