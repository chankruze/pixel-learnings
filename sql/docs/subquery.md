## Subqueries

A SQL subquery is a query nested within another SQL query, used to perform operations that require multiple steps or complex logic. The role of subqueries in SQL include the following: Filtering records based on data from related tables. Aggregating data and performing calculations dynamically.

```sql
SELECT  name, marks
FROM    students
WHERE   marks > (
                  SELECT marks
                  FROM students
                  WHERE name = 'Cisco'
                )
```
