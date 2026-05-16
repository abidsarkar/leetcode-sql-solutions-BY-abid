-- https://leetcode.com/problems/second-highest-salary/description/
-- Problem: 176. Second Highest Salary
-- Difficulty: Medium
-- Concepts: aggregation and sub query
select 
max(salary) as SecondHighestSalary 
from employee
where salary < (select 
max(salary)
from employee)
limit 1
