/*
Problem: 1581. Customer Who Visited but Did Not Make Any Transactions

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

Concepts:

*/

-- Write your solution here
with null_table as (select
a.customer_id,
b.visit_id
from Visits a
left join Transactions b
ON a.visit_id =b.visit_id),
only_null as(select
customer_id,
visit_id
from null_table
where visit_id is null)
select
customer_id,
count(*) as count_no_trans 
from only_null
group by 1
