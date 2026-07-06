/*
Problem: 601. Human Traffic of Stadium

Difficulty: Hard

LeetCode:
https://leetcode.com/problems/human-traffic-of-stadium/

Concepts:

*/

-- Write your SQL solution here
with continous_group as(
    select
    id,
    visit_date,
    people,
    id - row_number() over(order by id) as group_id
    from Stadium
    where people >=100
),
how_many_group as (
    select
    id,
    visit_date,
    people,
    count(*) over(partition by group_id) as group_count
    from continous_group
)
select 
id,
visit_date,
people
from how_many_group
where group_count >=3
order by visit_date asc
 
