/*
Problem: 175. Combine Two Tables

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/combine-two-tables/

Concepts:

*/

-- Write your solution here 
--Mysql
select
a.firstName,
a.lastName ,
b.city,
b.state
from person a
LEFT JOIN address b
ON a.personId  = b.personId 