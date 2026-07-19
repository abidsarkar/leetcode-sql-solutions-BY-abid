/*
Problem: 1378. Replace Employee ID With The Unique Identifier

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

Concepts:

*/

-- Write your solution here
-- Write your PostgreSQL query statement below
select
b.unique_id,
a.name
from Employees a
LEFT JOIN EmployeeUNI b
ON a.id = b.id