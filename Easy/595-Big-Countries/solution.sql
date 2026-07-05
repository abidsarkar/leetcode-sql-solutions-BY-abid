/*
Problem: 595. Big Countries

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/big-countries/

Concepts:

*/

-- Write your solution here
select
name,
population,
area
from World
where area >2999999 OR population >24999999
-- in python 
import pandas as pd

def big_countries(world: pd.DataFrame) -> pd.DataFrame:
    filter_countries = world[(world['area']>=3000000 )|(world['population']>=25000000)]
    return filter_countries[['name','population','area']]
    