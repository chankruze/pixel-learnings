-- Write a query to display all the book names and all the course names, under a single column. Set the header for the single result column as academicData.
SELECT
    name AS academicData
FROM
    books
UNION
SELECT
    name AS academicData
FROM
    courses