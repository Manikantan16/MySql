-- 11 SubQueries
/*
	SELECT * from Employee_Demographics
	Select * from Employee_Salary
*/
-- 11.0 
select Employee_Id,Employee_Name,First_Name,Last_Name,Age, Gender
from Employee_Demographics 
	where Employee_id in (Select employee_Id from Employee_Salary where dept_id in (1,2));
    
-- 11.1
select *,(
 Select Avg(Salary)  from Employee_Salary
 ) as AVG_Sal
 from Employee_Salary;

-- 11.2
Select * from
(
	SELECT gender, MIN(age) As Min_Age, MAX(age) As Max_Age, COUNT(age) As Count_Age,AVG(age) as Avg_Age
	FROM employee_demographics
	GROUP BY gender
)as TblResult;

-- 11.3
SELECT gender, AVG(Min_age) as AvgMinAge,Avg(Max_age) as AvgMaxAge
FROM (
	SELECT gender, MIN(age) Min_age, MAX(age) Max_age, COUNT(age) Count_age ,AVG(age) Avg_age
	FROM employee_demographics
GROUP BY gender) AS Agg_Table
GROUP BY gender;

Select * from Employee_Demographics

-- 11.4
Select Employee_Id,First_Name,Last_Name,Occupation,Salary, Es.Dept_Id,
	(Select Dept_Name from Parks_Departments where dept_id = Es.Dept_id) as Dept_Name
 from Employee_Salary Es;
 
-- 12  Windows Function - we will also look at things like Row Numbers, rank, and dense rank
-- 11.2
Select Ed.Gender,round(Avg(ES.Salary),0) as AvgSal
 from Employee_demographics ED
inner join Employee_Salary ES on ED.Employee_Id = ES.Employee_Id
group by Ed.Gender;

-- 11.3
SELECT dem.employee_id, dem.first_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY employee_id) Sum_Sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
