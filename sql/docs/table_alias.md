```sql
SELECT  students.id AS studentId,
        students.name AS studentName,
        courses.id AS courseId,
        courses.name AS courseName
FROM    students JOIN courses
ON      students.courseId = courses.id
```

The repetition of the table names in `SELECT` list and `ON` clause can be reduced by aliasing the table names themselves, and then using the aliases to point out the columns themselves.

```sql
SELECT  s.id AS studentId,
        s.name AS studentName,
        c.id AS courseId,
        c.name AS courseName
FROM    students s JOIN courses c
ON      s.courseId = c.id
```
