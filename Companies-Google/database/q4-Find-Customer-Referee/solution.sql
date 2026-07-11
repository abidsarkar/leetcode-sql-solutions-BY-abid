/*
Problem: q4. Find Customer Referee

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/find-customer-referee/

Concepts:

*/

-- Write your solution here
select
name
from Customer
where referee_id !=2
or referee_id is null
