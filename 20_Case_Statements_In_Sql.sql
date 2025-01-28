Use MyDb;
/* Case Statement  (10.0 - 10.1) */
-- 10.0 Classify When Age <= 30 then young, age > 30 and < 59 mid age, else Senior Citizen 
Select Employee_Id,Concat(First_name,' ',Last_Name) as Full_Name,Age,Case when Age <= 30 then 'Young' 
		When Age between 31 and 59 then ' Mid Age'
		When Age > 50 then  'Senior Citizen' end as Age_Classification
from employee_demographics;

-- Pawnee Council sent out a memo of their bonus and pay increase structure so we need to follow it
-- Basically if they make less than 45k then they get a 5% raise - very generous
-- if they make more than 45k they get a 7% raise
-- they get a bonus of 10% if they work for the Finance Department
select * from employee_salary
-- 10.1 the Above is the Condition
Select Employee_Id,Salary,cast(case When Salary < 45000 then Salary + (Salary * 5/100) 
			when Salary > 45000 then Salary + (Salary * 7/100) End as decimal(10,2)) as Revised_Salary,
        cast(case When Dept_id = 6 then  (salary *10/100) else 0 end as decimal(10,2)) as Bonus     
from Employee_Salary