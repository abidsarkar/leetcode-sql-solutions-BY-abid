/*
Problem: 1517. Find Users With Valid E-Mails

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/find-users-with-valid-e-mails/

Concepts:

*/

-- Write your solution here
-- Write your PostgreSQL query statement below
SELECT *
FROM Users
WHERE mail ~ '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\.com$';
