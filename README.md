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

