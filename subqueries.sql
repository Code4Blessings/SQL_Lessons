--A subquery is a query within a query or a select statement within a select statement

--Subqueries can be made in the WHERE clause

SELECT * 
from employees
WHERE department IN (SELECT department from departments)

--Subqueries can also be used in the FROM clause BUT in this case, you need to give this an alias

SELECT * 
FROM (SELECT department FROM departments) a

--Subqueries can be used in the SELECT clause
    --In this case, for every row in the outer query, you will get what's in the select statement of the subquery.  You can't do that because you will get 1000 first names for every row.  So be sure to add a 'limit 1' clause

SELECT first_name, last_name, salary, (SELECT first_name FROM employees LIMIT 1)
FROM employees

--Exercise 1 - Write a select statement that shows all employees who work in the electronics division

SELECT * from employees 
WHERE department IN (select department from departments where division = 'Electronics')

--Exercise 2 - Give those employees that work in Asia or Canada that make over $130,000

SELECT * from employees 
WHERE salary > 130000 
and region_id IN (select region_id from regions WHERE country = 'Asia' or country = 'Canada')

--Exercise 3 - Show the first name and the department they work for and how much less they make than the highest paid employee

SELECT first_name, department, salary,
SUM((SELECT MAX(salary) from employees 
	 Group By first_name Order By MAX(salary)desc Limit 1)  - salary) as less_than_highest
from employees
WHERE region_id IN (select region_id from regions WHERE country = 'Asia' or country = 'Canada')
Group By first_name, department, salary

--ALL/ANY Clause - use next to > < or = operators in the Where clause or the Having Clause
    -- ANY operator returns true if any of the subquery values meet the condition
    -- ALL operator returns true if all of the subquery values meet the condition
    -- The ALL operator is more preferrable because ANY will make things too confusing

