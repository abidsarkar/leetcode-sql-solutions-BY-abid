/*
Problem: 1393. Capital Gain Loss

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/capital-gain-loss/

Concepts:

*/

-- Write your SQL solution here

select
stock_name,
sum(price) filter(where operation ='Sell')-sum(price)filter(where operation  ='Buy') as capital_gain_loss 
from Stocks
group by 1
# Write your MySQL query statement below
select
stock_name,
sum(case when operation ='Sell'then price else 0 end) -sum(case when operation  ='Buy' then price else 0 end) as capital_gain_loss 
from Stocks
group by 1