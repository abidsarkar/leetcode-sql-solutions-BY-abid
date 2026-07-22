/*
Problem: 1667. Fix Names In A Table

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/fix-names-in-a-table/description/

Concepts:

*/

-- Write your solution here
SELECT
  user_id,
  CONCAT(
    UPPER(SUBSTRING(name, 1, 1)),
    LOWER(SUBSTRING(name, 2))
  ) AS name
FROM Users
ORDER BY 1