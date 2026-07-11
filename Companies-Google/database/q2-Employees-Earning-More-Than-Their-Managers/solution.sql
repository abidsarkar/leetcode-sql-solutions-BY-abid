/*
Problem: q2. Employees Earning More Than Their Managers

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/employees-earning-more-than-their-managers/

Concepts:

*/

-- Write your solution here
SELECT
    a.name AS Employee
FROM Employee a
JOIN Employee b
    ON a.managerId = b.id
WHERE a.salary > b.salary;