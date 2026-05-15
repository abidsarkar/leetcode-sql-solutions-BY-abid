# SQL JOIN Notes

SQL JOIN is used to combine rows from two or more tables based on a related column.

---

# 1. INNER JOIN

Returns only matching rows from both tables.

## Syntax

```sql
SELECT *
FROM table1 t1
JOIN table2 t2
    ON t1.id = t2.id;
```

## Example

### Employee Table

| id | name | dept_id |
|---|---|---|
| 1 | John | 101 |
| 2 | Mike | 102 |
| 3 | Sara | 103 |

### Department Table

| id | dept_name |
|---|---|
| 101 | HR |
| 102 | IT |

## Query

```sql
SELECT
    e.name,
    d.dept_name
FROM Employee e
JOIN Department d
    ON e.dept_id = d.id;
```

## Output

| name | dept_name |
|---|---|
| John | HR |
| Mike | IT |

Sara is excluded because there is no matching department.

---

# 2. LEFT JOIN

Returns:
- all rows from left table
- matched rows from right table
- NULL if no match exists

## Syntax

```sql
SELECT *
FROM table1 t1
LEFT JOIN table2 t2
    ON t1.id = t2.id;
```

## Example

```sql
SELECT
    e.name,
    d.dept_name
FROM Employee e
LEFT JOIN Department d
    ON e.dept_id = d.id;
```

## Output

| name | dept_name |
|---|---|
| John | HR |
| Mike | IT |
| Sara | NULL |

---

# 3. RIGHT JOIN

Returns:
- all rows from right table
- matched rows from left table

## Syntax

```sql
SELECT *
FROM table1 t1
RIGHT JOIN table2 t2
    ON t1.id = t2.id;
```

---

# 4. FULL OUTER JOIN

Returns:
- all rows from both tables
- matched where possible
- NULL where no match exists

## Syntax

```sql
SELECT *
FROM table1 t1
FULL OUTER JOIN table2 t2
    ON t1.id = t2.id;
```

---

# 5. SELF JOIN

A table joins with itself.

Used for:
- manager-employee relation
- hierarchy
- comparing rows

## Example

```sql
SELECT
    a.name AS Employee,
    b.name AS Manager
FROM Employee a
JOIN Employee b
    ON a.managerId = b.id;
```

---

# 6. CROSS JOIN

Returns all possible combinations.

## Syntax

```sql
SELECT *
FROM table1
CROSS JOIN table2;
```

If table1 has 3 rows and table2 has 4 rows:

```text
3 × 4 = 12 rows
```

---

# JOIN Order Understanding

```sql
FROM Employee e
JOIN Department d
    ON e.dept_id = d.id
```

Think like:

```text
Take Employee table
→ find matching Department rows
→ combine them
```

---

# Most Important JOIN Patterns

## 1. Employee ↔ Manager

```sql
SELECT
    e.name,
    m.name AS manager
FROM Employee e
JOIN Employee m
    ON e.managerId = m.id;
```

---

## 2. Find Missing Data

Employees without departments:

```sql
SELECT
    e.name
FROM Employee e
LEFT JOIN Department d
    ON e.dept_id = d.id
WHERE d.id IS NULL;
```

Very common interview pattern.

---

# JOIN vs WHERE

## Wrong

```sql
FROM A, B
WHERE A.id = B.id
```

Old style and harder to read.

---

## Better

```sql
FROM A
JOIN B
    ON A.id = B.id
```

Modern and cleaner.

---

# JOIN Best Practices

## Use Aliases

Good:

```sql
Employee e
Department d
```

Bad:

```sql
EmployeeTable123
```

---

## Keep JOIN Condition in ON

```sql
JOIN Department d
    ON e.dept_id = d.id
```

Filtering conditions usually go in `WHERE`.

---

# Quick Summary Table

| JOIN Type | Returns |
|---|---|
| INNER JOIN | Matching rows only |
| LEFT JOIN | All left + matched right |
| RIGHT JOIN | All right + matched left |
| FULL OUTER JOIN | Everything from both |
| SELF JOIN | Table joins itself |
| CROSS JOIN | All combinations |

---

# Most Important for Interviews

Focus heavily on:
- INNER JOIN
- LEFT JOIN
- SELF JOIN
- JOIN + GROUP BY
- JOIN + WINDOW FUNCTION
- LEFT JOIN + IS NULL pattern

These appear constantly in:
- LeetCode SQL
- Data Analyst interviews
- Business Analyst interviews
- Data Engineering interviews