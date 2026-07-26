/*
Problem: 3436. Find Valid Emails

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/find-valid-emails/description/

Concepts:

*/

-- mysql
	

SELECT user_id, email
FROM Users
WHERE email REGEXP '^[A-Za-z0-9_]+@[A-Za-z]+\\.com$'
ORDER BY 1;
-- Write your PostgreSQL query statement below
SELECT user_id, email
FROM Users
WHERE email ~ '^[A-Za-z0-9_]+@[A-Za-z]+\.com$'
ORDER BY 1;
