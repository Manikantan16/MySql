-- 12. 1   
WITH CTE_EmpDemgra_EmpSal AS 
(
SELECT gender, SUM(salary)Sum_Sal, MIN(salary) Min_Sal, MAX(salary) Max_Sal, COUNT(salary)Count_Sal, AVG(salary) Avg_Sal
FROM employee_demographics ED
JOIN employee_salary ES
	ON ED.employee_id = ES.employee_id
GROUP BY gender
)

-- Select * from CTE_EmpDemgra_EmpSal

SELECT gender, ROUND(AVG(Sum_Sal/Count_Sal),2) as AvgSal
FROM CTE_EmpDemgra_EmpSal
group by gender;

-- 12.2 using 2 Common Table Expressions and applying Left Join to the 2 CTE's
WITH CTE_Example AS 
(
SELECT employee_id, gender, birth_date
FROM employee_demographics dem
WHERE birth_date > '1985-01-01'
), -- just have to separate by using a comma
CTE_Example2 AS 
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary >= 50000
)
-- Now if we change this a bit, we can join these two CTEs together
SELECT *
FROM CTE_Example cte1
LEFT JOIN CTE_Example2 cte2
	ON cte1. employee_id = cte2. employee_id;
    
-- 12.3 
WITH CTE_Result (gender, sum_salary, min_salary, max_salary, count_salary) AS 
(
SELECT gender, SUM(salary), MIN(salary), MAX(salary), COUNT(salary)
FROM employee_demographics ED
JOIN employee_salary ES
	ON ED.employee_id = ES.employee_id
GROUP BY gender
)

SELECT gender, ROUND(AVG(sum_salary/count_salary),2) as Avg_Sal
FROM CTE_Result
GROUP BY gender;

select employee_id from employee_demographics where gender = 'F'

update employee_demographics set gender = 'Female' where employee_id in (5003)
