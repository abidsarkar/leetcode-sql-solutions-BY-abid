/*
Problem: 596. Classes More Than 5 Students

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/classes-more-than-5-students/

Concepts:

*/

-- Write your solution here
select
class
from Courses
group by class
having count(*)>=5
-- in python
import pandas as pd

def find_classes(courses: pd.DataFrame) -> pd.DataFrame:
    df = courses.groupby('class').filter(lambda x: len(x) >= 5)
    return df[['class']].drop_duplicates() 