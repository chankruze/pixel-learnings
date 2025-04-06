-- Write a query to display the names of all courses followed by these 4 data items:
-- maximum marks scored by students in the course
-- minimum marks scored by students in the course
-- sum of all marks scored by students in the course
-- average of marks scored by students in the course
-- Set the headers for the 5 columns as courseName, maximumMarks, minimumMarks, sumOfMarks and averageMarks respectively.
SELECT
    courses.name AS courseName,
    MAX(students.marks) AS maximumMarks,
    MIN(students.marks) AS minimumMarks,
    SUM(students.marks) AS sumOfMarks,
    AVG(students.marks) AS averageMarks
FROM
    courses
    LEFT JOIN students ON courses.id = students.courseId
GROUP BY
    courses.name