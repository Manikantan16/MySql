-- 7.6  Joining More than 1 table

 -- Select * from parks_departments

Select ED.Employee_Id,ED.First_Name,ED.Last_Name,Ed.Age,ED.Gender,PD.Dept_Name,
	ES.Occupation,ES.Salary
 from Employee_Demographics ED
inner join Employee_Salary ES on ED.Employee_Id = ES.Employee_Id
inner join Parks_Departments PD on ES.Dept_Id = PD.Dept_Id;

-- 7.7  Joining More than 1 table using Left Join
Select ED.Employee_Id,ED.First_Name,ED.Last_Name,Ed.Age,ED.Gender,PD.Dept_Name,
	ES.Occupation,ES.Salary
 from Employee_Demographics ED 
Left join  Employee_Salary ES on ED.Employee_Id = ES.Employee_Id
left join Parks_Departments PD on ES.Dept_Id = PD.Dept_Id
order by ED.First_Name