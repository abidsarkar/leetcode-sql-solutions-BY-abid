/*
Problem: 1193. Monthly Transactions I

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/monthly-transactions-i/

Concepts:

*/

-- Write your SQL solution here

-- Write your PostgreSQL query statement below
select
to_char(trans_date,'YYYY-MM') as month,
country,
count(state) as trans_count ,
count(*) FILTER (where state ='approved') as approved_count ,
sum(amount ) as trans_total_amount,
COALESCE(sum(amount ) filter (where state='approved'),0) as approved_total_amount
from Transactions
group by 1,2
-- in mysql

SELECT
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(state) AS trans_count,
    COUNT(CASE WHEN state = 'approved' THEN 1 END) AS approved_count,
    COALESCE(SUM(amount), 0) AS trans_total_amount,
    COALESCE(SUM(CASE WHEN state = 'approved' THEN amount END), 0) AS approved_total_amount
FROM Transactions
GROUP BY 1, 2;
