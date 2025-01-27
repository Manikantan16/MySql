-- Aliasing is way to assign userdefined name to the column
-- 6.3 get the Average Age ,group based on gender and giving Alias name to Avg(age)
SELECT gender, AVG(age) as Avg_Age
FROM employee_demographics
group by Gender;

-- 6.4 we can use the keyword AS to specify we are using an Alias however without As also it works.. 
SELECT gender, AVG(age) Avg_age
FROM employee_demographics
GROUP BY gender;