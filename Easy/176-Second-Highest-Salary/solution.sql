/*
Problem: 176. Second Highest Salary

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/second-highest-salary/

Concepts:

*/

-- Write your solution here
select 
max(salary) as SecondHighestSalary 
from employee
where salary < (select 
max(salary)
from employee)
limit 1
-- other method
SELECT (
    SELECT DISTINCT salary 
    FROM Employee 
    ORDER BY salary DESC 
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;
-- other method
with Rank AS(
    select salary,
    dense_rank() over(ORDER by salary desc) as ranking
    from employee
)
select 
max(salary) AS  SecondHighestSalary
from Rank
where ranking = 2