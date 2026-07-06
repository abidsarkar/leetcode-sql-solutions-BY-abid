/*
Problem: 608. Tree Node

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/tree-node/

Concepts:

*/

-- Write your SQL solution here

select
id,
case
    when p_id is null then 'Root'
    WHEN id IN (SELECT DISTINCT p_id FROM Tree WHERE p_id IS NOT NULL) THEN 'Inner'
    else 'Leaf'
end as type
from Tree