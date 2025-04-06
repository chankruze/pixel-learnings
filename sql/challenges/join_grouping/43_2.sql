-- Write a query to display the names of all authors and the number of books authored by them.
-- Set the headers for the name of authors and number of books written as author and books respectively.
SELECT
    authors.name AS author,
    COUNT(books.name) AS books
FROM
    authors
    LEFT JOIN books ON authors.id = books.authorID
GROUP BY
    authors.name