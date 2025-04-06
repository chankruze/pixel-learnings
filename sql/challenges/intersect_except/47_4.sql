-- Write a query to display names which are codeNames for authors, but not names of any of the students. Set the header for the result column as uniqueCodeNames.
SELECT
    codeName AS uniqueCodeNames
FROM
    authors
EXCEPT
SELECT
    name
FROM
    students