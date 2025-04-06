### JOINS - INNER JOIN

In `INNER JOIN` only those rows are included which strictly match the criteria.

```sql
SELECT students.name, courses.name FROM students JOIN courses ON
    students.courseId = courses.id

-- shows 22 records (25 students, 2 students do not have a courseId data and 1 student has invalid courseId that don't match any records in courses table)
```

The criteria for this query is that the courseId of the student should match with the Id in the courses table.

We can replace normal `JOIN` in the above query with `INNER JOIN`, and Note that the results still remain the same.

```sql
SELECT students.name, courses.name FROM students INNER JOIN courses ON
    students.courseId = courses.id
```

### JOINS - OUTER JOIN

An `OUTER JOIN` is a `JOIN` that also returns records that are unmatched from the criteria in ON clause, along with the ones that match.

#### LEFT OUTER JOIN

A `LEFT OUTER JOIN` or a `LEFT JOIN` returns records from the table at **left** in the JOIN, that are unmatched from the connecting query in ON, along with the matched records.

```sql
SELECT students.name AS studentName,
       courses.name AS courseName
FROM   students LEFT JOIN courses
ON     students.courseId = courses.id

-- shows 25 records (25 students)
```

#### RIGHT OUTER JOIN

A `RIGHT OUTER JOIN` or a `RIGHT JOIN` returns records from the table at the **right** in the `JOIN`, that are unmatched from the connecting query in `ON`, along with the matched records.

```sql
SELECT students.name AS studentName,
       courses.name AS courseName
FROM   students RIGHT JOIN courses
ON     students.courseId = courses.id

-- For the courses that don't have a student enrolled in, the student name is returned as blank.
```

#### FULL OUTER JOIN

A `FULL OUTER JOIN` returns all the records from tables at **both** sides of the `JOIN`, that are unmatched from the connecting query in `ON`, along with the matched records.

```sql
SELECT students.name AS studentName,
       courses.name AS courseName
FROM   students FULL OUTER JOIN courses
ON     students.courseId = courses.id

-- Note that all the records from the courses table and all the records from the students table appear in the results.
```

### JOINS - SELF JOIN

The table students contains a column `studentMentorId`. It stores the id of another student who is a mentor of the student in a particular row.

Let's say we want to display the name of all students who have a mentor, along with the name of their mentors. Let's name the headers studentName and mentorName respectively.

In this case, the data for both our result columns, belongs to one and the same column in students, i.e. name. So, we need join the table students with itself. This kind of a `JOIN` is called a `SELF JOIN`.

We cannot mention the same combination of table name + column name in the `SELECT` list more than once, so we will use table aliases to achieve that. Here is how we need to do it.

```sql
SELECT s1.name AS studentName,
       s2.name AS mentorName
FROM   students s1 JOIN students s2
ON     s1.studentMentorId = s2.id
```

### JOINS - Filtering and Ordering

#### JOINs with filters

Let's say we want to display names and marks of students who are enrolled in either JavaScript course or Python course and have marks between 15 and 85, along with the name of the course.

In this case, we can add filter to the JOIN result of students and courses with a WHERE clause.

```sql
SELECT  students.name AS studentName,
        courses.name AS courseName,
        marks
FROM    students JOIN courses
ON      students.courseId = courses.id
WHERE   courses.name IN ('JavaScript', 'Python') AND
        marks BETWEEN 15 AND 85
```

#### JOINs with ordering

Let's say we want to display names and marks of students along with the name of the courses they are enrolled in, in the alphabetical order of the course names first, and then in the increasing order of marks scored by them.

In this case, we can add ordering to the JOIN result of students and courses with an `ORDER BY` clause.

```sql
SELECT   students.name AS studentName,
         courses.name AS courseName,
         marks
FROM     students JOIN courses
ON       students.courseId = courses.id
ORDER BY courses.name, marks
```

### JOINS - Grouping

Let's say we want to display the names of all unique courses and the total number of students enrolled in each course.

In this case, we can use COUNT over GROUP BY clause for the number of students, over the JOIN of tables students and courses.

```sql
SELECT   courses.name AS course,
         COUNT(students.name) AS numberOfStudents
FROM     students JOIN courses
ON       students.courseId = courses.id
GROUP BY courses.name
```

### JOINS - Cartesian Product

Let's say we want to select a panel of 2 authors, author1 and author2, out of all available authors. In that case, a query to get all combinations of names of author1 and author2, will look something like the query below.

```sql
SELECT  a1.name AS author1,
        a2.name AS author2
FROM    authors a1 JOIN authors a2
```

Notice that we are applying a cartesian product on the table authors with itself. So, this essentially is a cartesian product over a SELF JOIN, which works the same way as it works in a standard JOIN.

However, Note that the results are not exactly what we want. There are cases where both author1 and author2 are the same. This is bound to be in a SELF JOIN, because there is no check restricting the same. A filter in addition to the existing query can solve this problem.

```sql
SELECT  a1.name AS author1,
        a2.name AS author2
FROM    authors a1 JOIN authors a2
WHERE   a1.id <> a2.id
```
