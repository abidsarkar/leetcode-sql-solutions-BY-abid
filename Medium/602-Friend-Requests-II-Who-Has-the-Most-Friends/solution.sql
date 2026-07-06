/*
Problem: 602. Friend Requests II Who Has the Most Friends

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/

Concepts:

*/

-- Write your SQL solution here


# Write your MySQL query statement below
with both_total as(select
requester_id  as aa,
count(requester_id) as bb
from RequestAccepted 
group by 1
union all 
select 
accepter_id as  aa,
count(accepter_id ) as bb
from RequestAccepted 
group by 1)
select
aa as id,
sum(bb) as num
from both_total
group by aa
order by num desc
limit 1
-- postgresql
with only_id as(
    select requester_id as id from RequestAccepted
    UNION ALL
    select accepter_id as id from RequestAccepted
)
select 
id,
count(id) as num
from only_id
group by id
order by num desc
limit 1