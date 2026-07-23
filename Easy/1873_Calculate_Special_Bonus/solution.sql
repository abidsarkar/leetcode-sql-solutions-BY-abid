/*
Problem: 1873. Calculate Special Bonus

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/calculate-special-bonus/description/

Concepts:

*/

-- Write your solution here
# Write your MySQL query statement below
select
employee_id ,
case
    when employee_id % 2 = 1 and left(name,1) !='M' then salary 
    else 0
end as bonus
from Employees
order by 1 asc ;
