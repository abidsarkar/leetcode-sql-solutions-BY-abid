/*
Problem: 180. Consecutive Numbers

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/consecutive-numbers/

Concepts:

*/

-- Write your SQL solution here

WITH CTE AS(
    SELECT
    num,
    LEAD(num,1) over(order by id) AS next_num,
    lead(num,2) over(order by id) as next_next_num
    from Logs
)
select distinct num as ConsecutiveNums 
from CTE
where num = next_num and num = next_next_num;
-- pandas
import pandas as pd

def consecutive_numbers(logs: pd.DataFrame) -> pd.DataFrame:
    # 1. Sort by id to ensure chronological order
    logs = logs.sort_values(by='id')
    
    # 2. Grab the next row's value and the row after that's value
    # shift(-1) moves data up by 1 (acting like LEAD(1))
    logs['next_num'] = logs['num'].shift(-1)
    logs['next_next_num'] = logs['num'].shift(-2)
    
    # 3. Filter rows where the current num matches both shifted numbers
    condition = (logs['num'] == logs['next_num']) & (logs['num'] == logs['next_next_num'])
    consecutive_df = logs[condition]
    
    # 4. Extract unique values and format the output DataFrame
    unique_nums = consecutive_df['num'].unique()
    
    return pd.DataFrame({'ConsecutiveNums': unique_nums})