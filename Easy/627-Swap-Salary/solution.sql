/*
Problem: 627. Swap Salary

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/swap-salary/

Concepts:

*/

-- Write your solution here
update Salary
set sex = case 
                when sex = 'f' then 'm'
                when sex = 'm' then 'f'
          end ;