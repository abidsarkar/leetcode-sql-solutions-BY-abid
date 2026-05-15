-- https://leetcode.com/problems/employees-earning-more-than-their-managers/
-- Problem: 181. employees earning more than their managers
-- Difficulty: Easy
-- Concepts: self Join and rename 
SELECT
    a.name AS Employee
FROM Employee a
JOIN Employee b
    ON a.managerId = b.id
WHERE a.salary > b.salary;