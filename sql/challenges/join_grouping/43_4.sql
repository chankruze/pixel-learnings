-- Let's say we want to get the count of students in each unique combination of a course and a grade. Write and SQL query to get this result. Set the headers of course name, grade name and number of students as course, grade and studentsCount respectively. Also sort the results in the alphabetical order of course names first, and descending order of grades second.
-- Note: Skip combinations which have 0 results. So if there is no student in grade 5 who is enrolled in Java, don't include this combination in the final results.
-- The results should look something like this:
-- course	    grade	studentsCount
-- Java	        4	    1
-- Java	        3	    2
-- JavaScript	3	    2
SELECT
    courses.name AS course,
    students.grade AS grade,
    COUNT(students.name) AS studentsCount
FROM
    students
    JOIN courses ON students.courseId = courses.id
GROUP BY
    courses.name,
    students.grade
ORDER BY
    courses.name,
    grade DESC