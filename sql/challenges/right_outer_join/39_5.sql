-- Write a query to display the id and name of all students who are enrolled in a valid course, along with the id and name of the course they are enrolled in. Also include the id and name of the courses where no student is enrolled.
-- Set the headers for id of student, name of student and name of course as studentId, studentName, courseId and courseName respectively.
-- There can be more than one way to get to the right answer in this exercise. However, we recommend using RIGHT JOIN to ensure you've understood it well.
SELECT
    students.id AS studentId,
    students.name AS studentName,
    courses.id AS courseId,
    courses.name AS courseName
FROM
    students
    RIGHT JOIN courses ON students.courseId = courses.id