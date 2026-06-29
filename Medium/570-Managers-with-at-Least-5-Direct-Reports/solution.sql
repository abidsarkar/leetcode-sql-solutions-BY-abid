/*
Problem: 570. Managers with at Least 5 Direct Reports

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

Concepts:

*/

-- Write your SQL solution here

with CTE as (select
managerId,
count(managerId)
from Employee
where managerId is not null
group by managerId
having count(managerId) > 4)
select
a.name 
from Employee a
JOIN CTE as b
ON a.id = b.managerId