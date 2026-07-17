/*
Problem: 1341. Movie Rating

Difficulty: Medium

LeetCode:
https://leetcode.com/problems/movie-rating/

Concepts:

*/

-- Write your SQL solution here

# Write your MySQL query statement below
	(
  SELECT b.name AS results
  FROM MovieRating a
   JOIN Users b
    ON a.user_id = b.user_id
  GROUP BY a.user_id
  ORDER BY COUNT(a.movie_id) DESC, b.name
  LIMIT 1
)
UNION ALL
(
  SELECT b.title AS results
  FROM MovieRating a
JOIN Movies b
    ON a.movie_id = b.movie_id
  WHERE DATE_FORMAT(created_at, '%Y-%m') = '2020-02'
  GROUP BY a.movie_id
  ORDER BY AVG(a.rating) DESC, b.title
  LIMIT 1
);
-- Write your PostgreSQL query statement below

	(
  SELECT b.name AS results
  FROM MovieRating a
   JOIN Users b
    ON a.user_id = b.user_id
  GROUP BY a.user_id,b.name
  ORDER BY COUNT(a.movie_id) DESC, b.name
  LIMIT 1
)
UNION ALL
(
  SELECT b.title AS results
  FROM MovieRating a
JOIN Movies b
    ON a.movie_id = b.movie_id
  WHERE to_char(created_at, 'YYYY-MM') = '2020-02'
  GROUP BY a.movie_id ,b.title
  ORDER BY AVG(a.rating) DESC, b.title
  LIMIT 1
);