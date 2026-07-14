/*
Problem:1174. Immediate Food Delivery II

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/immediate-food-delivery-ii/

Concepts:

*/

-- Write your PostgreSQL query statement below
with order_rank as(select
delivery_id ,
customer_id ,
order_date ,
customer_pref_delivery_date ,
rank() over(
    partition by customer_id
    order by order_date asc
 ) as rank
 from Delivery),
 only_first_order as (
    select
    delivery_id ,
    customer_id ,
    order_date ,
    customer_pref_delivery_date
    from order_rank
    where rank = 1
 )
 SELECT 
    ROUND(
        100.0 * COUNT(CASE WHEN order_date = customer_pref_delivery_date THEN 1 END) / COUNT(*), 
        2
    ) AS immediate_percentage
FROM only_first_order;
# Write your MySQL query statement below

with order_rank as(select
delivery_id ,
customer_id ,
order_date ,
customer_pref_delivery_date ,
rank() over(
    partition by customer_id
    order by order_date asc
 ) as aaaa
 from Delivery),
 only_first_order as (
    select
    delivery_id ,
    customer_id ,
    order_date ,
    customer_pref_delivery_date
    from order_rank
    where aaaa = 1
 )
 SELECT 
    ROUND(
        100.0 * COUNT(CASE WHEN order_date = customer_pref_delivery_date THEN 1 END) / COUNT(*), 
        2
    ) AS immediate_percentage
FROM only_first_order;