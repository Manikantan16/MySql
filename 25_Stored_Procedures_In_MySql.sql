-- 14 STORED PROCEDURES

CREATE Procedure Proc_Get_Emp_highestSalary()

Select * from  Employee_Salary order by Salary desc limit 1;

-- To Execute the Stored Procedure:
call Proc_Get_Emp_highestSalary;