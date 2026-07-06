/*
Problem: 607. Sales Person

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/sales-person/

Concepts:

*/

-- Write your solution here
select
a.name
from SalesPerson a
where sales_id  not in (select sales_id 
from Orders
where com_id = (select
distinct(com_id) as com_id
from Company 
where name ='RED'))