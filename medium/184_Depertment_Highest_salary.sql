-- https://leetcode.com/problems/department-highest-salary/
-- Problem: 183. Customers Who Never Order
-- Difficulty: Medium
-- Concepts: CTE and with
-- MYSQL /PostgreSQL
with CTE as(
select
id,
name, 
salary,
departmentId,
rank() over(partition by departmentId order by salary desc) as aa
from employee)
select 
a.name as Department,
b.name as Employee,
b.salary as Salary
from department a
JOIN CTE as b
ON b.departmentId = a.id
where b.aa = 1