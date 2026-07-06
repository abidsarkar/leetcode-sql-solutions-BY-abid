/*
Problem: 610. Triangle Judgement

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/triangle-judgement/

Concepts:

*/

-- Write your solution here
select
x,
y,
z,
case
    WHEN x >= y + z THEN 'No'
    WHEN y >= x + z THEN 'No'
    WHEN z >= x + y THEN 'No'
    ELSE 'Yes'
end as triangle
from Triangle