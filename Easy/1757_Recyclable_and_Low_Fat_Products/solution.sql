/*
Problem: 1757. Recyclable and Low Fat Products

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/recyclable-and-low-fat-products/description/

Concepts:

*/

-- Write your solution here
select
product_id
from Products
where low_fats ='Y'
AND recyclable ='Y'