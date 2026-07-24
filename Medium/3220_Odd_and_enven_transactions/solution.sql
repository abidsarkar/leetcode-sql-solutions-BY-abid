/*
Problem: 3220. Odd and even Transactions

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/odd-and-even-transactions/
Concepts:

*/

-- Write your SQL solution here
--# Write your MySQL query statement below
SELECT
  transaction_date,
  SUM(IF(amount % 2 = 1, amount, 0)) AS odd_sum,
  SUM(IF(amount % 2 = 0, amount, 0)) AS even_sum
FROM Transactions
GROUP BY 1
ORDER BY 1;
-- Write your PostgreSQL query statement below
SELECT
  transaction_date,
  SUM(CASE WHEN amount % 2 <> 0 THEN amount ELSE 0 END) AS odd_sum,
  SUM(CASE WHEN amount % 2 = 0 THEN amount ELSE 0 END) AS even_sum
FROM Transactions
GROUP BY transaction_date
ORDER BY transaction_date;