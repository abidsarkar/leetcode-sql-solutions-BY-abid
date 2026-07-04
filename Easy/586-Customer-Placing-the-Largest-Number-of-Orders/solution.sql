/*
Problem: 586. Customer Placing the Largest Number of Orders

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

Concepts:

*/

-- Write your solution here
with cte as (select
customer_number,
count(customer_number) as total_order
from Orders
group by customer_number
order by total_order desc
limit 1)
select customer_number
from cte