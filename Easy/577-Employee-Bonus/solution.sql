/*
Problem: 577. Employee Bonus

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/employee-bonus/

Concepts:

*/

-- Write your solution here
-- Write your PostgreSQL query statement below
select
a.name,
b.bonus
from Employee a
left JOIN Bonus b
ON a.empId = b.empId
where b.bonus < 1000
or b.bonus is null