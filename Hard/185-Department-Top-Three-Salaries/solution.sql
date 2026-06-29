/*
Problem: 185. Department Top Three Salaries

Difficulty: Hard

LeetCode:
https://leetcode.com/problems/department-top-three-salaries/

Concepts:

*/

-- Write your SQL solution here

with CTE as(
select
id,
name, 
salary,
departmentId,
DENSE_RANK() over(partition by departmentId order by salary desc) as aa
from employee)
select 
a.name as Department,
b.name as Employee,
b.salary as Salary
from department a
JOIN CTE as b
ON b.departmentId = a.id
where b.aa = 1
or b.aa = 2
or b.aa= 3