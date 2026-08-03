/*
Problem: 3465 find products with valid serial number

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/find-products-with-valid-serial-numbers/description/

Concepts:

*/
SELECT 
    product_id, 
    product_name, 
    description
FROM 
    products
WHERE 
    description REGEXP '(?-i)\\bSN[0-9]{4}-[0-9]{4}\\b'
ORDER BY 
    product_id ASC;
