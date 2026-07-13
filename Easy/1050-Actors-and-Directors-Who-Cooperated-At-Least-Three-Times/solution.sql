/*
Problem: 1050. Actors and Directors Who Cooperated At Least Three Times

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/

Concepts:

*/

-- Write your solution here
-- Write your PostgreSQL query statement below
select
actor_id,
director_id
from ActorDirector 
group by 1,2
having count(*)>=3