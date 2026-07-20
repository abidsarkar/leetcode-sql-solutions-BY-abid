/*
Problem: 1587. Bank Account Summary II

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/bank-account-summary-ii/

Concepts:

*/

-- Write your solution here

select
a.name,
sum(b.amount) as balance 
from Users a
JOIN Transactions b
ON a.account = b.account
group by a.name, a.account
having sum(b.amount)>10000