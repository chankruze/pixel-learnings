-- In the exercise below, we have an authors table.
-- The column authorId in the books table is a reference to the id in authors table.
-- Write a query to display the name and price of all books that have a valid author, and the names of authors for each of them. Also, include authors that don't have a book authored by them. For such authors, leave the book name and price columns blank.
-- The headers for the name of books, price of books, and name of author should be bookName, price and authorName respectively.
-- There can be more than one way to get to the right answer in this exercise. However, we recommend using RIGHT JOIN to ensure you've understood it well.
SELECT
    books.name AS bookName,
    price,
    authors.name AS authorName
FROM
    books
    RIGHT JOIN authors ON books.authorId = authors.id