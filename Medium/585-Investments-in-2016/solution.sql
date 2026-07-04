/*
Problem: 585. Investments in 2016

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/investments-in-2016/

Concepts:

*/

-- Write your SQL solution here

select round(sum(tiv_2016)::NUMERIC,2) as tiv_2016 
from Insurance
where tiv_2015 in (
    select tiv_2015
    from Insurance
    group by tiv_2015
    having count(*)>1
) and (lat,lon) in(
    select lat,lon
    from Insurance
    group by lat,lon
    having count(*)=1
)