/*
Problem: 1141. User Activity for the Past 30 Days I

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/

Concepts:

*/

-- Write your solution here
SELECT
     activity_date as day,
    COUNT(DISTINCT user_id) as active_users
    
FROM Activity
where 
    datediff('2019-07-27', activity_date) < 30
        and
    activity_date <= '2019-07-27'
GROUP BY activity_date
-- Write your PostgreSQL query statement below
SELECT
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE 
    ('2019-07-27'::date - activity_date) < 30
    AND activity_date <= '2019-07-27'::date
GROUP BY activity_date;