/*
Problem: 1934. Confirmation Rate

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/confirmation-rate/

Concepts:

*/

-- Write your SQL solution here
SELECT
  a.user_id,
  COALESCE(ROUND(AVG(b.action = 'confirmed'), 2), 0) AS confirmation_rate
FROM Signups a
LEFT JOIN Confirmations b ON a.user_id = b.user_id
GROUP BY a.user_id;

-- Write your PostgreSQL query statement below
SELECT 
    s.user_id, 
    ROUND(
        COALESCE(
            AVG(CASE WHEN c.action = 'confirmed' THEN 1.0 ELSE 0.0 END), 
            0.0
        ), 
        2
    ) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;
