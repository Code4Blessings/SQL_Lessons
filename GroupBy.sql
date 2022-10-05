--Group By Queries

SELECT count(*), make
from cars
GROUP By make

INSERT into cars VALUES (NULL);
INSERT into cars VALUES (NULL);
INSERT into cars VALUES (NULL);
INSERT into cars VALUES (NULL);

select make, count(*)  
from cars
GROUP BY make

--Group By and Having Clauses

--Get total salary of each department
--After the WHERE Clause is where you would put the Group BY
--The below query will return a sum column for each of the departments. Not the dept names

SELECT SUM(salary)
FROM employees
WHERE 1=1
GROUP BY department

--This query will show you the department where the region_id is 4,5,6,7

SELECT department, SUM(salary)
FROM employees
WHERE region_id in (4,5,6,7)
GROUP BY department

--Assignment - Group By

--Give total count of employees that work for each department

--Solution**

SELECT department, COUNT(employee_id) as total_employees
From employees
GROUP BY department

--Get the average, min, and max salary per department
    --Use the round function to avoid decimals in the average
    --Put in descending order by the total_ employees
    --Filter these employees to show only those that make more than $70,000

SELECT department, COUNT(employee_id) as total_employees, ROUND(AVG(salary)) as average_salary, MIN(salary) as minimum_salary, MAX(salary) as maximum_salary
From employees
GROUP BY department
ORDER BY total_employees desc

--Note
--If you are going to use a GROUP BY clause you must specify it in the GROUP BY clause
--The WHERE clause is used to filter data. You cannot use aggregated data in the WHERE Clase


-- Write  a query that also groups gender to each department and alphabatize the departments

SELECT department, gender, COUNT(*) 
From employees
GROUP BY department, gender
ORDER BY department

-- How about seeing the departments that have less than 35 employees - Use the HAVING clause
-- You cannot use aggregated data in the WHERE Clause


SELECT department, COUNT(*) 
From employees
GROUP BY department
HAVING count(*) < 35
ORDER BY department

--Assignments

--How many people have the same first names in the company?

SELECT first_name, COUNT(*)
FROM em

