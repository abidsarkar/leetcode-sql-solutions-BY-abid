/*
Problem: 1068. Product Sales Analysis I

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/product-sales-analysis-i/

Concepts:

*/

-- Write your solution here
select
a.product_name,
b.year,
b.price
from Product  a
JOIN Sales  b
ON a.product_id = b.product_id