### INTERSECT

Let's say we want to display all the ids common to students and books.

In this case, we need to include data from two entirely different queries:

```sql
SELECT id FROM students
SELECT id FROM books
```

and get common ids from them together in a single column.

For such a use case, SQL provides a clause similar to `UNION`, called `INTERSECT`, which helps display common data of different types together, from results of two or more queries.

```sql
SELECT id
FROM books
INTERSECT
SELECT id
FROM students
```

### EXCEPT

Let's say we want to display all the ids belonging to books, which are not ids of any of the students.

In this case, we need to get data from two entirely different queries:

```sql
SELECT id FROM students
SELECT id FROM books
```

and get results from the second query which do not result from the first query

For such use case, SQL provides a clause called `EXCEPT`, which helps display difference between the results of two queries.

```sql
SELECT id
FROM books
EXCEPT
SELECT id
FROM students
```
