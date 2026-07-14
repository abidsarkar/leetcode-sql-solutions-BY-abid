/*
Problem: 1158. Market Analysis I

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/market-analysis-i/description/

Concepts:

*/

-- Write your SQL solution here
SELECT
  Users.user_id AS buyer_id,
  Users.join_date,
  COUNT(Orders.order_id) AS orders_in_2019
FROM Users
LEFT JOIN Orders
  ON (Users.user_id = Orders.buyer_id AND YEAR(order_date) = '2019')
GROUP BY 1,2;

-- Write your PostgreSQL query statement below
SELECT
  Users.user_id AS buyer_id,
  Users.join_date,
  COUNT(Orders.order_id) AS orders_in_2019
FROM Users
LEFT JOIN Orders
  ON (Users.user_id = Orders.buyer_id AND TO_CHAR(order_date,'YYYY') = '2019')
GROUP BY 1,2;
