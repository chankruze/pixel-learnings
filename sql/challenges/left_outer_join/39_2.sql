-- Write a query to display the id and name of all students, along with the name of the course they are enrolled in, if its a valid course.
-- Set the headers for id of student, name of student and name of course as studentId, studentName and courseName respectively.
SELECT
    students.id AS studentId,
    students.name AS studentName,
    courses.name AS courseName
FROM
    students
    LEFT JOIN courses ON students.courseId = courses.id