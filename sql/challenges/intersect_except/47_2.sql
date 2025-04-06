-- Write a query to display names which are common in the names of all students and codeNames of all authors, under a single column. Set the header for the single result column as commonNames.
SELECT
    name AS commonNames
FROM
    students
INTERSECT
SELECT
    codeName AS commonNames
FROM
    authors