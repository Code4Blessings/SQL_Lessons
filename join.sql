
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