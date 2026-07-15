/*
Problem: 1204. Last Person to Fit in the Bus

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/last-person-to-fit-in-the-bus/

Concepts:

*/

-- Write your SQL solution here

with cumulative_table as (select 
turn  as Turn,
person_id as ID,
person_name as name,
weight as Weight,
sum(weight) over(order by turn asc) as cumulative_weight
from Queue)
select
name as person_name 
from cumulative_table
where cumulative_weight <=1000
order by Turn desc
limit 1