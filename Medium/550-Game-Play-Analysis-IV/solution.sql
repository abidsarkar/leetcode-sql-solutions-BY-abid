/*
Problem: 550. Game Play Analysis IV

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/game-play-analysis-iv/

Concepts:

*/

-- Write your solution here
# Write your MySQL query statement below
SELECT 
    ROUND(
        COUNT(DISTINCT a.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 
        2
    ) AS fraction
FROM 
    (
        SELECT 
            player_id, 
            MIN(event_date) AS first_login
        FROM 
            Activity
        GROUP BY 
            player_id
    ) AS f
LEFT JOIN 
    Activity AS a 
ON 
    f.player_id = a.player_id 
    AND f.first_login = DATE_SUB(a.event_date, INTERVAL 1 DAY);
-- in postgresql
WITH first_login AS (
    SELECT 
        player_id,
        MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
)

SELECT 
    ROUND(
        COUNT(a.player_id)::NUMERIC / COUNT(f.player_id),
        2
    ) AS fraction
FROM first_login f
LEFT JOIN Activity a
    ON f.player_id = a.player_id
    AND a.event_date = f.first_date + INTERVAL '1 day';