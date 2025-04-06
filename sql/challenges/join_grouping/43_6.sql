-- Write an SQL query to display the name of all unique courses, and count of books that belong to that course. The names of courses should be in alphabetical order.
-- Set the headers for name of courses, and count of books as course and books respectively.
-- Note: Skip courses that do not have any book that belongs to them.
SELECT
    courses.name AS course,
    COUNT(books.id) AS books
FROM
    courses
    JOIN books ON courses.id = books.courseID
GROUP BY
    courses.name