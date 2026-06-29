/*
Problem: 184. Department Highest Salary

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/department-highest-salary/

Concepts:

*/

-- Write your SQL solution here

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