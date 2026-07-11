/*
Problem: q3. Not Boring Movies

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/not-boring-movies/

Concepts:

*/

-- Write your solution here
select
id,
movie,
description ,
rating
from Cinema
where id % 2 = 1 and description != 'boring'
order by rating desc