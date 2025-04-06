-- Write a query to display the names of all students who are enrolled in a valid course that has at least one book that belongs to it, and the year of publishing of the oldest book that belongs to the course the student is enrolled in, for each student.
-- Set the headers for the name of student and the oldest year of publishing as student and oldestPublishingYear respectively.
-- At the end, make sure that the results are sorted in
-- the ascending order of oldestPublishingYear, and
-- the alphabetical order of students' name.
SELECT
    s.name AS student,
    MIN(b.publishedIn) AS oldestPublishingYear
FROM
    students s
    JOIN courses c1 ON s.courseId = c1.id
    JOIN courses c2 ON c1.id = c2.id
    JOIN books b ON c2.id = b.courseID
GROUP BY
    s.name
ORDER BY
    oldestPublishingYear ASC,
    student ASC;