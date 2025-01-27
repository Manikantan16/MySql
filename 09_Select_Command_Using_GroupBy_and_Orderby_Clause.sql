/* Group By  and Order by Clause (4.0 - 4.9) */
-- 4.0 Get the Gender from EmpDemographics Group by Gender
SELECT Gender
FROM employee_demographics
group by Gender;

-- 4.1 Get the first_name from EmpDemographics Group by Gender will return error
SELECT first_name
FROM employee_demographics
GROUP BY gender;

-- 4.2 Get the Occupation from EmpSalary Group by occupation
SELECT occupation
FROM employee_salary
GROUP BY occupation
