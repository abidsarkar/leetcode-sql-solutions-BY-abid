/*
Problem: 183. Customers Who Never Order

Difficulty: Easy

LeetCode:
https://leetcode.com/problems/customers-who-never-order/

Concepts:

*/

-- Write your solution here
-- MYSQL /PostgreSQL
select
a.name as Customers 
from customers a
where id not in
            (select
            customerId
            from orders)

-- python pandas
import pandas as pd 
def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    df= customers[~customers['id']].isin(orders['customersID'])
    result = df[['name']].rename(columns ={'name': 'Customers'})
    return result