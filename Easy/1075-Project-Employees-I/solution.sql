/*
Problem: 1075. Project Employees I

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/project-employees-i/

Concepts:

*/

-- Write your solution here
select
a.project_id,
round(avg(b.experience_years),2) as average_years 
from Project a
JOIN Employee b
ON a.employee_id = b.employee_id
group by a.project_id