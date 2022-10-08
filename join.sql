
--Joining Multiple tables

--Write a query that will display first_name, email, and division.  No Null values

select first_name, email, division
from employees, departments
where employees.department = departments.department
AND email IS Not NULL
 
 --How about joining this to a third table

select first_name, email, employees.department, division, country
from employees, departments, regions
where employees.department = departments.department
AND employees.region_id = regions.region_id
AND email IS Not NULL

--As tables tend to be rather long, you can give the tables aliases like so: 

select first_name, email, e.department, division, country
from employees e, departments d, regions r
where e.department = d.department
AND e.region_id = r.region_id
AND email IS Not NULL

--Write a query that gives the country and the total count of employees in that country

SELECT country, Count(employee_id) as total_employees
from employee_id e, regions r
WHERE employees.region_id = regions.region_id


--INNER JOIN means a table is being matched with the data of another table

SELECT first_name, country
from employees INNER JOIN regions
ON employees.region_id = regions.region_id

SELECT first_name, email, division, country
from employees INNER Join departments
ON employees.department = departments.department
INNER JOIN  regions ON employees.region_id = regions.region_id
WHERE email IS NOT NULL

--OUTER JOIN means a table for example, the departments table had departments not listed in employees table
    --OUTER JOINS include LEFT JOIN and RIGHT JOIN.  LEFT JOIN exposes all the data from the table on the left side of the equal sign.  RIGHT join does the same but to the table on the right side of the equal sign.
