/*
Problem: 1907. Count Salary Categories

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/count-salary-categories/

Concepts:

*/

-- Write your SQL solution here
SELECT
  'Low Salary' AS Category,
  SUM(income < 20000) AS accounts_count
FROM Accounts
UNION ALL
SELECT
  'Average Salary' Category,
  SUM(income >= 20000 AND income <= 50000) AS accounts_count
FROM Accounts
UNION ALL
SELECT
  'High Salary' category,
  SUM(income > 50000) AS accounts_count
FROM Accounts;
-- Write your PostgreSQL query statement below
SELECT 'Low Salary' AS Category, 
COUNT(*) FILTER (WHERE income < 20000) AS accounts_count 
FROM Accounts 
UNION ALL 
SELECT 'Average Salary', 
COUNT(*) FILTER (WHERE income >= 20000 AND income <= 50000) 
FROM Accounts 
UNION ALL 
SELECT 'High Salary', 
COUNT(*) FILTER (WHERE income > 50000) 
FROM Accounts;
