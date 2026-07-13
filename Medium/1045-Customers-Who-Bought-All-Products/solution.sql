/*
Problem: 1045. Customers Who Bought All Products

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/customers-who-bought-all-products/

Concepts:

*/

-- Write your SQL solution here
SELECT customer_id
FROM Customer
GROUP BY 1
HAVING COUNT(DISTINCT product_key) = (
    SELECT COUNT(*) FROM Product
  );

