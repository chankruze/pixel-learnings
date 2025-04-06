## UNION

### UNION

Let's say we want to display the names of students as well as authors, in a single column called "People".

In this case, we need to include data from two entirely different queries and present them in a single column:

SELECT name FROM students

SELECT name FROM authors

For such cases, SQL provides a combination clause called UNION.

```sql
SELECT name AS people
FROM students
UNION
SELECT name AS people
FROM authors

-- Notice that the result contain 35 rows of names. There are 25 rows of students and 10 rows of authors.
```

> Note: Another key thing to notice about UNION is, the number of columns from each query should be equal.

```sql
SELECT name, id FROM students
UNION
SELECT name FROM authors

-- error
```

> Note: If there are matching records from multiple queries in a UNION, only one of them will be included in the final results. That's another way of saying that the results of a UNION are always unique.

Then how do we solve our problem?

### UNION ALL

```sql
SELECT id
FROM students
UNION ALL
SELECT id
FROM books
```
