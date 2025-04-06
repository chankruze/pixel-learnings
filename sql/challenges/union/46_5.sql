-- Write a query to display name of all students and codeName of all authors, under a single column. Set the header for the single result column as name.
SELECT
    name
FROM
    students
UNION ALL
SELECT
    codeName AS name
FROM
    authors