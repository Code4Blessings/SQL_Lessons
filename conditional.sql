-- Make a conditional expression in the employees table showing if the employee is underpaid if they make under $100,000 and paid well if they make over $100000

select first_name, salary,
CASE 
	WHEN salary < 100000 THEN 'UNDER PAID'
	WHEN SALARY > 100000 THEN ' PAID WELL'
END
from employees
order by salary DESC

