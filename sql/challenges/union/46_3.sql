-- Write a query to display the following under a single column:
-- Names of all students enrolled in the Java course
-- Names of all the books that belong to the Java course
-- Names of all authors who have written at least one book that belongs to Java
-- The result should look something like this:
--
-- type	        javaData
-- Student      Joaquin
-- Book	        Basics of Java
-- Student      Heath
-- Author       Mat Reeves
-- Book         Advanced Java
SELECT
    'Student' AS type,
    students.name AS javaData
FROM
    students
    JOIN courses ON students.courseId = courses.id
WHERE
    courses.name = 'Java'
UNION
SELECT
    'Book' AS type,
    books.name AS javaData
FROM
    courses
    JOIN books ON books.courseId = courses.id
WHERE
    courses.name = 'Java'
UNION
SELECT
    'Author' AS type,
    authors.name AS javaData
FROM
    courses
    JOIN books
    JOIN authors ON books.courseId = courses.id
    AND books.authorId = authors.id
WHERE
    courses.name = 'Java'