# SQL_Lessons

## Assignments

#### Group By Assignment # 4

1. Write a query that displays only the state with the largest amount of fruit supply.

SELECT state, MAX(supply) as highest_supply
from fruit_imports
GROUP BY state
Order By highest_supply desc
Limit 1



2. Write a query that returns the most expensive cost_per_unit of every season. The query should display 2 columns, the season and the cost_per_unit

SELECT season, MAX(cost_per_unit) as highest_cost_per_unit
FROM fruit_imports
GROUP BY season
Order By highest_cost_per_unit desc
limit 1


3. Write a query that returns the state that has more than 1 import of the same fruit.

SELECT COUNT(name),state
FROM fruit_imports
GROUP BY state, name
Having count(name) > 1


4. Write a query that returns the seasons that produce either 3 fruits or 4 fruits.

SELECT COUNT(name), season
from fruit_imports
GROUP BY season
HAVING count(name) = 3 or count(name) = 4


5. Write a query that takes into consideration the supply and cost_per_unit columns for determining the total cost and returns the most expensive state with the total cost.

SELECT SUM(supply * cost_per_unit)as total_cost, state
from fruit_imports
GROUP BY state
Order BY total_cost desc
Limit 1

6. Execute the below SQL script and answer the question that follows:

CREATE table fruits (fruit_name varchar(10));
INSERT INTO fruits VALUES ('Orange');
INSERT INTO fruits VALUES ('Apple');
INSERT INTO fruits VALUES (NULL);
INSERT INTO fruits VALUES (NULL);



7. Write a query that returns the count of 4. You'll need to count on the column fruit_name and not use COUNT(*)
    - HINT: You'll need to use an additional function inside of count to make this work.


## Assignment 5: Practice with Subqueries

The puzzles in this assignment will involve the tables you prepared in assignment 1. You'll be using subqueries to retrieve information to solve the problems in this assignment.



In this section you'll practice working with subqueries. The questions that follow are based on the tables you created in assignment one. The image displays 3 of those tables you can use to solve the problems in this section. Reviewthese tables and understand how the data is related before moving on.


**Questions for this assignment**

1. Is the students table directly related to the courses table? Why or why not?



2. Using subqueries only, write a SQL statement that returns the names of those students that are taking the courses Physics and US History.

*NOTE: Do not jump ahead and use joins. I want you to solve this problem using only what you've learned in this section.*



3. Using subqueries only, write a query that returns the name of the student that is taking the highest number of courses.

    -   Display student_no and student_name from the students table
    -   Show how many times a the student_no appears on the student_enrollment table.
    -   Display the student with the highest count on said table--This is the one taking the most courses

*NOTE: Do not jump ahead and use joins. I want you to solve this problem using only what you've learned in this section.*

4. Answer TRUE or FALSE for the following statement:

    Subqueries can be used in the FROM clause and the WHERE clause but cannot be used in the SELECT Clause.



5. Write a query to find the student that is the oldest. You are not allowed to use LIMIT or the ORDER BY clause to solve this problem.

